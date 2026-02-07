"""
Supabase Client - Uses Mock for Local Testing
Switch to real Supabase by setting USE_MOCK=false in .env
"""
import os
from dotenv import load_dotenv

load_dotenv()

USE_MOCK = os.getenv("USE_MOCK", "true").lower() == "true"

if USE_MOCK:
    print("🧪 Running in LOCAL MOCK MODE - No Supabase connection")
    from services.mock_supabase import supabase, supabase_admin
else:
    from supabase import create_client, Client
    
    SUPABASE_URL = os.getenv("SUPABASE_URL")
    SUPABASE_KEY = os.getenv("SUPABASE_KEY")
    SUPABASE_SERVICE_KEY = os.getenv("SUPABASE_SERVICE_KEY")
    
    supabase: Client = create_client(SUPABASE_URL, SUPABASE_KEY) if SUPABASE_URL and SUPABASE_KEY else None
    supabase_admin: Client = create_client(SUPABASE_URL, SUPABASE_SERVICE_KEY) if SUPABASE_URL and SUPABASE_SERVICE_KEY else None
