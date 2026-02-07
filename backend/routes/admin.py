from antigravity import Router, Request, Response
from services.supabase_client import supabase_admin
from services.key_management import add_gemini_key, get_active_gemini_key
from middleware.auth_middleware import CorsResponse, require_admin_key, require_api_key
from api_schemas import KeyListResponse, GenericResponse, BillingStats
import uuid
import csv
import io
import os

router = Router()

# =======================
# KEY MANAGEMENT (Admin)
# =======================

@router.get("/admin/keys", response_model=KeyListResponse)
@require_admin_key
async def list_keys(request: Request):
    """List all AI keys (Masked)"""
    # In prod, add Admin Auth Middleware here
    result = supabase_admin.table("ai_keys").select("id, provider, status, created_at, usage_count").order("created_at").execute()
    return CorsResponse({"keys": result.data})

@router.post("/admin/keys", response_model=GenericResponse)
@require_admin_key
async def create_key(request: Request):
    """Add new Gemini Key"""
    data = await request.json()
    raw_key = data.get("api_key")
    if not raw_key:
        return Response("Missing api_key", status=400)
    
    add_gemini_key(raw_key)
    return CorsResponse({"success": True, "message": "Key encrypted and stored"})

@router.post("/admin/keys/rotate", response_model=GenericResponse)
@require_admin_key
async def rotate_key(request: Request):
    """Deactivate old keys, Activate specific key"""
    data = await request.json()
    target_id = data.get("id")
    
    # Deactivate all
    supabase_admin.table("ai_keys").update({"status": "inactive"}).neq("id", "00000").execute()
    
    # Activate target
    supabase_admin.table("ai_keys").update({"status": "active"}).eq("id", target_id).execute()
    
    return CorsResponse({"success": True, "message": f"Key {target_id} activated"})

# =======================
# BILLING EXPORT
# =======================

@router.get("/client/billing-stats", response_model=BillingStats)
@require_api_key
async def get_billing_stats(request: Request):
    """Get simple usage stats for the dashboard billing tab"""
    # For now, we mock the billing aggregation or query logs
    # In real impl: fetch count(*) from api_logs where client_id=...
    
    # We will just return dummy data for the UI proof-of-concept
    # as setting up the full log aggregation is heavy.
    return CorsResponse({
        "plan": "Starter",
        "calls_this_month": 142,
        "estimated_cost": 7.10, # 142 * 0.05
        "currency": "USD"
    })

@router.get("/client/export-usage")
@require_api_key
async def export_usage_csv(request: Request):
    """Generate CSV of usage"""
    # Create CSV in memory
    output = io.StringIO()
    writer = csv.writer(output)
    
    # Headers
    writer.writerow(['Date', 'Time', 'Endpoint', 'Status', 'Cost'])
    
    # Dummy data for demo
    writer.writerow(['2026-02-06', '10:00:00', '/detect', '200', '0.05'])
    writer.writerow(['2026-02-06', '10:05:00', '/detect', '200', '0.05'])
    writer.writerow(['2026-02-06', '11:20:00', '/mappings', '200', '0.00'])
    
    return Response(
        output.getvalue(),
        media_type="text/csv",
        headers={
            "Content-Disposition": "attachment; filename=usage_log.csv",
            "Access-Control-Allow-Origin": os.environ.get("ALLOWED_ORIGIN", "*"),
            "Access-Control-Allow-Methods": "GET, POST, OPTIONS",
            "Access-Control-Allow-Headers": "*"
        }
    )
