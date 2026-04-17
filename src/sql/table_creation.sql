-- Auto-generated: table creation v3424
-- Created for project optimization

CREATE TABLE IF NOT EXISTS table_creation_3424 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255),
    status VARCHAR(50) DEFAULT 'active',
    counter INTEGER DEFAULT 0,
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_table_creation_3424_name
    ON table_creation_3424(name);

CREATE INDEX IF NOT EXISTS idx_table_creation_3424_created
    ON table_creation_3424(created_at DESC);

-- Seed data
INSERT INTO table_creation_3424 (name, email)
VALUES
    ('item_0', 'val_0_3424'),
    ('item_1', 'val_1_3424'),
    ('item_2', 'val_2_3424'),
    ('item_3', 'val_3_3424'),
    ('item_4', 'val_4_3424'),
    ('item_5', 'val_5_3424'),
    ('item_6', 'val_6_3424'),
    ('item_7', 'val_7_3424'),

-- View
CREATE OR REPLACE VIEW v_table_creation_3424_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM table_creation_3424
GROUP BY name
ORDER BY total DESC;
