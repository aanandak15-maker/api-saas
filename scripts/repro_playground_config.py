
import requests
import os
from dotenv import load_dotenv

# Load env
try:
    load_dotenv("backend/.env")
except:
    pass
load_dotenv(".env")
load_dotenv("../backend/.env")

from supabase import create_client

url = os.environ.get("SUPABASE_URL")
key = os.environ.get("SUPABASE_SERVICE_KEY")
supabase = create_client(url, key)

def get_real_user_key():
    # Find a user that is NOT the demo user (if possible)
    # Or just use the one we know exists from verify_layers
    # 868dc60b-81b7-4cd9-aa2f-d6508ab6fe1c
    client_id = "868dc60b-81b7-4cd9-aa2f-d6508ab6fe1c"
    res = supabase.table("clients").select("api_key").eq("id", client_id).execute()
    if res.data:
        return res.data[0]["api_key"]
    return None

def test_api():
    api_key = get_real_user_key()
    if not api_key:
        print("❌ Could not find test user API Key")
        return

    print(f"🔑 Testing with API Key: {api_key}")
    
    # 1. Update Config to force a distinct change
    # e.g. layer_branding = True, branding_custom_text = "DEBUG_TEST_123"
    client_id = "868dc60b-81b7-4cd9-aa2f-d6508ab6fe1c"
    supabase.table("client_response_config").update({
        "layer_branding": True,
        "branding_custom_text": "DEBUG_TEST_123",
         "branding_primary_color": "#FF0000"
    }).eq("client_id", client_id).execute()
    print("✅ Config updated in DB: branding=True, text=DEBUG_TEST_123")

    # 2. Call API
    url = "http://localhost:8001/detect"
    
    # We need a dummy image
    # create a small dummy image
    # Create valid dummy image using PIL if available, or minimal JPEG bytes
    try:
        from PIL import Image
        img = Image.new('RGB', (100, 100), color = 'red')
        img.save('dummy.jpg')
    except ImportError:
        # Fallback to minimal JPEG header
        # FF D8 FF E0 ...
        with open("dummy.jpg", "wb") as f:
            f.write(b'\xff\xd8\xff\xe0\x00\x10JFIF\x00\x01\x01\x01\x00H\x00H\x00\x00\xff\xdb\x00C\x00\x08\x06\x06\x07\x06\x05\x08\x07\x07\x07\t\t\x08\n\x0c\x14\r\x0c\x0b\x0b\x0c\x19\x12\x13\x0f\x14\x1d\x1a\x1f\x1e\x1d\x1a\x1c\x1c $.\' ",#\x1c\x1c(7),01444\x1f\'9=82<.342\xff\xc0\x00\x0b\x08\x00\x01\x00\x01\x03\x01\x22\x00\x02\x11\x01\x03\x11\x01\xff\xc4\x00\x15\x00\x01\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x08\xff\xda\x00\x08\x01\x01\x00\x00\x3f\x00\xbf\xc0\x7f\xff\xd9')

    files = {'image': ('dummy.jpg', open('dummy.jpg', 'rb'), 'image/jpeg')}
    data = {'crop_type': 'Tomato'}
    headers = {'x-api-key': api_key}
    
    print("🚀 Sending Request...")
    try:
        res = requests.post(url, files=files, data=data, headers=headers)
        
        print(f"Status: {res.status_code}")
        if res.status_code == 200:
            json_data = res.json()
            # Check for branding
            result = json_data.get("result", {}) # structure might differ, checking headers
            # The structure from detect_disease is: {success: True, image_url: ..., result: {...} } OR direct detection format?
            # Let's check response text
            
            print("Response Snippet:", str(json_data)[:200])
             
            # Looking for branding in the response
            # Note: /detect endpoint returns GenericResponse which wraps the result
            # But wait, standard /detect returns CorsResponse(response_data)
            # ResponseBuilder output is merged into response_data
            
            branding = json_data.get("branding")
            if not branding:
                # maybe it's inside 'result'?
                branding = json_data.get("result", {}).get("branding")
            
            if branding and branding.get("custom_text") == "DEBUG_TEST_123":
                print("✅ TEST PASSED: Branding found in API response")
            else:
                print("❌ TEST FAILED: Branding NOT found or incorrect")
                print(f"   Actual Branding: {branding}")
        else:
            print(f"❌ API Error: {res.text}")
            
    except Exception as e:
        print(f"❌ Request Failed: {e}")
    finally:
        if os.path.exists("dummy.jpg"):
            os.remove("dummy.jpg")

if __name__ == "__main__":
    test_api()
