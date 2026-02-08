from fastapi import APIRouter, Request, HTTPException
from pydantic import BaseModel
from typing import Optional
from services.supabase_client import supabase_admin
from middleware.auth_middleware import require_api_key, CorsResponse

router = APIRouter(prefix="/config", tags=["Config"])

class ConfigResponse(BaseModel):
    layer_scientific: bool
    layer_symptoms: bool
    layer_treatment_organic: bool
    layer_treatment_chemical: bool
    layer_treatment_biological: bool
    layer_prevention: bool
    layer_faq: bool
    layer_products_organic: bool
    layer_products_chemical: bool
    layer_products_biological: bool

class ConfigUpdate(BaseModel):
    layer_scientific: Optional[bool] = None
    layer_symptoms: Optional[bool] = None
    layer_treatment_organic: Optional[bool] = None
    layer_treatment_chemical: Optional[bool] = None
    layer_treatment_biological: Optional[bool] = None
    layer_prevention: Optional[bool] = None
    layer_faq: Optional[bool] = None
    layer_products_organic: Optional[bool] = None
    layer_products_chemical: Optional[bool] = None
    layer_products_biological: Optional[bool] = None

DEFAULT_CONFIG = {
    "layer_scientific": False,
    "layer_symptoms": True,
    "layer_treatment_organic": True,
    "layer_treatment_chemical": False,
    "layer_treatment_biological": False,
    "layer_prevention": True,
    "layer_faq": False,
    "layer_products_organic": True,
    "layer_products_chemical": False,
    "layer_products_biological": False
}

@router.get("")
@require_api_key
async def get_config(request: Request):
    """Get the current response layer configuration for the authenticated client."""
    client_id = request.state.client_id
    
    res = supabase_admin.table("client_response_config").select("*").eq("client_id", client_id).execute()
    
    if not res.data:
        # Return defaults if no config exists
        return CorsResponse(DEFAULT_CONFIG)
    
    config = res.data[0]
    return CorsResponse({k: v for k, v in config.items() if k.startswith("layer_")})

@router.put("")
@require_api_key
async def update_config(request: Request):
    """Update the response layer configuration for the authenticated client."""
    client_id = request.state.client_id
    
    # Parse body
    try:
        body = await request.json()
    except Exception:
        return CorsResponse({"error": "Invalid JSON body"}, status=400)
    
    # Build update payload (only layer_ fields)
    update_data = {k: v for k, v in body.items() if k.startswith("layer_") and isinstance(v, bool)}
    
    if not update_data:
        return CorsResponse({"error": "No valid fields provided for update"}, status=400)
    
    # Check if config exists
    existing = supabase_admin.table("client_response_config").select("id").eq("client_id", client_id).execute()
    
    if existing.data:
        # Update existing
        supabase_admin.table("client_response_config").update(update_data).eq("client_id", client_id).execute()
    else:
        # Insert new (with defaults for unspecified fields)
        insert_data = {"client_id": client_id, **DEFAULT_CONFIG, **update_data}
        supabase_admin.table("client_response_config").insert(insert_data).execute()
    
    # Return updated config
    res = supabase_admin.table("client_response_config").select("*").eq("client_id", client_id).execute()
    if res.data:
        config = res.data[0]
        return CorsResponse({k: v for k, v in config.items() if k.startswith("layer_")})
    return CorsResponse(DEFAULT_CONFIG)
