import asyncio
import os
from dotenv import load_dotenv

# Load env robustly
try:
    load_dotenv("backend/.env")
except:
    pass
load_dotenv(".env")
load_dotenv("../backend/.env")

from supabase import create_client

# Setup Supabase
url = os.environ.get("SUPABASE_URL")
key = os.environ.get("SUPABASE_SERVICE_KEY")
supabase = create_client(url, key)

async def test_layers():
    print("--- Verifying Layered API ---")
    
    # 1. Get a test client (using the one we upgraded earlier)
    api_key = "5STKwI3BYhmhIMBHDRY0QhBdqoWnx7X6"
    res = supabase.table("clients").select("id").eq("api_key", api_key).execute()
    if not res.data:
        print("❌ Test client not found")
        return
    client_id = res.data[0]["id"]
    print(f"✅ Client ID: {client_id}")

    # 2. Update Config: Enable Branding, Disable Chemical
    print("\n[Test 1] Updating Configuration...")
    new_config = {
        "layer_branding": True,
        "branding_custom_text": "Certified Organic by Naksh",
        "branding_primary_color": "#22c55e",
        "layer_treatment_chemical": False,
        "layer_treatment_organic": True
    }
    
    # Upsert config
    current_config = supabase.table("client_response_config").select("*").eq("client_id", client_id).execute()
    if current_config.data:
        supabase.table("client_response_config").update(new_config).eq("client_id", client_id).execute()
    else:
        supabase.table("client_response_config").insert({"client_id": client_id, **new_config}).execute()
        
    print("✅ Config updated in DB")

    # 3. Simulate Response Builder
    print("\n[Test 2] Simulating API Response...")
    
    # Mock Data
    disease_record = {
        "disease_id": "D123",
        "disease_name": "Early Blight",
        "crop": "Tomato",
        "scientific_name": "Alternaria solani",
        "treatment_chemical_generic": "Use Mancozeb",
        "treatment_organic_generic": "Use Neem Oil"
    }
    products = {"organic": [{"name": "Neem X"}], "chemical": [{"name": "Chemical Y"}]}
    
    # We need to import ResponseBuilder, but we are in scripts/
    import sys
    # Add backend directory to sys.path
    backend_path = os.path.abspath(os.path.join(os.path.dirname(__file__), '../backend'))
    sys.path.append(backend_path)
    
    try:
        from services.response_builder import ResponseBuilder, get_client_config
        
        # Fetch fresh config via service
        config = get_client_config(client_id)
        builder = ResponseBuilder(client_id, config)
        
        response = builder.build(
            disease_record=disease_record,
            confidence=0.95,
            severity="High",
            image_url="http://test.com/img.jpg",
            detection_id="test-det-id",
            products=products
        )
        
        # Verify Branding
        if "branding" in response and response["branding"]["custom_text"] == "Certified Organic by Naksh":
            print("✅ Branding Layer: PRESENT and CORRECT")
        else:
            print("❌ Branding Layer: MISSING or INCORRECT")
            print(f"   Actual: {response.get('branding')}")

        # Verify Chemical (Should be hidden)
        advisory = response.get("advisory", {})
        treatment = advisory.get("treatment", {})
        
        if "chemical" not in treatment:
             print("✅ Chemical Treatment: CORRECTLY HIDDEN")
        else:
             print("❌ Chemical Treatment: VISIBLE (Should be hidden)")

        if "organic" in treatment:
             print("✅ Organic Treatment: VISIBLE")
        else:
             print("❌ Organic Treatment: MISSING")
             
    except ImportError:
        print("⚠️ Could not import backend services. verifying DB only.")
        # Fallback: check DB again
        final_conf = supabase.table("client_response_config").select("*").eq("client_id", client_id).execute()
        print(f"DB Config State: {final_conf.data[0]}")

if __name__ == "__main__":
    asyncio.run(test_layers())
