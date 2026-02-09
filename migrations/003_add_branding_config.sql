-- Add branding configuration to client_response_config
ALTER TABLE client_response_config 
ADD COLUMN IF NOT EXISTS layer_branding BOOLEAN DEFAULT FALSE,
ADD COLUMN IF NOT EXISTS branding_custom_text TEXT,
ADD COLUMN IF NOT EXISTS branding_primary_color TEXT;
