CREATE TABLE IF NOT EXISTS plan_configs (
  id SERIAL PRIMARY KEY,
  plan_name VARCHAR(50) UNIQUE NOT NULL,
  max_products INTEGER DEFAULT 1,
  max_scans_per_month INTEGER DEFAULT 1000,
  advisory_level VARCHAR(20) DEFAULT 'essential',
  branding_enabled BOOLEAN DEFAULT FALSE,
  analytics_level VARCHAR(20) DEFAULT 'basic',
  priority_queue BOOLEAN DEFAULT FALSE
);

-- Insert default plans if they don't exist
INSERT INTO plan_configs (plan_name, max_products, max_scans_per_month, advisory_level, branding_enabled, analytics_level, priority_queue)
VALUES
('germination', 1, 1000, 'essential', FALSE, 'basic', FALSE),
('cultivation', 5, 5000, 'full', TRUE, 'full', TRUE),
('harvest', -1, 20000, 'complete', TRUE, 'advanced', TRUE),
('enterprise', -1, -1, 'custom', TRUE, 'custom', TRUE)
ON CONFLICT (plan_name) DO UPDATE SET
  max_products = EXCLUDED.max_products,
  max_scans_per_month = EXCLUDED.max_scans_per_month,
  advisory_level = EXCLUDED.advisory_level,
  branding_enabled = EXCLUDED.branding_enabled,
  analytics_level = EXCLUDED.analytics_level,
  priority_queue = EXCLUDED.priority_queue;
