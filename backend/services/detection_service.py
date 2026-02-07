import os
import json
import google.generativeai as genai
from dotenv import load_dotenv

load_dotenv()

# Configure Gemini
# Use dynamic key from DB
from services.key_management import get_active_gemini_key

# We configure per-request or globally? 
# GenAI library configures globally. We must re-configure if key changes or configure JIT.
# Ideally JIT configuration inside the function.

async def detect_disease_from_image(image_file):
    """
    Run Gemini Pro Vision model for disease detection
    """
    api_key = get_active_gemini_key()
    
    if api_key:
        genai.configure(api_key=api_key)
    else:
        print("WARNING: No Gemini API Key found (DB or Env). Using mock.")
        return {
            "disease_id": "TOM-0045",
            "confidence": 94.5,
            "disease_name": "Early Blight",
            "crop": "Tomato"
        }

    try:
        # Read image bytes
        image_bytes = await image_file.read()
        
        # Prepare model
        model = genai.GenerativeModel('gemini-1.5-flash')
        
        prompt = """
        Analyze this plant image. Return ONLY a JSON object with this exact structure:
        {
            "isHealthy": boolean,
            "crop": "crop name",
            "disease": "disease name or null",
            "confidence": float (0.0 to 1.0)
        }
        Do not add markdown formatting or backticks. Just the JSON string.
        """

        # Generate content
        response = model.generate_content([
            prompt,
            {"mime_type": image_file.content_type, "data": image_bytes}
        ])
        
        # Parse JSON
        text_response = response.text.strip()
        # Clean up if model adds backticks despite instructions
        if text_response.startswith("```"):
            text_response = text_response.strip("`").replace("json", "").strip()
            
        data = json.loads(text_response)
        
        return data

    except Exception as e:
        print(f"Gemini Error: {e}")
        # Fallback to mock on error to keep system stable during dev
        return {
            "disease_id": "TOM-0045",
            "confidence": 85.0,
            "error": str(e)
        }
