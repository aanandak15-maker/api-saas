from services.supabase_client import supabase_admin
from datetime import datetime, timezone

api_key = "rFzJd3KXCHUmamasVzcbA9nr4R3AncXj"

# 1. Get Client
res = supabase_admin.table("clients").select("id, email, plan_type").eq("api_key", api_key).execute()
if not res.data:
    print(f"No client found with key {api_key}")
    exit(1)

client = res.data[0]
client_id = client["id"]
print(f"Client found: {client['email']} (ID: {client_id}, Plan: {client['plan_type']})")

# 2. Check Logs for today
today_str = datetime.now(timezone.utc).strftime("%Y-%m-%d")
logs_res = supabase_admin.table("api_logs") \
    .select("*", count="exact") \
    .eq("client_id", client_id) \
    .eq("endpoint", "/detect") \
    .gte("timestamp", today_str) \
    .execute()

count = logs_res.count if logs_res.count is not None else len(logs_res.data)
print(f"Logs for today ({today_str}): {count}")

for log in logs_res.data:
    print(f" - {log['timestamp']}: {log['endpoint']} ({log['status_code']})")
