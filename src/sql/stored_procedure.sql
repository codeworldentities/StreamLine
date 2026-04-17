-- Auto-generated: stored procedure v1147
-- Created for project optimization

CREATE TABLE IF NOT EXISTS stored_procedure_1147 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    score DECIMAL(10,2),
    description TEXT,
    priority SMALLINT DEFAULT 0,
    email VARCHAR(255),
    counter INTEGER DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_stored_procedure_1147_name
    ON stored_procedure_1147(name);

CREATE INDEX IF NOT EXISTS idx_stored_procedure_1147_created
    ON stored_procedure_1147(created_at DESC);

-- Seed data
INSERT INTO stored_procedure_1147 (name, score)
VALUES
    ('item_0', 'val_0_1147'),
    ('item_1', 'val_1_1147'),
    ('item_2', 'val_2_1147'),
    ('item_3', 'val_3_1147'),
    ('item_4', 'val_4_1147'),
    ('item_5', 'val_5_1147'),
    ('item_6', 'val_6_1147'),
    ('item_7', 'val_7_1147'),

-- View
CREATE OR REPLACE VIEW v_stored_procedure_1147_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM stored_procedure_1147
GROUP BY name
ORDER BY total DESC;
