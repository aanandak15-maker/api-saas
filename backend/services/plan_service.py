from services.supabase_client import supabase_admin
from datetime import datetime, timezone

def check_plan_limits(client_id: str, feature: str):
    """
    Check if client is allowed to perform action based on plan limits.
    Returns: {"allowed": bool, "error": str | None}
    """
    try:
        # 1. Get Client Plan
        client = supabase_admin.table("clients").select("plan_type").eq("id", client_id).execute()
        if not client.data:
            return {"allowed": False, "error": "Client not found"}
        
        plan_name = client.data[0]["plan_type"]
        
        # 2. Get Plan Config
        from plan_config import get_plan_config
        limits = get_plan_config(plan_name)
            
        # 3. Check Specific Feature
        if feature == "add_product":
            max_p = limits.get("max_products", 1)
            if max_p == -1: # Unlimited
                return {"allowed": True}
                
            # Count existing active products
            # Note: supabase-py count syntax varies, assume select header count works
            res = supabase_admin.table("client_products") \
                .select("id", count="exact") \
                .eq("client_id", client_id) \
                .eq("is_active", True) \
                .execute()
                
            current_count = res.count if res.count is not None else len(res.data)
            
            if current_count >= max_p:
                return {
                    "allowed": False, 
                    "error": f"Plan limit reached. Your {plan_name.title()} plan allows {max_p} products. Please upgrade to add more."
                }

        elif feature == "detect":
            max_s = limits.get("max_scans_per_month", 1000)
            if max_s == -1: # Unlimited
                return {"allowed": True}
            
            # Count scans this month
            now = datetime.now(timezone.utc)
            start_of_month = now.replace(day=1, hour=0, minute=0, second=0, microsecond=0).strftime("%Y-%m-%d")
            
            res = supabase_admin.table("api_logs") \
                .select("id", count="exact") \
                .eq("client_id", client_id) \
                .gte("timestamp", start_of_month) \
                .execute()
                
            current_count = res.count if res.count is not None else len(res.data)
            
            if current_count >= max_s:
                 return {
                    "allowed": False, 
                    "error": f"Monthly scan limit reached ({max_s}). Please upgrade your plan."
                }
                
        return {"allowed": True}
        
    except Exception as e:
        print(f"Plan check error: {e}")
        # Fail safe: Allow if check errors (or deny? Deny is safer for SaaS)
        return {"allowed": False, "error": "Could not verify plan limits."}
