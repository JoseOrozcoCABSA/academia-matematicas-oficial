USE academia_matematicas;

CREATE TABLE IF NOT EXISTS education_levels (
    slug VARCHAR(60) PRIMARY KEY,
    name VARCHAR(120) NOT NULL,
    description TEXT NULL,
    icon VARCHAR(50) NULL,
    color VARCHAR(30) NOT NULL DEFAULT 'purple',
    sort_order INT NOT NULL DEFAULT 0,
    active TINYINT(1) NOT NULL DEFAULT 1,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB;

INSERT INTO education_levels (slug, name, description, icon, color, sort_order, active) VALUES
('primaria', 'Primaria', 'Operaciones, problemas y bases para avanzar.', '1+2', 'purple', 1, 1),
('secundaria', 'Secundaria', 'Algebra, figuras y pensamiento logico.', 'x2', 'blue', 2, 1),
('preparatoria', 'Preparatoria', 'Funciones, geometria y estadistica.', 'fx', 'green', 3, 1)
ON DUPLICATE KEY UPDATE
name=VALUES(name), description=VALUES(description), icon=VALUES(icon), color=VALUES(color), sort_order=VALUES(sort_order);

ALTER TABLE categories
    ADD COLUMN IF NOT EXISTS education_level ENUM('primaria','secundaria','preparatoria') NOT NULL DEFAULT 'primaria'
    AFTER description;

UPDATE categories
SET education_level = 'primaria'
WHERE education_level IS NULL OR education_level = '';

UPDATE categories
SET education_level = 'secundaria'
WHERE slug LIKE '%secundaria%' OR name LIKE '%secundaria%';

UPDATE categories
SET education_level = 'preparatoria'
WHERE slug LIKE '%preparatoria%' OR name LIKE '%preparatoria%' OR slug LIKE '%bachiller%' OR name LIKE '%bachiller%';
