-- Create client_response_config table
CREATE TABLE IF NOT EXISTS client_response_config (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    client_id UUID REFERENCES clients(id) ON DELETE CASCADE,
    layer_scientific BOOLEAN DEFAULT FALSE,
    layer_symptoms BOOLEAN DEFAULT TRUE,
    layer_treatment_organic BOOLEAN DEFAULT TRUE,
    layer_treatment_chemical BOOLEAN DEFAULT FALSE,
    layer_treatment_biological BOOLEAN DEFAULT FALSE,
    layer_prevention BOOLEAN DEFAULT TRUE,
    layer_faq BOOLEAN DEFAULT FALSE,
    layer_products_organic BOOLEAN DEFAULT TRUE,
    layer_products_chemical BOOLEAN DEFAULT FALSE,
    layer_products_biological BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    UNIQUE(client_id)
);

-- Index on client_id for faster lookups
CREATE INDEX IF NOT EXISTS idx_client_response_config_client_id ON client_response_config(client_id);
