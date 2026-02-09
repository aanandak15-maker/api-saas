"""
Enhanced Detection Service
- Retry logic with exponential backoff
- Disease name normalization
- Severity level support
- Debug logging for failed parses
- Temperature=0 for deterministic output
"""
import os
import json
import asyncio
import google.generativeai as genai
from dotenv import load_dotenv
from datetime import datetime

load_dotenv()

from services.key_management import get_active_gemini_key

# --- CONFIGURATION ---
MAX_RETRIES = 3
BASE_DELAY = 1.5  # seconds, exponential backoff base


from typing import Optional

def normalize_disease_name(name: str) -> Optional[str]:
    """
    Normalize disease name for better DB matching.
    Removes crop prefixes and standardizes casing.
    """
    if not name:
        return None
    
    # Common crop prefixes to remove
    prefixes = ["Tomato ", "Potato ", "Rice ", "Corn ", "Wheat ", "Apple ", "Grape "]
    for prefix in prefixes:
        if name.lower().startswith(prefix.lower()):
            name = name[len(prefix):]
            break
    
    # Clean up and title case
    return name.strip().title()


DEBUG_LOGGING = os.getenv("DEBUG_AI_LOGGING", "false").lower() == "true"

def log_ai_debug(raw_response: str, error: str = None):
    """
    Log failed AI responses for debugging.
    Writes to a rotating debug file.
    """
    if not DEBUG_LOGGING:
        return

    try:
        log_path = "/tmp/gemini_debug.log"
        timestamp = datetime.now().isoformat()
        with open(log_path, "a") as f:
            f.write(f"\n=== {timestamp} ===\n")
            if error:
                f.write(f"ERROR: {error}\n")
            f.write(f"RAW RESPONSE:\n{raw_response[:1000]}\n")  # Truncate to 1KB
    except Exception:
        pass  # Silent fail for logging


async def call_gemini_with_retry(model, prompt: str, image_data: dict, max_retries: int = MAX_RETRIES):
    """
    Call Gemini API with retry logic and exponential backoff.
    """
    last_error = None
    
    for attempt in range(max_retries):
        try:
            response = await model.generate_content_async([prompt, image_data])
            return response
        except Exception as e:
            last_error = e
            if attempt < max_retries - 1:
                delay = BASE_DELAY ** (attempt + 1)
                print(f"Gemini attempt {attempt + 1} failed: {e}. Retrying in {delay:.1f}s...")
                await asyncio.sleep(delay)
            else:
                print(f"Gemini failed after {max_retries} attempts: {e}")
    
    raise last_error


async def detect_disease_from_image(image_file, expected_crop: Optional[str] = None):
    """
    Run Gemini Vision model for disease detection.
    Enhanced with retry logic, normalization, and debug logging.
    """
    api_key = get_active_gemini_key()
    
    if not api_key:
        print("WARNING: No Gemini API Key found (DB or Env). Using mock.")
        return {
            "disease_id": "TOM-0680",
            "confidence": 0.945,
            "disease": "Early Blight",
            "crop": "Tomato",
            "isHealthy": False,
            "severity": "moderate",
            "_mock": True
        }

    genai.configure(api_key=api_key)

    try:
        # Read image bytes
        image_bytes = await image_file.read()
        
        print(f"DEBUG: Image Filename: {getattr(image_file, 'filename', 'unknown')}")
        print(f"DEBUG: Content Type: {image_file.content_type}")
        print(f"DEBUG: Size: {len(image_bytes)} bytes")
        print(f"DEBUG: API Key: {api_key[:5]}...{api_key[-5:] if api_key else 'None'}")

        
        # Prepare model with temperature=0 for deterministic output
        model = genai.GenerativeModel(
            'gemini-flash-lite-latest',
            generation_config=genai.GenerationConfig(temperature=0.0)
        )
        
        prompt = f"""
You are an agricultural plant disease vision classifier.

Context: 
Expected Crop: {expected_crop if expected_crop else "Unknown (Detect it)"}

Task:
1. IDENTIFY the crop in the image.
2. If 'Expected Crop' is provided:
   - VERIFY if the image plausibly matches the expected crop.
   - If the image is CLEARLY a different crop (e.g., Expected 'Tomato', but image is 'Rice'), reject the expected crop. Set "crop" to the *actual* detected crop and "disease" to null.
   - If the image is the expected crop (or ambiguous), proceed to detect diseases for that crop.
3. If 'Expected Crop' is NOT provided:
   - Detect the crop and then the disease.

JSON schema (STRICT — no extra keys allowed):

{{
  "isHealthy": boolean,
  "crop": string | null,
  "disease": string | null,
  "confidence": float,
  "severity": string | null
}}

Rules:
- If plant appears healthy → "isHealthy": true, "disease": null, "severity": null
- If plant is diseased → "isHealthy": false and provide best disease guess
- severity MUST be one of: "mild", "moderate", "severe", or null (if uncertain)
- If uncertain → set "disease": null and confidence <= 0.5
- Confidence MUST be between 0.0 and 1.0
- Crop name must be a single word if possible (e.g., "Tomato", not "Tomato Plant")
- If crop cannot be determined → crop = null
- If image is not a plant → return all null except confidence <= 0.3
- Never output "unknown disease" as a string — use null instead
- Never add extra keys
- Never exceed confidence 1.0

Return ONLY the JSON object.
"""

        # Prepare image data
        image_data = {"mime_type": image_file.content_type, "data": image_bytes}
        
        # Call Gemini with retry
        response = await call_gemini_with_retry(model, prompt, image_data)
        
        # Parse JSON
        text_response = response.text.strip()
        
        # Clean up if model adds backticks despite instructions
        if text_response.startswith("```"):
            text_response = text_response.strip("`").replace("json", "").strip()
        
        try:
            data = json.loads(text_response)
        except json.JSONDecodeError as parse_error:
            log_ai_debug(text_response, str(parse_error))
            raise ValueError(f"Invalid JSON from AI: {parse_error}")
        
        # Normalize disease name for better DB matching
        if data.get("disease"):
            data["disease"] = normalize_disease_name(data["disease"])
        
        # Validate severity
        valid_severities = ["mild", "moderate", "severe", None]
        if data.get("severity") not in valid_severities:
            data["severity"] = None
        
        # Ensure confidence is float between 0 and 1
        if isinstance(data.get("confidence"), (int, float)):
            data["confidence"] = max(0.0, min(1.0, float(data["confidence"])))
        else:
            data["confidence"] = 0.5
        
        return data

    except Exception as e:
        print(f"Gemini Error: {e}")
        log_ai_debug("", str(e))
        
        # FAIL FAST: Do not return mock data in production.
        # This allows the caller (route) to handle the 503 or 500 appropriately.
        if "400" in str(e) or "Unable to process" in str(e):
             raise ValueError("AI Analysis Failed: The image could not be processed. Please try a clearer photo.")
             
        raise e
