-- ============================================
-- TABLE 1: DISEASES MASTER (Your Core IP)
-- ============================================
CREATE TABLE diseases (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  disease_id VARCHAR(20) UNIQUE NOT NULL, -- e.g., 'TOM-0045'
  crop VARCHAR(100) NOT NULL,
  disease_name VARCHAR(255) NOT NULL,
  synonyms TEXT,
  scientific_name VARCHAR(255),
  category VARCHAR(50), -- Fungal, Pest, Viral, Bacterial, etc.
  severity_default VARCHAR(20), -- Low, Medium, High
  stage_default VARCHAR(50), -- Early, Mid, Late, All
  
  -- Symptoms & Identification
  key_symptoms TEXT NOT NULL,
  affected_parts TEXT, -- Leaf, Stem, Fruit, Root, Flower
  environmental_trigger TEXT,
  season TEXT,
  
  -- Generic Treatment Guidelines (NOT specific products)
  treatment_organic_generic TEXT,
  treatment_chemical_generic TEXT,
  treatment_biological_generic TEXT,
  
  application_method TEXT,
  dosage_generic TEXT,
  spray_interval_days INTEGER,
  precautions TEXT,
  preventive_measures TEXT,
  ipm_brief TEXT,
  faq JSONB, -- Store as JSON array
  
  -- Slot Availability Flags
  slot_organic_available BOOLEAN DEFAULT true,
  slot_chemical_available BOOLEAN DEFAULT true,
  slot_biological_available BOOLEAN DEFAULT true,
  
  -- Localization
  language_hindi TEXT,
  region_sensitivity TEXT,
  
  -- Metadata
  confidence_threshold INTEGER DEFAULT 90,
  evidence_level VARCHAR(50),
  
  -- Image folder path (from previous schema, kept for compatibility if needed, or map to new structure)
  image_folder_path TEXT,

  created_at TIMESTAMP DEFAULT NOW(),
  updated_at TIMESTAMP DEFAULT NOW()
);

-- Index for fast lookups
CREATE INDEX idx_diseases_disease_id ON diseases(disease_id);
CREATE INDEX idx_diseases_crop ON diseases(crop);
CREATE INDEX idx_diseases_category ON diseases(category);


-- ============================================
-- TABLE 2: CLIENTS (Companies using your API)
-- ============================================
CREATE TABLE clients (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  
  -- Company Info
  company_name VARCHAR(255) NOT NULL,
  business_type VARCHAR(100), -- Pesticide, Seed, Marketplace, Dealer, Other
  contact_person VARCHAR(255),
  email VARCHAR(255) UNIQUE NOT NULL,
  phone VARCHAR(20),
  
  -- Subscription
  plan_type VARCHAR(50) NOT NULL, -- basic, professional, enterprise
  subscription_status VARCHAR(50) DEFAULT 'trial', -- trial, active, suspended, cancelled
  subscription_start_date DATE,
  subscription_end_date DATE,
  
  -- API Credentials
  api_key VARCHAR(255) UNIQUE NOT NULL,
  api_secret VARCHAR(255) NOT NULL,
  
  -- Limits based on plan
  monthly_api_call_limit INTEGER DEFAULT 10000,
  max_products_allowed INTEGER DEFAULT 50,
  
  -- Branding (for white-label)
  brand_logo_url TEXT,
  brand_color VARCHAR(7), -- Hex color
  cta_button_text VARCHAR(50) DEFAULT 'Shop Now',
  
  -- Metadata
  is_active BOOLEAN DEFAULT true,
  created_at TIMESTAMP DEFAULT NOW(),
  last_login TIMESTAMP,
  updated_at TIMESTAMP DEFAULT NOW()
);

CREATE INDEX idx_clients_email ON clients(email);
CREATE INDEX idx_clients_api_key ON clients(api_key);


-- ============================================
-- TABLE 3: CLIENT PRODUCTS (They manage this)
-- ============================================
CREATE TABLE client_products (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  client_id UUID REFERENCES clients(id) ON DELETE CASCADE,
  
  -- Product Details
  product_name VARCHAR(255) NOT NULL,
  product_brand VARCHAR(255),
  active_ingredient TEXT,
  category VARCHAR(50) NOT NULL, -- organic, chemical, biological
  
  -- Packaging & Pricing
  pack_sizes TEXT, -- Can store as comma-separated or JSON
  price_min DECIMAL(10, 2),
  price_max DECIMAL(10, 2),
  currency VARCHAR(10) DEFAULT 'INR',
  
  -- Links & Availability
  product_url TEXT,
  stock_status VARCHAR(50) DEFAULT 'in_stock', -- in_stock, low_stock, out_of_stock
  
  -- Status
  is_active BOOLEAN DEFAULT true,
  created_at TIMESTAMP DEFAULT NOW(),
  updated_at TIMESTAMP DEFAULT NOW()
);

CREATE INDEX idx_client_products_client_id ON client_products(client_id);
CREATE INDEX idx_client_products_category ON client_products(category);


-- ============================================
-- TABLE 4: DISEASE-PRODUCT MAPPINGS
-- ============================================
CREATE TABLE disease_product_mappings (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  
  client_id UUID REFERENCES clients(id) ON DELETE CASCADE,
  disease_id UUID REFERENCES diseases(id) ON DELETE CASCADE,
  product_id UUID REFERENCES client_products(id) ON DELETE CASCADE,
  
  -- Mapping Details
  treatment_type VARCHAR(50) NOT NULL, -- organic, chemical, biological
  priority INTEGER DEFAULT 1, -- 1 = primary, 2 = secondary, etc.
  
  -- Status
  is_active BOOLEAN DEFAULT true,
  created_at TIMESTAMP DEFAULT NOW(),
  updated_at TIMESTAMP DEFAULT NOW(),
  
  -- Ensure unique mapping per client-disease-product-type combo
  UNIQUE(client_id, disease_id, product_id, treatment_type)
);

CREATE INDEX idx_mappings_client_disease ON disease_product_mappings(client_id, disease_id);
CREATE INDEX idx_mappings_disease_type ON disease_product_mappings(disease_id, treatment_type);


-- ============================================
-- TABLE 5: CROP DETECTION IMAGES (Farmer uploads)
-- ============================================
CREATE TABLE detection_images (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  
  -- Who detected (optional - can be anonymous)
  client_id UUID REFERENCES clients(id) ON DELETE SET NULL,
  farmer_id VARCHAR(255), -- Optional: if client tracks farmers
  
  -- Image Details
  image_url TEXT NOT NULL, -- Supabase storage URL
  image_thumbnail_url TEXT, -- Smaller version for list views
  
  -- Detection Results
  detected_disease_id UUID REFERENCES diseases(id) ON DELETE SET NULL,
  confidence_score DECIMAL(5, 2), -- e.g., 95.67
  
  -- Context
  crop VARCHAR(100),
  location_lat DECIMAL(10, 8),
  location_lng DECIMAL(11, 8),
  location_state VARCHAR(100),
  location_district VARCHAR(100),
  
  -- Metadata
  detection_timestamp TIMESTAMP DEFAULT NOW(),
  device_info JSONB, -- Store device type, OS, app version, etc.
  created_at TIMESTAMP DEFAULT NOW()
);

CREATE INDEX idx_detection_images_client ON detection_images(client_id);
CREATE INDEX idx_detection_images_disease ON detection_images(detected_disease_id);
CREATE INDEX idx_detection_images_timestamp ON detection_images(detection_timestamp);


-- ============================================
-- TABLE 6: API USAGE LOGS (For analytics)
-- ============================================
CREATE TABLE api_logs (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  
  client_id UUID REFERENCES clients(id) ON DELETE SET NULL,
  disease_id UUID REFERENCES diseases(id) ON DELETE SET NULL,
  
  -- Request Details
  endpoint VARCHAR(255),
  method VARCHAR(10),
  status_code INTEGER,
  response_time_ms INTEGER,
  
  -- Context
  ip_address VARCHAR(45),
  user_agent TEXT,
  
  -- Timestamp
  timestamp TIMESTAMP DEFAULT NOW()
);

-- Partitioned by month for performance (optional, for scale)
CREATE INDEX idx_api_logs_client_timestamp ON api_logs(client_id, timestamp);
CREATE INDEX idx_api_logs_disease ON api_logs(disease_id);


-- ============================================
-- TABLE 7: SUBSCRIPTION TRANSACTIONS
-- ============================================
CREATE TABLE transactions (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  
  client_id UUID REFERENCES clients(id) ON DELETE CASCADE,
  
  -- Payment Details
  amount DECIMAL(10, 2) NOT NULL,
  currency VARCHAR(10) DEFAULT 'INR',
  payment_method VARCHAR(50), -- stripe, razorpay, manual
  payment_status VARCHAR(50) DEFAULT 'pending', -- pending, success, failed, refunded
  
  -- External References
  transaction_id VARCHAR(255) UNIQUE, -- From payment gateway
  invoice_url TEXT,
  
  -- Metadata
  plan_type VARCHAR(50),
  billing_period VARCHAR(50), -- monthly, annual
  created_at TIMESTAMP DEFAULT NOW()
);

CREATE INDEX idx_transactions_client ON transactions(client_id);
