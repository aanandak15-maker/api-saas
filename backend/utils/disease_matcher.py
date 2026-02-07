from services.supabase_client import supabase_admin

def match_disease_from_db(disease_name: str, crop: str = None) -> dict:
    """
    Match a disease name (from AI) to a database record.
    Returns dict with disease details or None.
    """
    if not disease_name:
        return None
        
    # 1. High Precision: Crop + Exact/Partial Name Match
    if crop:
        # Try finding name within proper disease name AND matching crop
        result = supabase_admin.table("diseases") \
            .select("*") \
            .eq("crop", crop) \
            .ilike("disease_name", f"%{disease_name}%") \
            .execute()
        if result.data:
            return result.data[0]

        # Try synonyms with crop
        result = supabase_admin.table("diseases") \
            .select("*") \
            .eq("crop", crop) \
            .ilike("synonyms", f"%{disease_name}%") \
            .execute()
        if result.data:
            return result.data[0]

    # 2. Exact Match (Case insensitive) - ignoring crop (Fallback)
    result = supabase_admin.table("diseases") \
        .select("*") \
        .ilike("disease_name", disease_name) \
        .execute()
    
    if result.data:
        # If multiple matches, try to find one where crop matches if we have it
        if crop:
             for d in result.data:
                 if d.get("crop", "").lower() == crop.lower():
                     return d
        return result.data[0]
            
    # 3. Fuzzy-ish Match (Contains) - ignoring crop (Last Resort)
    result = supabase_admin.table("diseases") \
        .select("*") \
        .ilike("disease_name", f"%{disease_name}%") \
        .execute()
    
    if result.data:
        if crop:
             for d in result.data:
                 if d.get("crop", "").lower() == crop.lower():
                     return d
        return result.data[0]
        
    return None
