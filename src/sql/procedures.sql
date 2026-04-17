-- Auto-generated: procedures — procedures v149
-- Created for project optimization

CREATE TABLE IF NOT EXISTS procedures_—_procedures_149 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255),
    metadata JSONB,
    score DECIMAL(10,2),
    priority SMALLINT DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_procedures_—_procedures_149_name
    ON procedures_—_procedures_149(name);

CREATE INDEX IF NOT EXISTS idx_procedures_—_procedures_149_created
    ON procedures_—_procedures_149(created_at DESC);

-- Seed data
INSERT INTO procedures_—_procedures_149 (name, email)
VALUES
    ('item_0', 'val_0_149'),
    ('item_1', 'val_1_149'),
    ('item_2', 'val_2_149'),
    ('item_3', 'val_3_149'),
    ('item_4', 'val_4_149');

-- View
CREATE OR REPLACE VIEW v_procedures_—_procedures_149_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM procedures_—_procedures_149
GROUP BY name
ORDER BY total DESC;
