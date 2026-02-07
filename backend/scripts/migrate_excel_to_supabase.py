import pandas as pd
import sys
import os

# Add parent dir to path to import services
sys.path.append(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

from services.supabase_client import supabase_admin

def migrate_diseases():
    """Migrate your 774 diseases from Excel to Supabase"""
    
    excel_path = '../Disease_Intelligence_Master.xlsx' # Adjust path as needed or passed as arg
    # Check if exists
    if not os.path.exists(excel_path):
        # Try absolute path or common location
        excel_path = '/Users/anand/Downloads/Disease_Intelligence_Master.xlsx'
        
    if not os.path.exists(excel_path):
        print(f"Error: Excel file not found at {excel_path}")
        return

    # Read Excel - Note header index might need adjustment
    df = pd.read_excel(excel_path, sheet_name='Disease_Intelligence_Master', header=None)
    
    # We need to skip metadata rows. Assuming data starts around row 1 or 2.
    # Based on previous analysis, data often started after header.
    # Let's simple iterate and check for valid ID format as in generate_seed_v2.py
    
    import re
    
    diseases = []
    print("Parsing Excel file...")
    
    for idx, row in df.iterrows():
        code = str(row[1]).strip()
        if not re.match(r'^[A-Z]{3}-\d+$', code):
            continue
            
        disease = {
            "disease_id": code,
            "crop": row[2],
            "disease_name": row[3],
            "synonyms": row[4] if pd.notna(row[4]) else None,
            "scientific_name": row[5] if pd.notna(row[5]) else None,
            "category": row[6],
            "severity_default": row[7] if pd.notna(row[7]) else None,
            "stage_default": row[8] if pd.notna(row[8]) else None,
            
            "key_symptoms": row[9],
            "affected_parts": row[10] if pd.notna(row[10]) else None,
            "environmental_trigger": row[11] if pd.notna(row[11]) else None,
            "season": row[12] if pd.notna(row[12]) else None,
            
            "treatment_organic_generic": row[13] if pd.notna(row[13]) else None,
            "treatment_chemical_generic": row[14] if pd.notna(row[14]) else None,
            "treatment_biological_generic": row[15] if pd.notna(row[15]) else None,
            
            "application_method": row[16] if pd.notna(row[16]) else None,
            "dosage_generic": row[17] if pd.notna(row[17]) else None,
            # "spray_interval_days": row[18], # Need integer conversion validation
            "precautions": row[19] if pd.notna(row[19]) else None,
            "preventive_measures": row[20] if pd.notna(row[20]) else None,
            # "ipm_brief": ...
            "faq": [row[22]] if pd.notna(row[22]) else [],
            
            # Defaults
            "slot_organic_available": True,
            "slot_chemical_available": True,
            "slot_biological_available": True,
            "confidence_threshold": 90
        }
        diseases.append(disease)
    
    print(f"Parsed {len(diseases)} diseases. Starting upload...")
    
    # Batch insert
    batch_size = 100
    for i in range(0, len(diseases), batch_size):
        batch = diseases[i:i+batch_size]
        try:
            result = supabase_admin.table("diseases").insert(batch).execute()
            print(f"Inserted batch {i//batch_size + 1}: {len(result.data)} records")
        except Exception as e:
            print(f"Error inserting batch {i//batch_size + 1}: {e}")
            # Try to continue or break?
    
    print(f"✅ Migration complete attempt for {len(diseases)} diseases")

if __name__ == "__main__":
    migrate_diseases()
