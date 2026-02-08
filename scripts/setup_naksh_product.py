
import os
import asyncio
from dotenv import load_dotenv
from supabase import create_client

load_dotenv("backend/.env")

url = os.environ.get("SUPABASE_URL")
key = os.environ.get("SUPABASE_SERVICE_KEY")

if not url or not key:
    print("Error: Missing Supabase credentials")
    exit(1)

supabase = create_client(url, key)

def setup_product():
    print("--- Setting up SAAF Fungicide for Naksh ---")
    
    # 1. Get Client (Naksh)
    api_key = "zIS7TKdQeKeOOne3AlinyiDcYQusLQ1V"
    res = supabase.table("clients").select("id").eq("api_key", api_key).execute()
    
    if not res.data:
        print("❌ Naksh Client not found!")
        return
    client_id = res.data[0]["id"]
    print(f"✅ Client ID: {client_id}")
    
    # 2. Get Disease (Early Blight - Tomato)
    # Search by exact name and crop or partial
    res = supabase.table("diseases").select("id, disease_name").eq("disease_name", "Early Blight").eq("crop", "Tomato").execute()
    
    disease_id = None
    if res.data:
        disease_id = res.data[0]["id"]
        print(f"✅ Disease Found: {res.data[0]['disease_name']} ({disease_id})")
    else:
        # Fallback to just Early Blight
        print("⚠️ Exact match not found, searching name only...")
        res = supabase.table("diseases").select("id, disease_name").eq("disease_name", "Early Blight").execute()
        if res.data:
            disease_id = res.data[0]["id"]
            print(f"✅ Disease Found (Generic): {res.data[0]['disease_name']} ({disease_id})")
        else:
            print("❌ Disease 'Early Blight' not found!")
            return

    # 3. Create Product
    product_data = {
        "client_id": client_id,
        "product_name": "SAAF Fungicide",
        "product_brand": "UPL",
        "active_ingredient": "Mancozeb + Carbendazim",
        "category": "Fungicide",
        "product_url": "https://beejghar.in/product/saaf-fungicide/?attribute_quantity=250+g&utm_source=Google+Ads&utm_medium=Shopping&utm_campaign=Shopping+2&gad_source=1&gad_campaignid=23528259105&gbraid=0AAAABBKR9htqHjbPiZ__XEjV7BbyX7Sp9&gclid=Cj0KCQiA4pvMBhDYARIsAGfgwvw59f5ZT68EU9hR2eNEhK-PuAX2-yL2tma49xNcwU4ph3UVdB5R9KEaAtB3EALw_wcB",
        "stock_status": "in_stock",
        "is_active": True
    }
    
    # Check if exists first to avoid duplicates
    existing = supabase.table("client_products").select("id").eq("client_id", client_id).eq("product_name", "SAAF Fungicide").execute()
    
    if existing.data:
        product_id = existing.data[0]["id"]
        print(f"ℹ️ Product already exists ({product_id}). Updating...")
        supabase.table("client_products").update(product_data).eq("id", product_id).execute()
    else:
        res = supabase.table("client_products").insert(product_data).execute()
        product_id = res.data[0]["id"]
        print(f"✅ Product Created: {product_id}")

    # 4. Create Mapping
    mapping_data = {
        "client_id": client_id,
        "disease_id": disease_id,
        "product_id": product_id,
        "treatment_type": "organic", # User requested 'shows in organic'
        "priority": 1,
        "is_active": True
    }
    
    # Check existing mapping
    existing_map = supabase.table("disease_product_mappings").select("id").eq("client_id", client_id).eq("disease_id", disease_id).eq("product_id", product_id).execute()
    
    if existing_map.data:
        print(f"ℹ️ Mapping already exists ({existing_map.data[0]['id']}). Updating...")
        supabase.table("disease_product_mappings").update(mapping_data).eq("id", existing_map.data[0]["id"]).execute()
    else:
        res = supabase.table("disease_product_mappings").insert(mapping_data).execute()
        print(f"✅ Mapping Created: {res.data[0]['id']}")

if __name__ == "__main__":
    setup_product()
