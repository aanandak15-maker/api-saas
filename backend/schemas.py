from pydantic import BaseModel, Field
from typing import Optional

class SignupRequest(BaseModel):
    company_name: Optional[str] = None
    email: str
    phone: Optional[str] = None
    plan_type: str = "basic"
    business_type: Optional[str] = None

class DashboardSignupRequest(BaseModel):
    email: str
    company_name: Optional[str] = None

# We can add more schemas here as needed
