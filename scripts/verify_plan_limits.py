import os
import requests
import uuid
import time
from dotenv import load_dotenv
from supabase import create_client

load_dotenv("backend/.env")

SUPABASE_URL = os.environ.get("SUPABASE_URL")
SUPABASE_KEY = os.environ.get("SUPABASE_SERVICE_KEY")
API_URL = "http://localhost:8000"

# Initialize Supabase client for cleanup
try:
    supabase = create_client(SUPABASE_URL, SUPABASE_KEY)
except Exception as e:
    print(f"Warning: Could not init Supabase client: {e}")
    supabase = None

def cleanup(email):
    if not supabase: return
    print(f"🧹 Cleaning up {email}...")
    try:
        supabase.table("clients").delete().eq("email", email).execute()
    except Exception as e:
        print(f"Cleanup failed: {e}")

def verify_limits():
    EMAIL = f"limit_test_{uuid.uuid4().hex[:6]}@example.com"
    API_KEY = None
    
    try:
        cleanup(EMAIL)
        
        # 1. Signup
        print("\n1️⃣ Signing up with Germination Plan (Max 1 Product)...")
        res = requests.post(f"{API_URL}/signup", json={
            "company_name": "Limit Tester",
            "business_type": "AgriTech",
            "email": EMAIL,
            "phone": "1234567890",
            "plan_type": "germination" 
        })
        
        if res.status_code != 201:
            print(f"❌ Signup failed: {res.status_code} {res.text}")
            return

        data = res.json()
        API_KEY = data.get("api_key")
        
        if not API_KEY:
            print(f"❌ No API Key returned: {data}")
            return
            
        print(f"✅ Signed up. API Key: {API_KEY[:5]}...")

        time.sleep(1) # Wait for db propagation if needed

        # 2. Add Product 1 (Allowed)
        print("\n2️⃣ Adding Product 1 (Should Succeed)...")
        headers = {"X-API-Key": API_KEY}
        p1 = {
            "product_name": "Product A",
            "product_brand": "Brand A",
            "active_ingredient": "Chem A",
            "category": "Fungicide",
            "product_url": "http://example.com",
            "image_url": "http://example.com/img.jpg"
        }
        res = requests.post(f"{API_URL}/products", json=p1, headers=headers)
        
        if res.status_code == 201:
            print("✅ Product 1 added successfully.")
        else:
            print(f"❌ Product 1 failed: {res.status_code} {res.text}")
            return

        # 3. Add Product 2 (Should Fail)
        print("\n3️⃣ Adding Product 2 (Should Fail - Limit Reached)...")
        p2 = p1.copy()
        p2["product_name"] = "Product B"
        res = requests.post(f"{API_URL}/products", json=p2, headers=headers)
        
        if res.status_code == 403:
            print("✅ Product 2 blocked as expected (403 Forbidden).")
            print(f"   Error: {res.json().get('error')}")
        else:
            print(f"❌ Product 2 NOT blocked! (Status: {res.status_code})")
            print(f"   Response: {res.text}")
            return

        # 4. Check Profile Limits
        print("\n4️⃣ Checking Profile Limits...")
        res = requests.get(f"{API_URL}/client/profile", headers=headers)
        if res.status_code == 200:
            profile = res.json()
            mp = profile.get('max_products')
            cp = profile.get('current_products')
            
            print(f"   Max Products: {mp}")
            print(f"   Current Products: {cp}")
            
            if mp == 1 and cp == 1:
                print("✅ Profile limits verify correctly (Max: 1, Current: 1).")
            else:
                print(f"❌ Profile limits incorrect: Max={mp}, Current={cp}")
        else:
            print(f"❌ Failed to fetch profile: {res.status_code}")

    except Exception as e:
        print(f"❌ System Error: {e}")
    finally:
        cleanup(EMAIL)

if __name__ == "__main__":
    verify_limits()
