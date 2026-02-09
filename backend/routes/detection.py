from fastapi import APIRouter as Router, Request, Response
from services.supabase_client import supabase_admin
from services.storage_service import upload_detection_image
from services.detection_service import detect_disease_from_image
from middleware.auth_middleware import require_api_key, CorsResponse
from api_schemas import DetectionResponse, GenericResponse
import uuid

router = Router()

@router.post("/detect", response_model=GenericResponse)
@require_api_key
async def detect_disease(request: Request):
    """
    Upload image, detect disease (GEMINI), store record
    """
    try:
        client_id = request.state.client_id

        # Check Plan Limits
        from services.plan_service import check_plan_limits
        plan_check = check_plan_limits(client_id, "detect")
        if not plan_check["allowed"]:
             return CorsResponse({"error": plan_check["error"]}, status=403)
         
        # Get uploaded file
        form = await request.form()
        image_file = form.get("image")
        
        if not image_file:
            return CorsResponse({"error": "No image uploaded"}, status=400)
        
        # Generate unique filename
        filename = getattr(image_file, "filename", "unnamed.jpg")
        file_extension = filename.split(".")[-1] if "." in filename else "jpg"
        unique_filename = f"{uuid.uuid4()}.{file_extension}"
        
        # Upload to Supabase Storage
        try:
            image_url = await upload_detection_image(image_file, unique_filename)
            if not image_url:
                 raise ValueError("Failed to upload image")
        except ValueError as ve:
             return CorsResponse({"error": str(ve)}, status=400)
        except Exception as e:
             return CorsResponse({"error": "Encryption/Storage Error"}, status=500)
        
        # 1. Run Gemini Detection
        await image_file.seek(0)
        expected_crop = form.get("crop_type")
        ai_result = await detect_disease_from_image(image_file, expected_crop=expected_crop)
        
        # Initialize Response Builder
        from services.response_builder import ResponseBuilder, get_client_config
        config = get_client_config(client_id)
        builder = ResponseBuilder(client_id, config)

        # 2. Match AI result to Database
        from utils.disease_matcher import match_disease_from_db
        
        disease = None
        confidence = ai_result.get("confidence", 0.0)
        severity = ai_result.get("severity")
        
        # Common Response Data (Base)
        response_base = {
            "success": True,
            "image_url": image_url,
            "result": {
                "confidence": confidence,
                "severity": severity,
                "crop": ai_result.get("crop")
            }
        }

        # Check if healthy
        if ai_result.get("isHealthy"):
             response_base["result"]["status"] = "healthy"
             # Apply Branding/Layers to Healthy Response
             # For healthy, we might still want branding, FAQ, prevention (general)
             # But ResponseBuilder.build expects a disease_record.
             # We should probably extend ResponseBuilder or just manually add branding here for now.
             
             if config.get("layer_branding", False):
                branding = {
                    "enabled": True,
                    "custom_text": config.get("branding_custom_text"),
                    "primary_color": config.get("branding_primary_color")
                }
                response_base["branding"] = {k: v for k, v in branding.items() if v}
                
             return CorsResponse(response_base)

        # Try to find disease
        disease_name = ai_result.get("disease") or ai_result.get("disease_name") # Handle both schemas
        crop_name = ai_result.get("crop")
        
        disease_record = match_disease_from_db(disease_name, crop_name)
        
        if not disease_record:
             # Log unknown disease case? For now return unknown
             response_base["result"]["status"] = "unknown"
             response_base["result"]["detected_name"] = disease_name
             
             if config.get("layer_branding", False):
                branding = {
                    "enabled": True,
                    "custom_text": config.get("branding_custom_text"),
                    "primary_color": config.get("branding_primary_color")
                }
                response_base["branding"] = {k: v for k, v in branding.items() if v}

             return CorsResponse(response_base)

        # 3. Store valid detection
        record = supabase_admin.table("detection_images").insert({
            "client_id": client_id,
            "farmer_id": form.get("farmer_id"),
            "image_url": image_url,
            "detected_disease_id": disease_record["id"],
            "confidence_score": confidence,
            "crop": crop_name or disease_record["crop"],
            "location_lat": form.get("location_lat"),
            "location_lng": form.get("location_lng")
        }).execute()
        
        # 4. Fetch Products (Only for Diseased)
        
        # Determine which product types to fetch
        enabled_types = []
        if config.get("layer_products_organic", True):
            enabled_types.append("organic")
        if config.get("layer_products_chemical", False):
            enabled_types.append("chemical")
        if config.get("layer_products_biological", False):
            enabled_types.append("biological")
            
        products_map = {"organic": [], "chemical": [], "biological": []}
        
        if enabled_types:
            try:
                # Fetch mappings for enabled types
                mappings = supabase_admin.table("disease_product_mappings") \
                    .select("product_id, treatment_type") \
                    .eq("client_id", client_id) \
                    .eq("disease_id", disease_record["id"]) \
                    .in_("treatment_type", enabled_types) \
                    .eq("is_active", True) \
                    .execute()
                    
                if mappings.data:
                    # Get Plan Limits for Recommendations
                    # Fetch client plan first
                    client_res = supabase_admin.table("clients").select("plan_type").eq("id", client_id).execute()
                    plan_type = client_res.data[0]["plan_type"] if client_res.data else "trial"
                    
                    from plan_config import get_plan_config
                    plan_config = get_plan_config(plan_type)
                    max_recs = plan_config.get("max_recs_per_disease", 1)
                    
                    # Group product IDs by type
                    type_product_ids = {t: [] for t in enabled_types}
                    all_ids = []
                    
                    # Collect all IDs in order (mappings are likely ordered by priority if we added order, but here DB order)
                    # We should prioritize based on type? Or just take first N?
                    # Let's take first N from the mappings result (assuming DB returns in some stable order)
                    
                    mapped_items = mappings.data
                    
                    # Apply Limit if not Unlimited (-1)
                    if max_recs != -1:
                        mapped_items = mapped_items[:max_recs]
                        
                    for m in mapped_items:
                        t = m["treatment_type"]
                        if t in type_product_ids:
                            type_product_ids[t].append(m["product_id"])
                            all_ids.append(m["product_id"])
                    
                    if all_ids:
                        # Fetch product details
                        products_res = supabase_admin.table("client_products") \
                            .select("id, product_name, product_url, product_brand") \
                            .in_("id", all_ids) \
                            .execute()
                            
                        # Map back to types
                        id_to_product = {p["id"]: p for p in products_res.data}
                        for t, ids in type_product_ids.items():
                            for pid in ids:
                                if pid in id_to_product:
                                    products_map[t].append(id_to_product[pid])
                                    
            except Exception as e:
                print(f"Product fetch failed: {e}")

        # Build Response for Diseased
        response_data = builder.build(
            disease_record=disease_record,
            confidence=confidence,
            severity=severity,
            image_url=image_url,
            detection_id=record.data[0]["id"],
            products=products_map
        )

        return CorsResponse(response_data)

        return CorsResponse(response_data)

    except ValueError as ve:
        # Catch known validation errors (e.g. invalid image, Gemini 400)
        print(f"Validation Error: {ve}")
        return CorsResponse({"error": str(ve)}, status=400)
        
    except Exception as e:
        import traceback
        traceback.print_exc()
        return CorsResponse({"error": f"Internal Error: {str(e)}"}, status=500)


@router.get("/detections", response_model=GenericResponse)
@require_api_key
async def get_detection_history(request: Request):
    """Get detection history for a client"""
    client_id = request.state.client_id
    
    try:
        # Note: Supabase-py join syntax might be slightly different depending on version, 
        # but 'table(col, ...)' is standard PostgREST.
        # select(*, diseases (disease_id, ...))
        result = supabase_admin.table("detection_images") \
            .select("*, diseases (disease_id, disease_name, crop)") \
            .eq("client_id", client_id) \
            .order("detection_timestamp", desc=True) \
            .limit(100) \
            .execute()
        
        return CorsResponse({
            "detections": result.data,
            "total": len(result.data)
        })
    except Exception as e:
        return CorsResponse({"error": str(e)}, status=500)


@router.post("/detect-result", response_model=DetectionResponse)
@require_api_key
async def process_detection_result(request: Request):
    """
    Process detection result from Gemini Vision (or any external ML).
    Returns disease knowledge + client's mapped products.
    
    Request body:
    {
        "crop": "Tomato",
        "disease": "Early Blight",  # Disease name from Gemini
        "confidence": 0.92,         # Optional
        "isHealthy": false          # Optional, if true returns healthy response
    }
    """
    client_id = request.state.client_id
    data = await request.json()
    
    crop = data.get("crop")
    disease_name = data.get("disease")
    confidence = data.get("confidence", 0)
    is_healthy = data.get("isHealthy", False)
    
    # Handle healthy plant case
    if is_healthy:
        return CorsResponse({
            "status": "healthy",
            "crop": crop,
            "advice": "No action required. Your plant appears healthy.",
            "product": None
        })
    
    if not disease_name:
        return CorsResponse({"error": "Disease name is required when plant is not healthy"}, status=400)
    
    # Handle low confidence case
    if confidence and confidence < 0.6:
        return CorsResponse({
            "status": "uncertain",
            "crop": crop,
            "detected_disease": disease_name,
            "confidence": confidence,
            "advice": "Detection confidence is low. Please retake the photo with better lighting and focus on the affected area.",
            "product": None
        })
    
    # Disease matching logic:
    # 1. If crop provided: search crop + disease (primary)
    # 2. Fallback: search disease only
    disease_result = None
    
    if crop:
        # Primary: crop + disease_name match
        disease_result = supabase_admin.table("diseases") \
            .select("*") \
            .eq("crop", crop) \
            .ilike("disease_name", f"%{disease_name}%") \
            .execute()
        
        # If not found, try crop + synonyms
        if not disease_result.data:
            disease_result = supabase_admin.table("diseases") \
                .select("*") \
                .eq("crop", crop) \
                .ilike("synonyms", f"%{disease_name}%") \
                .execute()
    
    # Fallback: disease_name only (if crop missing or no match found)
    if not disease_result or not disease_result.data:
        disease_result = supabase_admin.table("diseases") \
            .select("*") \
            .ilike("disease_name", f"%{disease_name}%") \
            .execute()
    
    if not disease_result.data:
        return CorsResponse({
            "status": "unknown",
            "error": "Disease not found in database",
            "crop": crop,
            "detected_disease": disease_name,
            "confidence": confidence,
            "advice": "This disease is not yet in our database. Please consult a local agricultural expert.",
            "product": None
        }, status=404)
    
    disease = disease_result.data[0]
    
    # Fetch client's mapped products for this disease
    mappings_result = supabase_admin.table("disease_product_mappings") \
        .select("*") \
        .eq("client_id", client_id) \
        .eq("disease_id", disease["id"]) \
        .eq("is_active", True) \
        .order("priority") \
        .limit(1) \
        .execute()
    
    # Get product details if mapping exists
    product_data = None
    if mappings_result.data:
        mapping = mappings_result.data[0]
        product_result = supabase_admin.table("client_products") \
            .select("*") \
            .eq("id", mapping["product_id"]) \
            .eq("is_active", True) \
            .execute()
        
        if product_result.data:
            product = product_result.data[0]
            product_data = {
                "name": product["product_name"],
                "brand": product["product_brand"],
                "url": product["product_url"],
                "price_range": f"₹{product.get('price_min', 0)}-{product.get('price_max', 0)}",
                "stock_status": product["stock_status"]
            }
    
    # Build response matching user's spec
    response_data = {
        "status": "diseased",
        "disease_id": disease["disease_id"],
        "disease_name": disease["disease_name"],
        "crop": disease["crop"],
        "severity": disease["severity_default"],
        "confidence": confidence,
        "advisory": {
            "symptoms": disease["key_symptoms"],
            "affected_parts": disease["affected_parts"],
            "organic_treatment": disease["treatment_organic_generic"],
            "chemical_treatment": disease["treatment_chemical_generic"],
            "biological_treatment": disease["treatment_biological_generic"],
            "dosage": disease["dosage_generic"],
            "application_method": disease["application_method"],
            "spray_interval_days": disease["spray_interval_days"],
            "prevention": disease["preventive_measures"],
            "precautions": disease["precautions"],
            "faq": disease["faq"]
        },
        "product": product_data
    }
    
    # Log API call
    try:
        supabase_admin.table("api_logs").insert({
            "client_id": client_id,
            "disease_id": disease["id"],
            "endpoint": "/detect-result",
            "method": "POST",
            "status_code": 200
        }).execute()
    except Exception as e:
        print(f"Logging failed: {e}")
    
    return CorsResponse(response_data)
