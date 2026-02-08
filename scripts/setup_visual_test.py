import os
import asyncio
from dotenv import load_dotenv
from supabase import create_client
import uuid
import time
import requests

load_dotenv("backend/.env")

SUPABASE_URL = os.environ.get("SUPABASE_URL")
SUPABASE_KEY = os.environ.get("SUPABASE_SERVICE_KEY")
API_URL = "http://localhost:8000"

supabase = create_client(SUPABASE_URL, SUPABASE_KEY)

EMAIL = "test_visual@example.com"
PASSWORD = "password123"

def cleanup():
    print(f"🧹 Cleaning up {EMAIL}...")
    try:
        # Delete from Auth
        # Need user ID first
        # We can list users or just try to sign in to get ID
        res = requests.post(f"{API_URL}/login", json={"email": EMAIL, "api_secret": "..."}) 
        # API Login uses secret, not password.
        # But we need to clean up Supabase Auth user.
        # We'll rely on the fact that if we create a user with same email, it might fail or we update it.
        # Actually, let's just make a unique email each time
        pass
    except:
        pass

def setup():
    unique_email = f"test_{uuid.uuid4().hex[:6]}@example.com"
    print(f"📧 Creating User: {unique_email}")

    # 1. Create Supabase Auth User
    try:
        user_attributes = {"email": unique_email, "password": PASSWORD, "email_confirm": True}
        user = supabase.auth.admin.create_user(user_attributes)
        print(f"✅ Auth User Created: {user.user.id}")
    except Exception as e:
        print(f"❌ Failed to create auth user: {e}")
        return

    # 2. Create Client Record (linked to email)
    # We use backend API to ensure API keys are generated
    # But backend signup checks for existing client by email.
    
    print("🚀 Creating Client Record via API...")
    res = requests.post(f"{API_URL}/signup", json={
        "company_name": "Visual Tester",
        "business_type": "Test",
        "email": unique_email, # Must match auth email for profile fetching to work via Bearer
        "phone": "5555555555",
        "plan_type": "germination"
    })
    
    if res.status_code != 201:
        print(f"❌ Client creation failed: {res.text}")
        return

    client_data = res.json()
    api_key = client_data["api_key"]
    print(f"✅ Client Created. API Key: {api_key}")

    # 3. Add 1 Product to reach limit
    print("📦 Adding 1 Product to reach limit...")
    headers = {"X-API-Key": api_key}
    p1 = {
        "product_name": "Existing Product",
        "product_brand": "Brand X",
        "active_ingredient": "Chem X",
        "category": "Fungicide",
        "product_url": "http://example.com",
        "image_url": "http://example.com/img.jpg"
    }
    res = requests.post(f"{API_URL}/products", json=p1, headers=headers)
    if res.status_code == 201:
        print("✅ Product Added. Limit (1/1) Reached.")
    else:
        print(f"❌ Failed to add product: {res.text}")

    print("\n--- CREDENTIALS ---")
    print(f"Email: {unique_email}")
    print(f"Password: {PASSWORD}")
    print("-------------------")

    # Save to file for browser agent
    with open("visual_test_creds.json", "w") as f:
        import json
        json.dump({"email": unique_email, "password": PASSWORD}, f)

if __name__ == "__main__":
    setup()
