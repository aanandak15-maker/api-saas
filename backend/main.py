from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from routes import auth, diseases, products, detection, mappings

app = FastAPI(title="Disease Intelligence API")

# CORS
import os
origins = [os.getenv("ALLOWED_ORIGIN", "*")]

app.add_middleware(
    CORSMiddleware,
    allow_origins=origins,
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

# Include Routers
app.include_router(auth.router, prefix="", tags=["Auth"])
app.include_router(diseases.router, prefix="", tags=["Diseases"])
app.include_router(products.router, prefix="", tags=["Products"])
app.include_router(mappings.router, prefix="", tags=["Mappings"])
app.include_router(detection.router, prefix="", tags=["Detection"])
from routes import admin
app.include_router(admin.router, prefix="", tags=["Admin/Billing"])


@app.get("/")
def read_root():
    return {
        "message": "Disease Intelligence API is running",
        "docs": "/docs",
        "frontend": "http://localhost:3000"
    }

if __name__ == "__main__":
    import uvicorn
    uvicorn.run("main:app", host="0.0.0.0", port=8000, reload=True)
