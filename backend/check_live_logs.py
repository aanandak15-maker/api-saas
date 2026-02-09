from services.supabase_client import supabase_admin
from datetime import datetime, timedelta, timezone

api_key = "rFzJd3KXCHUmamasVzcbA9nr4R3AncXj"

# 1. Get Client
res = supabase_admin.table("clients").select("id, email, plan_type").eq("api_key", api_key).execute()
if not res.data:
    print(f"No client found with key {api_key}")
    exit(1)

client = res.data[0]
client_id = client["id"]
print(f"Client: {client['email']} (ID: {client_id}, Plan: {client['plan_type']})")

# 2. Check ALL logs for the last 30 minutes
since = (datetime.now(timezone.utc) - timedelta(minutes=30)).isoformat()
logs_res = supabase_admin.table("api_logs") \
    .select("*") \
    .eq("client_id", client_id) \
    .gte("timestamp", since) \
    .order("timestamp", desc=True) \
    .execute()

print(f"Logs in the last 30 minutes: {len(logs_res.data)}")
for log in logs_res.data:
    print(f" - {log['timestamp']}: {log['endpoint']} ({log['status_code']})")
