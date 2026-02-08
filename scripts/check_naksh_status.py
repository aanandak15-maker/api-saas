
import asyncio
import os
from dotenv import load_dotenv

# Load env from backend/.env
load_dotenv("backend/.env")

from supabase import create_client

url = os.environ.get("SUPABASE_URL")
key = os.environ.get("SUPABASE_SERVICE_KEY")

if not url or not key:
    print("Error: Missing Supabase credentials")
    exit(1)

supabase = create_client(url, key)

async def check_naksh():
    print("--- Checking Naksh Company Data ---\n")
    
    # 1. Get Client
    api_key = "zIS7TKdQeKeOOne3AlinyiDcYQusLQ1V"
    res = supabase.table("clients").select("*").eq("api_key", api_key).execute()
    
    if not res.data:
        print("❌ Client not found with API Key!")
        return
        
    client = res.data[0]
    client_id = client["id"]
    print(f"✅ Client Found: {client['company_name']} (ID: {client_id})")
    print(f"   Email: {client['email']}")
    print(f"   Plan: {client['plan_type']}")
    print(f"   Status: {client.get('subscription_status', 'N/A')}")
    
    # 2. Check API Logs
    print("\n--- Recent API Logs ---")
    logs = supabase.table("api_logs").select("*").eq("client_id", client_id).order("timestamp", desc=True).limit(5).execute()
    
    if logs.data:
        for log in logs.data:
            print(f"   [{log['timestamp']}] {log['method']} {log['endpoint']} -> {log['status_code']} ({log['response_time_ms']}ms)")
    else:
        print("   No API logs found.")

    # 3. Check Detections
    print("\n--- Recent Detections ---")
    detections = supabase.table("detection_images").select("*").eq("client_id", client_id).order("created_at", desc=True).limit(5).execute()
    
    if detections.data:
        for d in detections.data:
            print(f"   [{d['created_at']}] Crop: {d['crop']} | Confidence: {d['confidence_score']}")
            print(f"     Image: {d['image_url']}")
            # Fetch disease name if possible (would need join or separate query, keeping simple)
            print(f"     Disease ID: {d['detected_disease_id']}")
    else:
        print("   No detections found.")

if __name__ == "__main__":
    asyncio.run(check_naksh())
