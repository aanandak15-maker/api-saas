"""
Mock Supabase Client for Local Testing
Uses in-memory dictionaries to simulate database operations
"""
import uuid
from typing import Any, Dict, List, Optional
from datetime import datetime

# In-memory data stores
_diseases: Dict[str, Dict] = {}
_clients: Dict[str, Dict] = {}
_client_products: Dict[str, Dict] = {}
_disease_product_mappings: Dict[str, Dict] = {}
_detection_images: Dict[str, Dict] = {}
_api_logs: List[Dict] = []

class MockQueryBuilder:
    def __init__(self, table_name: str, data_store: Dict):
        self.table_name = table_name
        self.data_store = data_store
        self._filters = []
        self._select_cols = "*"
        self._order_col = None
        self._order_desc = False
        self._limit_val = None
        self._single = False
        
    def select(self, cols: str = "*"):
        self._select_cols = cols
        return self
    
    def eq(self, col: str, val: Any):
        self._filters.append(("eq", col, val))
        return self
    
    def order(self, col: str, desc: bool = False):
        self._order_col = col
        self._order_desc = desc
        return self
    
    def limit(self, val: int):
        self._limit_val = val
        return self
    
    def single(self):
        self._single = True
        return self
    
    def execute(self):
        # Apply filters
        results = list(self.data_store.values())
        for op, col, val in self._filters:
            if op == "eq":
                results = [r for r in results if r.get(col) == val]
        
        # Apply order
        if self._order_col:
            results = sorted(results, key=lambda x: x.get(self._order_col, 0), reverse=self._order_desc)
        
        # Apply limit
        if self._limit_val:
            results = results[:self._limit_val]
        
        # Handle single
        if self._single:
            results = results[0] if results else None
        
        return MockResponse(results)
    
    def insert(self, data: Dict):
        return MockInsertBuilder(self.table_name, self.data_store, data)
    
    def update(self, data: Dict):
        return MockUpdateBuilder(self.table_name, self.data_store, data, self._filters)


class MockInsertBuilder:
    def __init__(self, table_name: str, data_store: Dict, data: Any):
        self.table_name = table_name
        self.data_store = data_store
        self.data = data if isinstance(data, list) else [data]
    
    def execute(self):
        results = []
        for item in self.data:
            record = {**item}
            if "id" not in record:
                record["id"] = str(uuid.uuid4())
            record["created_at"] = datetime.now().isoformat()
            record["updated_at"] = datetime.now().isoformat()
            self.data_store[record["id"]] = record
            results.append(record)
        return MockResponse(results)


class MockUpdateBuilder:
    def __init__(self, table_name: str, data_store: Dict, data: Dict, filters: List):
        self.table_name = table_name
        self.data_store = data_store
        self.data = data
        self._filters = filters
    
    def eq(self, col: str, val: Any):
        self._filters.append(("eq", col, val))
        return self
    
    def execute(self):
        results = []
        for key, record in self.data_store.items():
            match = True
            for op, col, val in self._filters:
                if op == "eq" and record.get(col) != val:
                    match = False
                    break
            if match:
                record.update(self.data)
                record["updated_at"] = datetime.now().isoformat()
                results.append(record)
        return MockResponse(results)


class MockResponse:
    def __init__(self, data: Any):
        self.data = data


class MockStorageBucket:
    def __init__(self, bucket_name: str):
        self.bucket_name = bucket_name
        self._files: Dict[str, bytes] = {}
    
    def upload(self, filename: str, data: bytes, options: dict = None):
        self._files[filename] = data
        return {"Key": f"{self.bucket_name}/{filename}"}
    
    def get_public_url(self, filename: str):
        return f"http://localhost:8000/storage/{self.bucket_name}/{filename}"


class MockStorage:
    def __init__(self):
        self._buckets: Dict[str, MockStorageBucket] = {}
    
    def from_(self, bucket_name: str):
        if bucket_name not in self._buckets:
            self._buckets[bucket_name] = MockStorageBucket(bucket_name)
        return self._buckets[bucket_name]


class MockSupabaseClient:
    def __init__(self):
        self.storage = MockStorage()
        self._tables = {
            "diseases": _diseases,
            "clients": _clients,
            "client_products": _client_products,
            "disease_product_mappings": _disease_product_mappings,
            "detection_images": _detection_images,
            "api_logs": {},
        }
    
    def table(self, name: str) -> MockQueryBuilder:
        if name not in self._tables:
            self._tables[name] = {}
        return MockQueryBuilder(name, self._tables[name])


# Create mock clients (replaces supabase_client.py exports)
supabase = MockSupabaseClient()
supabase_admin = MockSupabaseClient()

# Pre-seed some disease data for testing
def seed_mock_data():
    """Seed some test disease data"""
    test_diseases = [
        {
            "id": str(uuid.uuid4()),
            "disease_id": "TOM-0001",
            "crop": "Tomato",
            "disease_name": "Early Blight",
            "scientific_name": "Alternaria solani",
            "category": "Fungal",
            "severity_default": "Medium",
            "stage_default": "All",
            "key_symptoms": "Dark brown spots with concentric rings on lower leaves, yellowing around spots",
            "affected_parts": "Leaves, Stems, Fruit",
            "environmental_trigger": "Warm humid weather, 24-29°C",
            "season": "Monsoon, Post-monsoon",
            "treatment_organic_generic": "Neem oil spray, Trichoderma application",
            "treatment_chemical_generic": "Mancozeb, Copper oxychloride",
            "treatment_biological_generic": "Pseudomonas fluorescens",
            "application_method": "Foliar spray",
            "dosage_generic": "2-3 ml/L water",
            "spray_interval_days": 7,
            "precautions": "Avoid spraying during hot sun",
            "preventive_measures": "Crop rotation, Remove infected debris",
            "ipm_brief": "Combine cultural practices with biological control",
            "faq": ["What causes early blight?", "How to identify early blight?"],
            "slot_organic_available": True,
            "slot_chemical_available": True,
            "slot_biological_available": True,
            "language_hindi": "अगेती झुलसा",
            "confidence_threshold": 90,
        },
        {
            "id": str(uuid.uuid4()),
            "disease_id": "TOM-0002", 
            "crop": "Tomato",
            "disease_name": "Late Blight",
            "scientific_name": "Phytophthora infestans",
            "category": "Fungal",
            "severity_default": "High",
            "stage_default": "Mid-Late",
            "key_symptoms": "Water-soaked lesions, white fuzzy growth on underside of leaves",
            "affected_parts": "Leaves, Stems, Fruit",
            "environmental_trigger": "Cool wet conditions, 10-20°C",
            "season": "Winter, Rainy",
            "treatment_organic_generic": "Bordeaux mixture, Copper spray",
            "treatment_chemical_generic": "Metalaxyl + Mancozeb, Cymoxanil",
            "treatment_biological_generic": "Bacillus subtilis",
            "application_method": "Foliar spray",
            "dosage_generic": "2.5 g/L water",
            "spray_interval_days": 5,
            "precautions": "Use protective gear, avoid drift",
            "preventive_measures": "Use resistant varieties, Good drainage",
            "ipm_brief": "Early detection and immediate action critical",
            "faq": ["Is late blight different from early blight?"],
            "slot_organic_available": True,
            "slot_chemical_available": True,
            "slot_biological_available": True,
            "language_hindi": "पछेती झुलसा",
            "confidence_threshold": 85,
        },
        {
            "id": str(uuid.uuid4()),
            "disease_id": "RIC-0001",
            "crop": "Rice",
            "disease_name": "Rice Blast",
            "scientific_name": "Magnaporthe oryzae",
            "category": "Fungal",
            "severity_default": "High",
            "stage_default": "All",
            "key_symptoms": "Diamond-shaped lesions with gray center on leaves",
            "affected_parts": "Leaves, Neck, Panicle",
            "environmental_trigger": "High humidity, nitrogen excess",
            "season": "Kharif",
            "treatment_organic_generic": "Silicon application, Neem extract",
            "treatment_chemical_generic": "Tricyclazole, Isoprothiolane",
            "treatment_biological_generic": "Trichoderma harzianum",
            "application_method": "Foliar spray, Seed treatment",
            "dosage_generic": "1 g/L water",
            "spray_interval_days": 10,
            "precautions": "Balance nitrogen fertilizer",
            "preventive_measures": "Use certified seeds, Avoid dense planting",
            "ipm_brief": "Integrated approach with resistant varieties",
            "faq": ["How does rice blast spread?"],
            "slot_organic_available": True,
            "slot_chemical_available": True,
            "slot_biological_available": True,
            "language_hindi": "धान का झोंका",
            "confidence_threshold": 88,
        }
    ]
    
    for disease in test_diseases:
        _diseases[disease["id"]] = disease
    
    print(f"✓ Seeded {len(test_diseases)} mock diseases")

# Auto-seed on import
seed_mock_data()
