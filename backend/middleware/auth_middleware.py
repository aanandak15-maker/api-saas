from functools import wraps
from antigravity import Request, Response
from services.supabase_client import supabase_admin

import os

# CORS Headers to include in ALL responses
ALLOWED_ORIGIN = os.environ.get("ALLOWED_ORIGIN", "*")

CORS_HEADERS = {
    "Access-Control-Allow-Origin": ALLOWED_ORIGIN,
    "Access-Control-Allow-Methods": "GET, POST, PUT, DELETE, OPTIONS",
    "Access-Control-Allow-Headers": "Content-Type, X-API-Key, Authorization",
    "Access-Control-Allow-Credentials": "true"
}

class CorsResponse(Response):
    """Response with CORS headers included"""
    def __init__(self, content, status=200):
        super().__init__(content, status)
        self.headers.update(CORS_HEADERS)

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
                .select("id, company_name, subscription_status, is_active") \
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
        # Limit: 1000 calls / day
        try:
            from datetime import datetime, timezone
            today_str = datetime.now(timezone.utc).strftime("%Y-%m-%d")
            
            # Count calls today
            # Supabase API logs table
            count_res = supabase_admin.table("api_logs") \
                .select("*", count="exact") \
                .eq("client_id", client["id"]) \
                .gte("timestamp", today_str) \
                .execute()
            
            calls_today = count_res.count if count_res.count is not None else 0
            
            if calls_today >= 1000:
                print(f"Rate limit exceeded for client {client['id']}")
                return CorsResponse({
                    "error": "Daily rate limit exceeded (1000 calls). Upgrade your plan."
                }, status=429)

        except Exception as e:
            # Don't block request if rate limit check fails (fail open)
            print(f"Rate limit check failed: {e}")

        
        # Attach client_id to request state
        request.state.client_id = client["id"]
        
        return await func(request, *args, **kwargs)
    
    return wrapper

