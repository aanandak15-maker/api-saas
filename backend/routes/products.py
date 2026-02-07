from antigravity import Router, Request, Response
from services.supabase_client import supabase_admin
from middleware.auth_middleware import require_api_key, CorsResponse
from api_schemas import ProductResponse, ProductListResponse, GenericResponse

router = Router()

@router.post("/products", response_model=GenericResponse, status_code=201)
@require_api_key
async def create_product(request: Request):
    """Client adds a new product"""
    client_id = request.state.client_id
    data = await request.json()
    
    result = supabase_admin.table("client_products").insert({
        "client_id": client_id,
        "product_name": data.get("product_name"),
        "product_brand": data.get("product_brand"),
        "active_ingredient": data.get("active_ingredient"),
        "category": data.get("category"),
        "pack_sizes": data.get("pack_sizes"),
        "price_min": data.get("price_min"),
        "price_max": data.get("price_max"),
        "product_url": data.get("product_url"),
        "stock_status": data.get("stock_status", "in_stock")
    }).execute()
    
    return CorsResponse({
        "success": True,
        "product": result.data[0]
    }, status=201)


@router.get("/products", response_model=ProductListResponse)
@require_api_key
async def list_products(request: Request):
    """Get all products for a client"""
    client_id = request.state.client_id
    
    result = supabase_admin.table("client_products") \
        .select("*") \
        .eq("client_id", client_id) \
        .eq("is_active", True) \
        .execute()
    
    return CorsResponse({
        "products": result.data,
        "total": len(result.data)
    })


@router.put("/products/{product_id}", response_model=GenericResponse)
@require_api_key
async def update_product(request: Request):
    """Update a product"""
    client_id = request.state.client_id
    product_id = request.path_params["product_id"]
    data = await request.json()
    
    # Security: Whitelist allowed fields to prevent mass assignment (e.g. overwriting client_id)
    ALLOWED_FIELDS = {
        "product_name", "product_brand", "active_ingredient", 
        "category", "pack_sizes", "price_min", "price_max", 
        "product_url", "stock_status"
    }
    
    safe_data = {k: v for k, v in data.items() if k in ALLOWED_FIELDS}
    
    if not safe_data:
        return CorsResponse({"error": "No valid fields to update"}, status=400)

    result = supabase_admin.table("client_products") \
        .update(safe_data) \
        .eq("id", product_id) \
        .eq("client_id", client_id) \
        .execute()
    
    if not result.data:
        return CorsResponse({"error": "Product not found or access denied"}, status=404)

    return CorsResponse({
        "success": True,
        "product": result.data[0]
    })


@router.delete("/products/{product_id}", response_model=GenericResponse)
@require_api_key
async def delete_product(request: Request):
    """Soft delete a product"""
    client_id = request.state.client_id
    product_id = request.path_params["product_id"]
    
    result = supabase_admin.table("client_products") \
        .update({"is_active": False}) \
        .eq("id", product_id) \
        .eq("client_id", client_id) \
        .execute()

    if not result.data:
        return CorsResponse({"error": "Product not found or access denied"}, status=404)

    return CorsResponse({"success": True})
