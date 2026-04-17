-- Auto-generated: schema — database schema definition v7167
-- Created for project optimization

CREATE TABLE IF NOT EXISTS schema_—_database_schema_definition_7167 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    status VARCHAR(50) DEFAULT 'active',
    description TEXT,
    email VARCHAR(255),
    counter INTEGER DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_schema_—_database_schema_definition_7167_name
    ON schema_—_database_schema_definition_7167(name);

CREATE INDEX IF NOT EXISTS idx_schema_—_database_schema_definition_7167_created
    ON schema_—_database_schema_definition_7167(created_at DESC);

-- Seed data
INSERT INTO schema_—_database_schema_definition_7167 (name, status)
VALUES
    ('item_0', 'val_0_7167'),
    ('item_1', 'val_1_7167');

-- View
CREATE OR REPLACE VIEW v_schema_—_database_schema_definition_7167_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM schema_—_database_schema_definition_7167
GROUP BY name
ORDER BY total DESC;
