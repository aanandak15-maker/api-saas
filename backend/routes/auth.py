from antigravity import Router, Request, Response
from services.supabase_client import supabase_admin
from utils.api_key_generator import generate_api_key
from middleware.auth_middleware import require_api_key, CorsResponse
import bcrypt

router = Router()

@router.post("/signup")
async def signup(request: Request):
    """Client company signup"""
    data = await request.json()
    
    # Generate API credentials
    api_key = generate_api_key()
    api_secret = generate_api_key(length=64)
    
    # Hash the secret
    hashed_secret = bcrypt.hashpw(api_secret.encode(), bcrypt.gensalt())
    
    # Insert into clients table
    # Note: execute() returns APIResponse which has .data
    result = supabase_admin.table("clients").insert({
        "company_name": data.get("company_name"),
        "business_type": data.get("business_type"),
        "email": data.get("email"),
        "phone": data.get("phone"),
        "plan_type": data.get("plan_type", "basic"),
        "api_key": api_key,
        "api_secret": hashed_secret.decode(),
        "subscription_status": "trial",
        "is_active": True
    }).execute()
    
    if not result.data:
         return CorsResponse({"error": "Signup failed"}, status=500)

    return CorsResponse({
        "success": True,
        "client_id": result.data[0]["id"],
        "api_key": api_key,
        "api_secret": api_secret,  # Show once, then never again
        "message": "Account created successfully. Save your API secret - it won't be shown again."
    }, status=201)


@router.post("/login")
async def login(request: Request):
    """Client login to dashboard"""
    data = await request.json()
    
    result = supabase_admin.table("clients") \
        .select("*") \
        .eq("email", data.get("email")) \
        .execute()
    
    if not result.data:
        return CorsResponse({"error": "Invalid credentials"}, status=401)
    
    client = result.data[0]
    
    # Verify API secret
    if bcrypt.checkpw(data.get("api_secret", "").encode(), client["api_secret"].encode()):
        # Update last_login
        supabase_admin.table("clients") \
            .update({"last_login": "now()"}) \
            .eq("id", client["id"]) \
            .execute()
        
        return CorsResponse({
            "success": True,
            "client": {
                "id": client["id"],
                "company_name": client["company_name"],
                "email": client["email"],
                "plan_type": client["plan_type"],
                "api_key": client["api_key"]
            }
        })
    
    return CorsResponse({"error": "Invalid credentials"}, status=401)


@router.post("/dashboard/signup")
async def dashboard_signup(request: Request):
    """
    Called by Frontend Dashboard after Supabase Auth signup.
    Creates a client record and generates API keys.
    """
    data = await request.json()
    email = data.get("email")
    company_name = data.get("company_name")
    
    if not email:
        return CorsResponse({"error": "Email is required"}, status=400)
    
    # Check if client already exists
    existing = supabase_admin.table("clients").select("id").eq("email", email).execute()
    if existing.data:
        return CorsResponse({"error": "Client already exists"}, status=409)
    
    # Generate API credentials
    api_key = generate_api_key()
    api_secret = generate_api_key(length=64)
    hashed_secret = bcrypt.hashpw(api_secret.encode(), bcrypt.gensalt())
    
    # Create client
    result = supabase_admin.table("clients").insert({
        "company_name": company_name or email.split("@")[0],
        "email": email,
        "plan_type": "trial",
        "api_key": api_key,
        "api_secret": hashed_secret.decode(),
        "subscription_status": "trial",
        "is_active": True
    }).execute()
    
    if not result.data:
        return CorsResponse({"error": "Failed to create client record"}, status=500)
    
    return CorsResponse({
        "success": True,
        "client_id": result.data[0]["id"],
        "api_key": api_key,
        "message": "Client initialized for dashboard"
    }, status=201)


@router.get("/client/profile")
async def get_client_profile(request: Request):
    """
    Get client profile by email (for dashboard)
    Secure this in production! For now, relies on frontend knowing the email.
    """
    email = request.query_params.get("email")
    
    if not email:
        return CorsResponse({"error": "Email required"}, status=400)
    
    result = supabase_admin.table("clients") \
        .select("id, company_name, email, api_key, plan_type, subscription_status") \
        .eq("email", email) \
        .execute()
    
    if not result.data:
        return CorsResponse({"error": "Client not found"}, status=404)
    
    return CorsResponse(result.data[0])


@router.post("/client/regenerate-key")
async def regenerate_key(request: Request):
    """
    Regenerate API Key and Secret
    """
    data = await request.json()
    email = data.get("email")
    
    if not email:
        return CorsResponse({"error": "Email required"}, status=400)
    
    # Verify client exists
    client_res = supabase_admin.table("clients").select("id").eq("email", email).execute()
    if not client_res.data:
        return CorsResponse({"error": "Client not found"}, status=404)
    client_id = client_res.data[0]["id"]

    # Generate new credentials
    new_api_key = generate_api_key()
    new_api_secret = generate_api_key(length=64)
    hashed_secret = bcrypt.hashpw(new_api_secret.encode(), bcrypt.gensalt())
    
    # Update DB
    result = supabase_admin.table("clients").update({
        "api_key": new_api_key,
        "api_secret": hashed_secret.decode(),
        "updated_at": "now()"
    }).eq("id", client_id).execute()
    
    if not result.data:
        return CorsResponse({"error": "Failed to update credentials"}, status=500)
        
    return CorsResponse({
        "success": True,
        "api_key": new_api_key,
        "api_secret": new_api_secret,
        "message": "Key rotated successfully. Update your applications immediately."
    })


@router.get("/client/usage-stats")
@require_api_key
async def get_usage_stats(request: Request):
    """
    Get API usage statistics for dashboard
    """
    client_id = request.state.client_id
    
    # 1. Total Calls (All time)
    # We count *rows* in api_logs for this client
    # Note: supabase-py count syntax: .select("*", count="exact")
    
    total_res = supabase_admin.table("api_logs") \
        .select("*", count="exact") \
        .eq("client_id", client_id) \
        .execute()
    total_calls = total_res.count if total_res.count is not None else len(total_res.data)

    # 2. Calls Today
    # timestamp >= today 00:00
    # simple approach: filter by timestamp > 'today' (handled by DB usually or Python)
    # PostgREST operator: gte (greater than or equal)
    # We need Python date formatted string.
    from datetime import datetime, timezone
    today_str = datetime.now(timezone.utc).strftime("%Y-%m-%d")
    
    today_res = supabase_admin.table("api_logs") \
        .select("*", count="exact") \
        .eq("client_id", client_id) \
        .gte("timestamp", today_str) \
        .execute()
    calls_today = today_res.count if today_res.count is not None else len(today_res.data)

    # Return simplified stats
    return CorsResponse({
        "total_calls": total_calls,
        "calls_today": calls_today,
        # Real app would do "this week" too, effectively just changing date filter
    })
