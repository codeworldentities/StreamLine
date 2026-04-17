-- Auto-generated: index optimization v4441
-- Created for project optimization

CREATE TABLE IF NOT EXISTS index_optimization_4441 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255),
    counter INTEGER DEFAULT 0,
    status VARCHAR(50) DEFAULT 'active',
    score DECIMAL(10,2),
    metadata JSONB,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_index_optimization_4441_name
    ON index_optimization_4441(name);

CREATE INDEX IF NOT EXISTS idx_index_optimization_4441_created
    ON index_optimization_4441(created_at DESC);

-- Seed data
INSERT INTO index_optimization_4441 (name, email)
VALUES
    ('item_0', 'val_0_4441'),
    ('item_1', 'val_1_4441'),
    ('item_2', 'val_2_4441'),
    ('item_3', 'val_3_4441'),
    ('item_4', 'val_4_4441'),
    ('item_5', 'val_5_4441'),
    ('item_6', 'val_6_4441'),
    ('item_7', 'val_7_4441'),

-- View
CREATE OR REPLACE VIEW v_index_optimization_4441_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM index_optimization_4441
GROUP BY name
ORDER BY total DESC;
