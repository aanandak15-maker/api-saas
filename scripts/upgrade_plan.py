import os
import asyncio
from dotenv import load_dotenv

# Load env relative to script location or CWD
try:
    load_dotenv("backend/.env") 
except:
    pass
load_dotenv(".env") 

from supabase import create_client

url = os.environ.get("SUPABASE_URL")
key = os.environ.get("SUPABASE_SERVICE_KEY")

if not url or not key:
    print("Error: Missing Supabase credentials")
    exit(1)

supabase = create_client(url, key)

async def upgrade_client(api_key):
    print(f"--- Upgrading Client for Key: {api_key} ---\n")
    
    # 1. Get Client
    res = supabase.table("clients").select("*").eq("api_key", api_key).execute()
    
    if not res.data:
        print("❌ Client not found!")
        return
        
    client_id = res.data[0]["id"]
    current_plan = res.data[0]["plan_type"]
    
    print(f"Current Plan: {current_plan}")
    
    # 2. Update to Enterprise
    supabase.table("clients").update({"plan_type": "enterprise"}).eq("id", client_id).execute()
    
    print("✅ Upgraded to 'enterprise' (Unlimited)")

if __name__ == "__main__":
    target_key = "5STKwI3BYhmhIMBHDRY0QhBdqoWnx7X6"
    asyncio.run(upgrade_client(target_key))
