from antigravity import Router, Request, Response
from services.supabase_client import supabase_admin
from middleware.auth_middleware import require_api_key, CorsResponse
from api_schemas import DiseaseListResponse, DiseaseDetailResponse

router = Router()

@router.get("/diseases/list", response_model=DiseaseListResponse)
@require_api_key
async def list_diseases(request: Request):
    """List all diseases for dropdown"""
    result = supabase_admin.table("diseases") \
        .select("id, disease_id, disease_name, crop") \
        .order("disease_name") \
        .execute()
    
    return CorsResponse({
        "diseases": result.data,
        "total": len(result.data)
    })

@router.get("/disease/{disease_id}", response_model=DiseaseDetailResponse)
@require_api_key
async def get_disease(request: Request):
    """
    Main API endpoint - returns disease data + client's mapped products
    
    Headers required:
    - X-API-Key: client's API key
    """
    disease_id_param = request.path_params["disease_id"]
    client_id = request.state.client_id  # Set by auth middleware
    
    # 1. Fetch disease data from YOUR master table
    # Using 'disease_id' column (string ID like TOM-0045) not uuid 'id'
    disease_result = supabase_admin.table("diseases") \
        .select("*") \
        .eq("disease_id", disease_id_param) \
        .execute()
    
    if not disease_result.data:
        return CorsResponse({"error": "Disease not found"}, status=404)
    
    disease = disease_result.data[0]
    
    # 2. Fetch client's products mapped to this disease
    # We map using UUIDs usually, so we ensure disease['id'] is used
    mappings_result = supabase_admin.table("disease_product_mappings") \
        .select("*") \
        .eq("client_id", client_id) \
        .eq("disease_id", disease["id"]) \
        .eq("is_active", True) \
        .order("priority") \
        .execute()
    
    # 3. Group products by treatment type
    products = {
        "organic": [],
        "chemical": [],
        "biological": []
    }
    
    for mapping in mappings_result.data:
        # Handle both joined data (Supabase) and non-joined data (mock)
        product = mapping.get("client_products")
        
        if not product:
            # Fallback: fetch product separately (for mock mode)
            product_result = supabase_admin.table("client_products") \
                .select("*") \
                .eq("id", mapping.get("product_id")) \
                .execute()
            if product_result.data:
                product = product_result.data[0]
        
        if not product:
            continue
        
        treatment_type = mapping.get("treatment_type", "organic")
        
        if treatment_type in products:
            products[treatment_type].append({
                "product_name": product.get("product_name"),
                "brand": product.get("product_brand"),
                "active_ingredient": product.get("active_ingredient"),
                "pack_sizes": product.get("pack_sizes"),
                "price_range": f"₹{product.get('price_min', 0)}-{product.get('price_max', 0)}",
                "product_url": product.get("product_url"),
                "stock_status": product.get("stock_status"),
                "priority": mapping.get("priority", 1)
            })
    
    # 4. Build response
    response_data = {
        "disease_id": disease["disease_id"],
        "disease_name": disease["disease_name"],
        "crop": disease["crop"],
        "category": disease["category"],
        "advisory": {
            "symptoms": disease["key_symptoms"],
            "affected_parts": disease["affected_parts"],
            "severity": disease["severity_default"],
            "environmental_trigger": disease["environmental_trigger"],
            "season": disease["season"],
            "precautions": disease["precautions"],
            "preventive_measures": disease["preventive_measures"],
            "ipm_brief": disease["ipm_brief"],
            "faq": disease["faq"]
        },
        "treatment_options": {
            "organic": {
                "available": disease["slot_organic_available"],
                "generic_guideline": disease["treatment_organic_generic"],
                "application_method": disease["application_method"],
                "dosage_guideline": disease["dosage_generic"],
                "spray_interval_days": disease["spray_interval_days"],
                "your_products": products["organic"]
            },
            "chemical": {
                "available": disease["slot_chemical_available"],
                "generic_guideline": disease["treatment_chemical_generic"],
                "application_method": disease["application_method"],
                "dosage_guideline": disease["dosage_generic"],
                "spray_interval_days": disease["spray_interval_days"],
                "your_products": products["chemical"]
            },
            "biological": {
                "available": disease["slot_biological_available"],
                "generic_guideline": disease["treatment_biological_generic"],
                "application_method": disease["application_method"],
                "your_products": products["biological"]
            }
        },
        "language": {
            "hindi": disease["language_hindi"]
        }
    }
    
    # 5. Log API call
    try:
        supabase_admin.table("api_logs").insert({
            "client_id": client_id,
            "disease_id": disease["id"],
            "endpoint": f"/disease/{disease_id_param}",
            "method": "GET",
            "status_code": 200
        }).execute()
    except Exception as e:
        print(f"Logging failed: {e}")
    
    return CorsResponse(response_data)
