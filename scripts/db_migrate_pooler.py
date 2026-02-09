
import os
import psycopg2
from dotenv import load_dotenv

# Load env robustly
try:
    load_dotenv("backend/.env")
except:
    pass
load_dotenv(".env")
load_dotenv("../backend/.env") 

# Pooler Config for Southeast Asia (common)
# If this fails, we will try other regions or ask user
PROJECT_REF = os.environ.get("SUPABASE_URL", "").replace("https://", "").replace(".supabase.co", "")
DB_PASSWORD = os.environ.get("DB_PASSWORD")

# Try common poolers
HOSTS = [
    "aws-0-ap-southeast-1.pooler.supabase.com", # Singapore (likely for 'southeastasia-01' app service)
    "aws-0-us-east-1.pooler.supabase.com",
    "aws-0-eu-central-1.pooler.supabase.com"
]

def try_migrate():
    print(f"Project Ref: {PROJECT_REF}")
    
    # Read sql file
    import sys
    migration_file = sys.argv[1] if len(sys.argv) > 1 else "migrations/003_add_branding_config.sql"
    with open(migration_file, "r") as f:
        sql = f.read()

    for host in HOSTS:
        print(f"\n--- Trying {host} ---")
        try:
            # User format for pooler: postgres.REF
            user = f"postgres.{PROJECT_REF}"
            
            conn = psycopg2.connect(
                host=host,
                user=user,
                password=DB_PASSWORD,
                port="6543", # Transaction pooler port
                dbname="postgres",
                sslmode="require"
            )
            conn.autocommit = True
            cursor = conn.cursor()
            
            print(f"Connected! Running migration: {migration_file}")
            print("Executing SQL...")
            cursor.execute(sql)
            print("Migration successful!")
            conn.close()
            return True
            
        except Exception as e:
            print(f"Failed: {e}")
            
    return False

if __name__ == "__main__":
    success = try_migrate()
    if not success:
        print("\n❌ All pooler connections failed.")
        exit(1)
