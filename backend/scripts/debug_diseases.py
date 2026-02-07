import sys
import os
sys.path.append(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
from services.supabase_client import supabase_admin

def check_diseases():
    try:
        # Fetch first 5 diseases for Tomato
        result = supabase_admin.table("diseases").select("disease_id, crop, disease_name").eq("crop", "Tomato").limit(1).execute()
        print(result.data)
    except Exception as e:
        print(f"Error: {e}")

if __name__ == "__main__":
    check_diseases()
