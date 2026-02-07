from pydantic import BaseModel, Field
from typing import Optional, List, Any, Dict

# --- Shared ---
class GenericResponse(BaseModel):
    success: bool
    message: Optional[str] = None

class ErrorResponse(BaseModel):
    error: str
    details: Optional[List[Dict[str, Any]]] = None

# --- Auth ---
class ClientProfile(BaseModel):
    id: str
    company_name: str
    email: str
    plan_type: str
    subscription_status: str
    api_key: Optional[str] = None  # Only shown if auth via Bearer

class SignupResponse(BaseModel):
    success: bool
    client_id: str
    api_key: str
    api_secret: str
    message: str

class LoginRequest(BaseModel):
    email: str
    api_secret: str

class LoginResponse(BaseModel):
    success: bool
    client: ClientProfile

# --- Products ---
class ProductBase(BaseModel):
    product_name: str
    product_brand: Optional[str] = None
    active_ingredient: Optional[str] = None
    category: Optional[str] = None
    pack_sizes: Optional[str] = None
    price_min: Optional[float] = None
    price_max: Optional[float] = None
    product_url: Optional[str] = None
    stock_status: str = "in_stock"

class ProductCreate(ProductBase):
    pass

class ProductUpdate(BaseModel):
    product_name: Optional[str] = None
    product_brand: Optional[str] = None
    active_ingredient: Optional[str] = None
    category: Optional[str] = None
    pack_sizes: Optional[str] = None
    price_min: Optional[float] = None
    price_max: Optional[float] = None
    product_url: Optional[str] = None
    stock_status: Optional[str] = None

class ProductResponse(ProductBase):
    id: str
    client_id: str
    currency: str
    is_active: bool
    created_at: str
    updated_at: str

class ProductListResponse(BaseModel):
    products: List[ProductResponse]
    total: int

# --- Diseases ---
class Disease(BaseModel):
    id: str
    disease_id: str
    disease_name: str
    crop: str
    severity_default: Optional[str] = None
    
class DiseaseListResponse(BaseModel):
    diseases: List[Disease]
    total: int

class DiseaseDetailResponse(Disease):
    key_symptoms: Optional[str] = None
    affected_parts: Optional[str] = None
    treatment_organic_generic: Optional[str] = None
    treatment_chemical_generic: Optional[str] = None
    treatment_biological_generic: Optional[str] = None
    preventive_measures: Optional[str] = None
    mapped_product: Optional[ProductResponse] = None

# --- Mappings ---
class MappingCreate(BaseModel):
    disease_id: str
    product_id: str
    treatment_type: str = "organic"
    priority: int = 1

class MappingResponse(BaseModel):
    id: str
    client_id: str
    disease_id: str
    product_id: str
    treatment_type: str
    priority: int
    is_active: bool
    created_at: str

class MappingListResponse(BaseModel):
    mappings: List[MappingResponse]
    total: int

# --- Detection ---
class DetectionRequest(BaseModel):
    crop: str
    disease: str
    confidence: float
    isHealthy: bool = False

class Advisory(BaseModel):
    symptoms: Optional[str]
    affected_parts: Optional[str]
    organic_treatment: Optional[str]
    chemical_treatment: Optional[str]
    biological_treatment: Optional[str]
    dosage: Optional[str]
    application_method: Optional[str]
    prevention: Optional[str]
    precautions: Optional[str]
    faq: Optional[List[str]]

class DetectionResponse(BaseModel):
    status: str
    disease_id: Optional[str] = None
    disease_name: Optional[str] = None
    crop: Optional[str] = None
    severity: Optional[str] = None
    confidence: Optional[float] = None
    advisory: Optional[Advisory] = None
    product: Optional[Dict[str, Any]] = None

# --- Admin ---
class BillingStats(BaseModel):
    plan: str
    calls_this_month: int
    estimated_cost: float
    currency: str

class KeyStats(BaseModel):
    id: str
    provider: str
    status: str
    created_at: str
    usage_count: int

class KeyListResponse(BaseModel):
    keys: List[KeyStats]

class KeyCreate(BaseModel):
    api_key: str

class KeyRotate(BaseModel):
    id: str
