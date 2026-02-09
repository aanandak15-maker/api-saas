import os
import asyncio
from dotenv import load_dotenv
from datetime import datetime, timezone

# Load env relative to script location or CWD
try:
    load_dotenv("backend/.env") # Try root relative
except:
    pass
load_dotenv(".env") # Try CWD


from supabase import create_client

url = os.environ.get("SUPABASE_URL")
key = os.environ.get("SUPABASE_SERVICE_KEY")

if not url or not key:
    print("Error: Missing Supabase credentials")
    exit(1)

supabase = create_client(url, key)

async def check_key(api_key):
    print(f"--- Checking Key: {api_key} ---\n")
    
    # 1. Get Client
    res = supabase.table("clients").select("*").eq("api_key", api_key).execute()
    
    if not res.data:
        print("❌ Client not found with API Key!")
        return
        
    client = res.data[0]
    client_id = client["id"]
    print(f"✅ Client Found: {client['company_name']} (ID: {client_id})")
    print(f"   Plan: {client['plan_type']}")
    
    # 2. Check Usage
    now = datetime.now(timezone.utc)
    start_of_month = now.replace(day=1, hour=0, minute=0, second=0, microsecond=0).strftime("%Y-%m-%d")
    
    logs = supabase.table("api_logs") \
        .select("id", count="exact") \
        .eq("client_id", client_id) \
        .gte("timestamp", start_of_month) \
        .execute()
        
    count = logs.count if logs.count is not None else len(logs.data)
    print(f"   Current Month Usage: {count} requests")

if __name__ == "__main__":
    target_key = "5STKwI3BYhmhIMBHDRY0QhBdqoWnx7X6"
    asyncio.run(check_key(target_key))
