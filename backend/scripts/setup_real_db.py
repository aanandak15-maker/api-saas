import psycopg2
import os

# Database connection parameters
DB_HOST = "db.ygoiinepwvafcimnerhm.supabase.co"
DB_NAME = "postgres"
DB_USER = "postgres"
DB_PASS = "g98NGXVIVIbjCRTt"
DB_PORT = "5432"

SCHEMA_FILE = "../agri-saas-platform/supabase/schema.sql"

def run_schema():
    try:
        print("Connecting to database...")
        conn = psycopg2.connect(
            host=DB_HOST,
            database=DB_NAME,
            user=DB_USER,
            password=DB_PASS,
            port=DB_PORT
        )
        conn.autocommit = True
        cur = conn.cursor()
        
        print(f"Reading schema from {SCHEMA_FILE}...")
        with open(SCHEMA_FILE, 'r') as f:
            schema_sql = f.read()
        
        print("Executing schema SQL...")
        cur.execute(schema_sql)
        
        print("✅ Schema executed successfully!")
        
        cur.close()
        conn.close()
    except Exception as e:
        print(f"❌ Error: {e}")

if __name__ == "__main__":
    run_schema()
