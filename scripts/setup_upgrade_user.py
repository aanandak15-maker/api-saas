import os
import requests
import uuid
from dotenv import load_dotenv
from supabase import create_client

load_dotenv("backend/.env")
API_URL = "http://localhost:8000"
SUPABASE_URL = os.environ.get("SUPABASE_URL")
SUPABASE_KEY = os.environ.get("SUPABASE_SERVICE_KEY")

supabase = create_client(SUPABASE_URL, SUPABASE_KEY)

def setup():
    unique_email = f"upgrade_ui_{uuid.uuid4().hex[:6]}@example.com"
    password = "password123"
    print(f"📧 Creating User: {unique_email}")

    # 1. Create Auth User
    try:
        user_attributes = {"email": unique_email, "password": password, "email_confirm": True}
        user = supabase.auth.admin.create_user(user_attributes)
        print(f"✅ Auth User Created")
    except Exception as e:
        print(f"❌ Failed to create auth user: {e}")
        return

    # 2. Signup Client (Trial)
    res = requests.post(f"{API_URL}/signup", json={
        "company_name": "Upgrade UI Tester",
        "business_type": "Test",
        "email": unique_email,
        "phone": "5555555555",
        "plan_type": "trial" 
    })
    
    if res.status_code != 201:
        print(f"❌ Signup failed: {res.text}")
        return

    print("✅ Client Created (Trial).")
    print(f"USER_EMAIL={unique_email}")
    print(f"USER_PASSWORD={password}")

if __name__ == "__main__":
    setup()
