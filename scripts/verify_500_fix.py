
import requests

API_URL = "http://localhost:8001"
API_KEY = "5STKwI3BYhmhIMBHDRY0QhBdqoWnx7X6"  # Dashboard User Key

def test_invalid_image():
    print("\n--- TEST: Invalid Image Upload ---")
    data = {"crop_type": "Tomato"}
    
    # Upload a text file disguised as an image
    files = {
        "image": ("bad.jpg", b"This is not an image", "image/jpeg")
    }
    
    headers = {"X-API-Key": API_KEY}
    
    try:
        res = requests.post(f"{API_URL}/detect", data=data, files=files, headers=headers)
        print(f"Status: {res.status_code}")
        print(f"Response: {res.text}")
        
        if res.status_code == 400 and "Invalid image" in res.text:
            print("✅ SUCCESS: Invalid image caught gracefully.")
        else:
            print("❌ FAILURE: Expected 400 with 'Invalid image', got something else.")
            
    except Exception as e:
        print(f"❌ CONNECTION ERROR: {e}")

if __name__ == "__main__":
    test_invalid_image()
