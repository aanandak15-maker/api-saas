# Plan Limits Configuration
# This replaces the database table for simplicity and reliability

PLAN_LIMITS = {
    "germination": {
        "max_products": -1, # Unlimited
        "max_recs_per_disease": 1,
        "max_scans_per_month": 1000,
        "advisory_level": "essential",
        "branding_enabled": False,
        "analytics_level": "basic",
        "priority_queue": False,
        "display_labels": {
            "usage": "Essential Usage Capacity",
            "analytics": "Basic Insights",
            "support": "Email Support",
            "branding": "Platform Branding",
            "advisory": "Essential Advisory"
        }
    },
    "cultivation": {
        "max_products": -1, # Unlimited
        "max_recs_per_disease": 3,
        "max_scans_per_month": 5000,
        "advisory_level": "full",
        "branding_enabled": True,
        "analytics_level": "full",
        "priority_queue": True,
        "display_labels": {
            "usage": "Business-Scale Usage",
            "analytics": "Advanced Insights",
            "support": "Priority Support",
            "branding": "Brand Logo Support",
            "advisory": "Full Advisory Layers"
        }
    },
    "harvest": {
        "max_products": -1, # Unlimited
        "max_recs_per_disease": -1, # Unlimited
        "max_scans_per_month": 20000,
        "advisory_level": "complete",
        "branding_enabled": True,
        "analytics_level": "advanced",
        "priority_queue": True,
        "display_labels": {
            "usage": "High-Volume Usage",
            "analytics": "Business Intelligence",
            "support": "Dedicated Support",
            "branding": "Branding Personalization",
            "advisory": "Complete Intelligence Layers"
        }
    },
    "enterprise": {
        "max_products": -1,
        "max_recs_per_disease": -1, # Unlimited
        "max_scans_per_month": -1, # Unlimited
        "advisory_level": "custom",
        "branding_enabled": True,
        "analytics_level": "custom",
        "priority_queue": True,
        "display_labels": {
            "usage": "Unlimited / Custom Usage",
            "analytics": "Enterprise Reporting",
            "support": "Account Manager",
            "branding": "Full White-Label",
            "advisory": "Custom Knowledge Engine"
        }
    },
    # Fallback/Trial
    "trial": {
        "max_products": -1,
        "max_recs_per_disease": 1,
        "max_scans_per_month": 100,
        "advisory_level": "essential",
        "branding_enabled": False,
        "analytics_level": "basic",
        "priority_queue": False,
        "display_labels": {
            "usage": "Trial Capacity",
            "analytics": "Basic Insights",
            "support": "Community Support",
            "branding": "Platform Branding",
            "advisory": "Essential Advisory"
        }
    }
}

def get_plan_config(plan_name: str):
    return PLAN_LIMITS.get(plan_name.lower(), PLAN_LIMITS["trial"])
