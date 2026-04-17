-- Auto-generated: migration script v5994
-- Created for project optimization

CREATE TABLE IF NOT EXISTS migration_script_5994 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    priority SMALLINT DEFAULT 0,
    counter INTEGER DEFAULT 0,
    status VARCHAR(50) DEFAULT 'active',
    is_active BOOLEAN DEFAULT TRUE,
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_migration_script_5994_name
    ON migration_script_5994(name);

CREATE INDEX IF NOT EXISTS idx_migration_script_5994_created
    ON migration_script_5994(created_at DESC);

-- Seed data
INSERT INTO migration_script_5994 (name, priority)
VALUES
    ('item_0', 'val_0_5994'),
    ('item_1', 'val_1_5994'),
    ('item_2', 'val_2_5994'),
    ('item_3', 'val_3_5994'),
    ('item_4', 'val_4_5994'),
    ('item_5', 'val_5_5994'),
    ('item_6', 'val_6_5994'),
    ('item_7', 'val_7_5994'),

-- View
CREATE OR REPLACE VIEW v_migration_script_5994_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM migration_script_5994
GROUP BY name
ORDER BY total DESC;
