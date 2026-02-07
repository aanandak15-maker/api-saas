from antigravity import Router, Request, Response
from services.supabase_client import supabase_admin
from middleware.auth_middleware import require_api_key, CorsResponse

router = Router()

@router.post("/mappings")
@require_api_key
async def create_mapping(request: Request):
    """Map a client's product to a disease"""
    client_id = request.state.client_id
    data = await request.json()
    
    # Validate disease exists
    disease_result = supabase_admin.table("diseases") \
        .select("id, disease_id, disease_name") \
        .eq("disease_id", data.get("disease_id")) \
        .execute()
    
    if not disease_result.data:
        return CorsResponse({"error": "Disease not found"}, status=404)
    
    disease = disease_result.data[0]
    
    # Validate product exists and belongs to client
    product_result = supabase_admin.table("client_products") \
        .select("id, product_name") \
        .eq("id", data.get("product_id")) \
        .eq("client_id", client_id) \
        .execute()
    
    if not product_result.data:
        return CorsResponse({"error": "Product not found or access denied"}, status=404)
    
    product = product_result.data[0]
    
    # Create mapping
    result = supabase_admin.table("disease_product_mappings").insert({
        "client_id": client_id,
        "disease_id": disease["id"],
        "product_id": product["id"],
        "treatment_type": data.get("treatment_type", "organic"),
        "priority": data.get("priority", 1),
        "is_active": True
    }).execute()
    
    return CorsResponse({
        "success": True,
        "mapping": {
            "id": result.data[0]["id"],
            "disease": disease["disease_name"],
            "product": product["product_name"],
            "treatment_type": data.get("treatment_type")
        }
    }, status=201)


@router.get("/mappings")
@require_api_key
async def list_mappings(request: Request):
    """List all disease-product mappings for the client"""
    client_id = request.state.client_id
    
    result = supabase_admin.table("disease_product_mappings") \
        .select("*") \
        .eq("client_id", client_id) \
        .eq("is_active", True) \
        .execute()
    
    return CorsResponse({
        "mappings": result.data,
        "total": len(result.data)
    })


@router.delete("/mappings/{mapping_id}")
@require_api_key
async def delete_mapping(request: Request):
    """Remove a disease-product mapping"""
    client_id = request.state.client_id
    mapping_id = request.path_params["mapping_id"]
    
    result = supabase_admin.table("disease_product_mappings") \
        .update({"is_active": False}) \
        .eq("id", mapping_id) \
        .eq("client_id", client_id) \
        .execute()
    
    return CorsResponse({"success": True})
