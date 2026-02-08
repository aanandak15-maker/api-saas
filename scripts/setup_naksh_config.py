
import os
from dotenv import load_dotenv
from supabase import create_client

load_dotenv("backend/.env")

url = os.environ.get("SUPABASE_URL")
key = os.environ.get("SUPABASE_SERVICE_KEY")
supabase = create_client(url, key)

def setup_config():
    print("--- Configuring Response Layers for Naksh ---")
    
    # Get Naksh Client
    api_key = "zIS7TKdQeKeOOne3AlinyiDcYQusLQ1V"
    res = supabase.table("clients").select("id").eq("api_key", api_key).execute()
    
    if not res.data:
        print("❌ Naksh Client not found!")
        return
    client_id = res.data[0]["id"]
    
    # Config Data: Organic Focus
    config_data = {
        "client_id": client_id,
        "layer_scientific": False,       # Hide scientific
        "layer_symptoms": True,          # Show symptoms
        "layer_treatment_organic": True, # Show organic treatment
        "layer_treatment_chemical": False, # Hide chemical
        "layer_treatment_biological": False, # Hide biological
        "layer_prevention": True,        # Show prevention
        "layer_faq": False,              # Hide FAQ
        "layer_products_organic": True,  # Show organic products
        "layer_products_chemical": False,
        "layer_products_biological": False
    }
    
    # Check if config exists
    try:
        existing = supabase.table("client_response_config").select("id").eq("client_id", client_id).execute()
        
        if existing.data:
            print(f"ℹ️ Config exists. Updating...")
            supabase.table("client_response_config").update(config_data).eq("client_id", client_id).execute()
        else:
            print(f"ℹ️ Creating new config...")
            supabase.table("client_response_config").insert(config_data).execute()
            
        print("✅ Naksh Configuration Success!")
        
    except Exception as e:
        print(f"❌ Failed to configure: {e}")
        print("Did you run the SQL migration to create 'client_response_config' table?")

if __name__ == "__main__":
    setup_config()
