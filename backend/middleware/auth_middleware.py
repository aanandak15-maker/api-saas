from functools import wraps
from fastapi import Request, Response
from fastapi.responses import JSONResponse
from services.supabase_client import supabase_admin

import os

# ... (lines 6-16 omitted)

class CorsResponse(JSONResponse):
    """Response with CORS headers included"""
    def __init__(self, content, status=200):
        # JSONResponse expects status_code, not status
        super().__init__(content=content, status_code=status)
        # self.headers.update(CORS_HEADERS) # Handled by CORSMiddleware

def require_api_key(func):
    """Middleware to validate API key"""
    @wraps(func)
    async def wrapper(request: Request, *args, **kwargs):
        api_key = request.headers.get("X-API-Key")
        
        if not api_key:
            return CorsResponse({
                "error": "Missing API key. Include X-API-Key header."
            }, status=401)
        
        if not supabase_admin:
             return CorsResponse({"error": "Server configuration error (Supabase)"}, status=500)

        try:
            # Verify API key
            # Don't use .single() as it throws error on 0 rows
            result = supabase_admin.table("clients") \
                .select("id, company_name, subscription_status, is_active, plan_type") \
                .eq("api_key", api_key) \
                .execute()
            
            if not result.data or len(result.data) == 0:
                print(f"Auth failed: Key {api_key} not found")
                return CorsResponse({"error": "Invalid API key"}, status=401)
                
            client = result.data[0]
        except Exception as e:
            print(f"Auth Middleware DB Error: {e}")
            import traceback
            traceback.print_exc()
            return CorsResponse({"error": f"Auth DB Error: {str(e)}"}, status=500)
        except Exception as e:
            print(f"Auth Middleware DB Error: {e}")
            return CorsResponse({"error": f"Auth DB Error: {str(e)}"}, status=500)
        
        # Check if subscription is active
        if client["subscription_status"] != "active" and client["subscription_status"] != "trial":
            return CorsResponse({
                "error": "Subscription inactive. Please renew."
            }, status=403)
        
        if not client["is_active"]:
            return CorsResponse({
                "error": "Account suspended. Contact support."
            }, status=403)
        
        # --- RATE LIMITING (Step 4) ---
        # Limit depends on plan
        try:
            from datetime import datetime, timezone
            from plan_config import get_plan_config
            
            # Fetch Plan Config
            plan_type = client.get("plan_type", "trial")
            plan_cfg = get_plan_config(plan_type)
            
            # Calculate daily limit (Monthly / 30)
            monthly_limit = plan_cfg.get("max_scans_per_month", 1000)
            
            if monthly_limit == -1:
                daily_limit = -1 # Unlimited
            else:
                daily_limit = max(10, int(monthly_limit / 30)) # at least 10/day even for small plans

            # ONLY enforce rate limit for /detect (actual scans)
            # Dashboard metadata calls should be free
            if daily_limit != -1 and request.url.path == "/detect":
                today_str = datetime.now(timezone.utc).strftime("%Y-%m-%d")
                
                # Count calls today
                # Supabase API logs table
                count_res = supabase_admin.table("api_logs") \
                    .select("*", count="exact") \
                    .eq("client_id", client["id"]) \
                    .eq("endpoint", "/detect") \
                    .gte("timestamp", today_str) \
                    .execute()
                
                calls_today = count_res.count if count_res.count is not None else 0
                
                if calls_today >= daily_limit:
                    print(f"Rate limit exceeded for client {client['id']} on /detect")
                    return CorsResponse({
                        "error": f"Daily rate limit exceeded ({daily_limit} calls). Upgrade your plan."
                    }, status=429)

        except Exception as e:
            # Fail closed - deny request if rate limit cannot be verified
            print(f"Rate limit check failed: {e}")
            return CorsResponse({"error": "Service temporarily unavailable (Rate Limit Check Failed)"}, status=503)

        
        # Attach client_id to request state
        request.state.client_id = client["id"]
        
        try:
            # Execute Request
            response = await func(request, *args, **kwargs)
        except Exception as e:
            import traceback
            print(f"Middleware Caught Exception: {e}")
            traceback.print_exc()
            return CorsResponse({
                "error": "Internal Server Error (Caught by Middleware)",
                "details": str(e),
                "trace": traceback.format_exc()
            }, status=500)
        
        # --- LOGGING (Step 5) ---
        # Record the call for billing and analytics
        try:
             # Extract status code safely
            status_code = getattr(response, "status_code", 200)
            
            # Use execute() and check result
            log_entry = {
                "client_id": client["id"],
                "endpoint": request.url.path,
                "method": request.method,
                "status_code": status_code,
                "user_agent": request.headers.get("user-agent"),
            }
            supabase_admin.table("api_logs").insert(log_entry).execute()
        except Exception as e:
            print(f"Logging Failed: {e}")
            
        return response
    
    return wrapper


def require_admin_key(func):
    """Middleware to validate Admin API key"""
    @wraps(func)
    async def wrapper(request: Request, *args, **kwargs):
        admin_key = request.headers.get("X-Admin-Key")
        
        # In production, store this in env var
        expected_key = os.environ.get("ADMIN_API_KEY")
        
        if not expected_key:
             return CorsResponse({
                "error": "Admin access disabled (key not configured)"
            }, status=503)
        
        if not admin_key or admin_key != expected_key:
            return CorsResponse({
                "error": "Admin access required."
            }, status=401)
            
        return await func(request, *args, **kwargs)
    
    return wrapper

