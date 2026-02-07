from antigravity import Router, Request, Response
from services.supabase_client import supabase_admin, supabase
from utils.api_key_generator import generate_api_key
from middleware.auth_middleware import require_api_key, CorsResponse
import bcrypt

router = Router()

from schemas import SignupRequest, DashboardSignupRequest
from api_schemas import SignupResponse, LoginResponse, ClientProfile, GenericResponse
from pydantic import ValidationError

@router.post("/signup", response_model=SignupResponse, status_code=201)
async def signup(request: Request):
    """Client company signup"""
    try:
        raw_data = await request.json()
        validated_data = SignupRequest(**raw_data)
    except ValidationError as e:
        return CorsResponse({"error": "Validation Error", "details": e.errors()}, status=422)
    except Exception:
        return CorsResponse({"error": "Invalid JSON"}, status=400)
    
    # Idempotency / Uniqueness Check
    existing = supabase_admin.table("clients").select("id").eq("email", validated_data.email).execute()
    if existing.data:
        # For security, we might want to return 200 or 409. 
        # 409 Conflict is standard for "Resource already exists"
        return CorsResponse({"error": "Account with this email already exists"}, status=409)

    # Generate API credentials
    api_key = generate_api_key()
    api_secret = generate_api_key(length=64)
    
    # Hash the secret
    hashed_secret = bcrypt.hashpw(api_secret.encode(), bcrypt.gensalt())
    
    # Insert into clients table
    # Note: execute() returns APIResponse which has .data
    result = supabase_admin.table("clients").insert({
        "company_name": validated_data.company_name,
        "business_type": validated_data.business_type,
        "email": validated_data.email,
        "phone": validated_data.phone,
        "plan_type": validated_data.plan_type,
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


@router.post("/login", response_model=LoginResponse)
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


@router.post("/dashboard/signup", response_model=SignupResponse, status_code=201)
async def dashboard_signup(request: Request):
    """
    Called by Frontend Dashboard after Supabase Auth signup.
    Creates a client record and generates API keys.
    """
    try:
        raw_data = await request.json()
        validated_data = DashboardSignupRequest(**raw_data)
    except ValidationError as e:
        return CorsResponse({"error": "Validation Error", "details": e.errors()}, status=422)
    except Exception:
        return CorsResponse({"error": "Invalid JSON"}, status=400)

    email = validated_data.email
    company_name = validated_data.company_name
    
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


@router.get("/client/profile", response_model=ClientProfile)
async def get_client_profile(request: Request):
    """
    Get client profile (Authentication: API Key OR Bearer Token)
    """
    client_id = None
    show_sensitive = False # Only show API key if authenticated via Bearer Token (Bootstrap)

    # 1. Try Bearer Token (Supabase Auth)
    auth_header = request.headers.get("Authorization")
    if auth_header and auth_header.startswith("Bearer "):
        token = auth_header.split(" ")[1]
        try:
            user_res = supabase.auth.get_user(token)
            if user_res and user_res.user and user_res.user.email:
                # Fetch client by email
                res = supabase_admin.table("clients").select("id").eq("email", user_res.user.email).execute()
                if res.data:
                    client_id = res.data[0]["id"]
                    show_sensitive = True
        except Exception as e:
            print(f"Bearer auth failed: {e}")

    # 2. Try API Key (if no valid Bearer token)
    if not client_id:
        api_key = request.headers.get("X-API-Key")
        if api_key:
             res = supabase_admin.table("clients").select("id").eq("api_key", api_key).execute()
             if res.data:
                 client_id = res.data[0]["id"]

    if not client_id:
        return CorsResponse({"error": "Unauthorized"}, status=401)
    
    # Fetch Profile
    result = supabase_admin.table("clients") \
        .select("id, company_name, email, plan_type, subscription_status, api_key") \
        .eq("id", client_id) \
        .execute()
    
    if not result.data:
        return CorsResponse({"error": "Client not found"}, status=404)
    
    profile = result.data[0]
    
    # Security: Remove API key if not authorized via Bearer Token
    if not show_sensitive:
        profile.pop("api_key", None)
        
    return CorsResponse(profile)


@router.post("/client/regenerate-key", response_model=SignupResponse)
async def regenerate_key(request: Request):
    """
    Regenerate API Key and Secret (Authentication: API Key OR Bearer Token)
    """
    client_id = None
    
    # 1. Try Bearer Token (Supabase Auth) - Preferred for regeneration
    auth_header = request.headers.get("Authorization")
    if auth_header and auth_header.startswith("Bearer "):
        token = auth_header.split(" ")[1]
        try:
            user_res = supabase.auth.get_user(token)
            if user_res and user_res.user and user_res.user.email:
                res = supabase_admin.table("clients").select("id").eq("email", user_res.user.email).execute()
                if res.data:
                    client_id = res.data[0]["id"]
        except Exception:
            pass

    # 2. Try API Key
    if not client_id:
        api_key = request.headers.get("X-API-Key")
        if api_key:
             res = supabase_admin.table("clients").select("id").eq("api_key", api_key).execute()
             if res.data:
                 client_id = res.data[0]["id"]

    if not client_id:
        return CorsResponse({"error": "Unauthorized"}, status=401)

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


@router.get("/client/recent-logs")
@require_api_key
async def get_recent_logs(request: Request):
    """
    Get 10 most recent API calls for dashboard
    """
    client_id = request.state.client_id
    
    result = supabase_admin.table("api_logs") \
        .select("*") \
        .eq("client_id", client_id) \
        .order("timestamp", desc=True) \
        .limit(10) \
        .execute()
        
    return CorsResponse({
        "logs": result.data
    })


@router.get("/client/usage-history")
@require_api_key
async def get_usage_history(request: Request):
    """
    Get daily usage history for the last 30 days
    """
    client_id = request.state.client_id
    
    # In a real production app with millions of logs, you'd use a materialized view 
    # or a dedicated analytics service (Tinybird, ClickHouse, or just a heavy SQL query).
    # For this MVP/SaaS starter, we'll fetch the last 30 days of data and aggregate in Python
    # OR if the volume is low, just fetch all logs for the last 30 days.
    
    
    from datetime import datetime, timedelta, timezone
    
    # Calculate range: Today + 29 previous days = 30 days total
    # Normalize to midnight to avoid time-of-day offsets
    now = datetime.now(timezone.utc)
    today = now.replace(hour=0, minute=0, second=0, microsecond=0)
    
    # start_date is inclusive
    start_date = today - timedelta(days=29) 
    start_date_str = start_date.strftime("%Y-%m-%d")
    
    # Fetch logs
    # Optimization: Only select timestamp to save bandwidth
    result = supabase_admin.table("api_logs") \
        .select("timestamp") \
        .eq("client_id", client_id) \
        .gte("timestamp", start_date_str) \
        .execute()
        
    # Aggregate by day
    daily_counts = {}
    
    # Initialize all 30 days with 0 (from start_date to today)
    for i in range(30):
        d = start_date + timedelta(days=i)
        day_key = d.strftime("%Y-%m-%d") # Key format
        # We'll return a format suitable for the chart (e.g., "Oct 01")
        # But let's keep the key standard first
        daily_counts[day_key] = 0
        
    # Count actual logs
    for log in result.data:
        # log["timestamp"] is ISO string, e.g., "2023-10-27T10:00:00+00:00"
        # Extract YYYY-MM-DD
        ts = log["timestamp"]
        if ts:
            day_key = ts.split("T")[0]
            if day_key in daily_counts:
                daily_counts[day_key] += 1
            # If log is from today but timezone diff makes it "tomorrow" in some cases, just ignore or handle safely
            
    # Convert to list for frontend
    history = []
    for date_str, count in daily_counts.items():
        # Format date for display, e.g., "Oct 01"
        dt = datetime.strptime(date_str, "%Y-%m-%d")
        display_date = dt.strftime("%b %d")
        
        history.append({
            "date": display_date,
            "full_date": date_str,
            "count": count
        })
        
    # Sort by date
    history.sort(key=lambda x: x["full_date"])
    
    return CorsResponse({
        "history": history
    })
