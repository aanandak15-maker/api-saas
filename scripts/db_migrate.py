
import os
import psycopg2
from dotenv import load_dotenv

load_dotenv("backend/.env")

# Construct DB URL
# If DB_URL is not set, build it
# user=postgres password=DB_PASSWORD host=db.REF.supabase.co port=5432 dbname=postgres
ref = os.environ.get("SUPABASE_URL", "").replace("https://", "").replace(".supabase.co", "")
password = os.environ.get("DB_PASSWORD")
host = f"db.{ref}.supabase.co"

print(f"Connecting to {host}...")

try:
    conn = psycopg2.connect(
        host=host,
        user="postgres",
        password=password,
        port="5432",
        dbname="postgres"
    )
    conn.autocommit = True
    cursor = conn.cursor()
    
    # Read sql file
    import sys
    migration_file = sys.argv[1] if len(sys.argv) > 1 else "migrations/001_create_config_table.sql"
    print(f"Running migration: {migration_file}")
    
    with open(migration_file, "r") as f:
        sql = f.read()
        
    print("Executing SQL...")
    cursor.execute(sql)
    print("Migration successful!")
    
except Exception as e:
    print(f"Migration failed: {e}")
    # Try alternative host format if known?
    
finally:
    if 'conn' in locals() and conn:
        conn.close()
