
import os
import asyncio
import google.generativeai as genai
from dotenv import load_dotenv

load_dotenv("backend/.env")

API_KEY = os.getenv("GEMINI_API_KEY")

if not API_KEY:
    print("❌ Error: GEMINI_API_KEY not found in backend/.env")
    exit(1)

genai.configure(api_key=API_KEY)

async def test_gemini():
    print(f"Testing Gemini API with Key: {API_KEY[:5]}...{API_KEY[-5:]}")
    
    try:
        print("\n--- Available Models ---")
        for m in genai.list_models():
            if 'generateContent' in m.supported_generation_methods:
                print(m.name)
        print("----------------------\n")

        # Try fallback model
        model_name = 'gemini-flash-lite-latest'
        # Check if exists
        # ... logic ...
        
        model = genai.GenerativeModel(model_name)

        
        # Simple text test first
        print("\n1. Running Text Generation Test...")
        response = await model.generate_content_async("Explain photosynthesis in 1 sentence.")
        print(f"✅ Text Response: {response.text}")
        
        # Vision test
        print("\n2. Running Vision Test (Simulated Image)...")
        # We need a real image file.
        img_path = "public/test_leaf.png"
        if not os.path.exists(img_path):
             print(f"❌ Image not found at {img_path}")
             return

        with open(img_path, "rb") as f:
            img_data = f.read()
            
        prompt = "Describe this image in 5 words."
        
        response = await model.generate_content_async([prompt, {"mime_type": "image/png", "data": img_data}])
        print(f"✅ Vision Response: {response.text}")
        
    except Exception as e:
        print(f"\n❌ Gemini Test FAILED: {e}")

if __name__ == "__main__":
    asyncio.run(test_gemini())
