from typing import Dict, Any, List, Optional
from services.supabase_client import supabase_admin

class ResponseBuilder:
    def __init__(self, client_id: str, config: Dict[str, Any] = None):
        self.client_id = client_id
        # Reload config if not provided
        if config is None:
            self.config = get_client_config(client_id)
        else:
            self.config = config
        
        print(f"DEBUG: ResponseBuilder init for client {client_id}")
        print(f"DEBUG: Config used: {self.config}")
    def build(self, disease_record: Dict[str, Any], confidence: float, severity: Optional[str], image_url: str, detection_id: str, products: Dict[str, List[Any]]) -> Dict[str, Any]:
        """
        Constructs the final API response based on enabled layers.
        """
        response = {
            "success": True,
            "detection_id": detection_id,
            "image_url": image_url,
            # Layer 1: Core Detection (Always On)
            "detected_disease": {
                "disease_id": disease_record["disease_id"],
                "disease_name": disease_record["disease_name"],
                "crop": disease_record["crop"],
                "confidence": confidence,
                "severity": severity
            }
        }

        # Layer 2: Scientific Info
        if self.config.get("layer_scientific", False):
            response["scientific_info"] = {
                "scientific_name": disease_record.get("scientific_name"),
                "category": disease_record.get("category"), # e.g. Fungal
                "synonyms": disease_record.get("synonyms")
            }

        # Structure Advisory
        advisory = {}
        has_advisory = False

        # Layer 3: Symptoms
        if self.config.get("layer_symptoms", True):
            advisory["symptoms"] = disease_record.get("key_symptoms")
            advisory["affected_parts"] = disease_record.get("affected_parts")
            advisory["trigger"] = disease_record.get("environmental_trigger")
            advisory["season"] = disease_record.get("season")
            has_advisory = True

        # Layer 4: Treatment
        treatment = {}
        if self.config.get("layer_treatment_organic", True):
            treatment["organic"] = disease_record.get("treatment_organic_generic")
        
        if self.config.get("layer_treatment_chemical", False):
            treatment["chemical"] = disease_record.get("treatment_chemical_generic")
            
        if self.config.get("layer_treatment_biological", False):
            treatment["biological"] = disease_record.get("treatment_biological_generic")

        if treatment:
            # Add dosage/application if any treatment enabled
            treatment["dosage"] = disease_record.get("dosage_generic")
            treatment["application_method"] = disease_record.get("application_method")
            treatment["spray_interval_days"] = disease_record.get("spray_interval_days")
            advisory["treatment"] = treatment
            has_advisory = True

        # Layer 5: Prevention / IPM
        if self.config.get("layer_prevention", True):
            advisory["prevention"] = disease_record.get("preventive_measures")
            advisory["precautions"] = disease_record.get("precautions")
            has_advisory = True

        # Layer 6: FAQ
        if self.config.get("layer_faq", False):
            advisory["faq"] = disease_record.get("faq")
            has_advisory = True

        # Layer 7: Products
        # Products are passed in, already filtered by logic in caller? 
        # Or we filters here? 
        # Caller should pass dict: {'organic': [], 'chemical': []}
        
        product_section = {}
        if self.config.get("layer_products_organic", True) and products.get("organic"):
            product_section["organic_products"] = products["organic"]
            
        if self.config.get("layer_products_chemical", False) and products.get("chemical"):
            product_section["chemical_products"] = products["chemical"]
            
        if self.config.get("layer_products_biological", False) and products.get("biological"):
            product_section["biological_products"] = products["biological"]

        if product_section:
            advisory.update(product_section)
            has_advisory = True

        if has_advisory:
            response["advisory"] = advisory
            response["advisory_url"] = f"/disease/{disease_record['disease_id']}"

        # Layer 6: Branding
        # Defensive check: branding columns might not exist yet
        if self.config.get("layer_branding", False):
            branding = {
                "enabled": True,
                "custom_text": self.config.get("branding_custom_text"),
                "primary_color": self.config.get("branding_primary_color")
            }
            # Remove None values
            response["branding"] = {k: v for k, v in branding.items() if v}

        return response

def get_client_config(client_id: str) -> Dict[str, Any]:
    """Fetch config from DB or return defaults"""
    try:
        res = supabase_admin.table("client_response_config").select("*").eq("client_id", client_id).execute()
        if res.data:
            return res.data[0]
    except Exception as e:
        print(f"Config fetch failed: {e}")
    
    # Defaults
    return {
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
