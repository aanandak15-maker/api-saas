
import os
from supabase import create_client
from dotenv import load_dotenv

# Load env robustly
try:
    load_dotenv("backend/.env")
except:
    pass
load_dotenv(".env")
load_dotenv("../backend/.env")

url = os.environ.get("SUPABASE_URL")
key = os.environ.get("SUPABASE_SERVICE_KEY")
supabase = create_client(url, key)

print("\n--- FETCHING CLIENTS & CONFIGS ---")
res = supabase.table("clients").select("*").execute()
clients = res.data
print(f"Found {len(clients)} clients")

for c in clients:
    user_id = c.get("user_id", "N/A")
    email = c.get("email", "N/A")
    api_key = c.get("api_key", "N/A")
    client_id = c["id"]
    
    print(f"\nUser: {email}")
    print(f"  ID: {client_id}")
    print(f"  Key: {api_key}")
    
    # Get config
    conf_res = supabase.table("client_response_config").select("*").eq("client_id", client_id).execute()
    if conf_res.data:
        config = conf_res.data[0]
        print(f"  [CONFIG FOUND]")
        print(f"    - Branding Enabled: {config.get('layer_branding')}")
        print(f"    - Custom Text: '{config.get('branding_custom_text')}'")
        print(f"    - Primary Color: {config.get('branding_primary_color')}")
        print(f"    - Chemical Treatment: {config.get('layer_treatment_chemical')}")
    else:
        print("  [NO CONFIG FOUND - USING DEFAULTS]")
