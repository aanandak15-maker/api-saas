import os
import requests
import uuid
from dotenv import load_dotenv

load_dotenv("backend/.env")
API_URL = "http://localhost:8000"

def verify_upgrade():
    unique_email = f"upgrade_test_{uuid.uuid4().hex[:6]}@example.com"
    print(f"📧 Creating User: {unique_email}")

    # 1. Signup (Default Plan: Trial)
    res = requests.post(f"{API_URL}/signup", json={
        "company_name": "Upgrade Tester",
        "business_type": "Test",
        "email": unique_email,
        "phone": "5555555555",
        "plan_type": "trial" 
    })
    
    if res.status_code != 201:
        print(f"❌ Signup failed: {res.text}")
        return

    data = res.json()
    api_key = data["api_key"]
    headers = {"X-API-Key": api_key}
    print("✅ Signup Success. Plan: Trial")

    # 2. Check Plan Limits (Trial = 1 Product)
    res = requests.get(f"{API_URL}/client/profile", headers=headers)
    profile = res.json()
    print(f"🧐 Initial Plan: {profile.get('plan_type')} | Max Products: {profile.get('max_products')}")
    if profile.get("max_products") != 1:
        print("❌ Initial limit incorrect (Expected 1)")
        return

    # 3. Upgrade to Cultivation
    print("🚀 Upgrading to Cultivation...")
    res = requests.post(f"{API_URL}/client/change-plan", json={"new_plan": "cultivation"}, headers=headers)
    if res.status_code != 200:
        print(f"❌ Upgrade failed: {res.text}")
        return
    print(f"✅ Upgrade Response: {res.json()['message']}")

    # 4. Verify New Limits (Cultivation = 5 Products)
    res = requests.get(f"{API_URL}/client/profile", headers=headers)
    profile = res.json()
    print(f"🧐 New Plan: {profile.get('plan_type')} | Max Products: {profile.get('max_products')}")
    
    if profile.get("plan_type") == "cultivation" and profile.get("max_products") == 5:
        print("✅ SUCCESS: Plan upgraded and limits updated properly!")
    else:
        print("❌ FAILED: Profile did not update cleanly.")

if __name__ == "__main__":
    verify_upgrade()
