CREATE DATABASE IF NOT EXISTS academia_usuarios
  CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
CREATE DATABASE IF NOT EXISTS academia_matematicas
  CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- Versión local: acceso para root en localhost y 127.0.0.1
GRANT ALL PRIVILEGES ON academia_usuarios.*    TO 'root'@'127.0.0.1';
GRANT ALL PRIVILEGES ON academia_matematicas.* TO 'root'@'127.0.0.1';
GRANT ALL PRIVILEGES ON academia_usuarios.*    TO 'root'@'localhost';
GRANT ALL PRIVILEGES ON academia_matematicas.* TO 'root'@'localhost';

USE academia_usuarios;

CREATE TABLE IF NOT EXISTS users (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(120) NOT NULL,
    email VARCHAR(190) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL,
    role ENUM('student', 'admin', 'editor') NOT NULL DEFAULT 'student',
    active TINYINT(1) NOT NULL DEFAULT 1,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS user_progress (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    user_id BIGINT UNSIGNED NOT NULL,
    lesson_id BIGINT UNSIGNED NOT NULL,
    progress_percent TINYINT UNSIGNED NOT NULL DEFAULT 0,
    status ENUM('not_started', 'in_progress', 'completed') NOT NULL DEFAULT 'not_started',
    completed_sections JSON NULL,
    last_accessed_at TIMESTAMP NULL,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    UNIQUE KEY uq_user_lesson (user_id, lesson_id),
    CONSTRAINT fk_progress_user FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS exercise_attempts (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    user_id BIGINT UNSIGNED NOT NULL,
    section_id BIGINT UNSIGNED NOT NULL,
    answers TEXT NOT NULL,
    score_percent TINYINT UNSIGNED NOT NULL DEFAULT 0,
    attempted_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_attempt_user FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS user_challenges (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    user_id BIGINT UNSIGNED NOT NULL,
    challenge_id BIGINT UNSIGNED NOT NULL,
    progress_count INT UNSIGNED NOT NULL DEFAULT 0,
    completed TINYINT(1) NOT NULL DEFAULT 0,
    completed_at TIMESTAMP NULL,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    UNIQUE KEY uq_user_challenge (user_id, challenge_id),
    CONSTRAINT fk_uc_user FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
) ENGINE=InnoDB;

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

CREATE TABLE IF NOT EXISTS categories (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(120) NOT NULL,
    slug VARCHAR(140) NOT NULL UNIQUE,
    description TEXT NULL,
    education_level ENUM('primaria','secundaria','preparatoria') NOT NULL DEFAULT 'primaria',
    icon VARCHAR(50) NULL,
    color VARCHAR(30) NOT NULL DEFAULT 'purple',
    sort_order INT NOT NULL DEFAULT 0,
    active TINYINT(1) NOT NULL DEFAULT 1,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS lessons (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    category_id BIGINT UNSIGNED NOT NULL,
    title VARCHAR(180) NOT NULL,
    slug VARCHAR(190) NOT NULL UNIQUE,
    summary TEXT NULL,
    page_type ENUM('topic', 'path') NOT NULL DEFAULT 'topic',
    icon VARCHAR(50) NULL,
    icon_type ENUM('emoji','image','svg') NOT NULL DEFAULT 'emoji',
    icon_file VARCHAR(500) NULL,
    hero_expression VARCHAR(150) NULL,
    hero_media_id BIGINT UNSIGNED NULL,
    difficulty VARCHAR(40) NOT NULL DEFAULT 'Básica',
    duration_minutes INT UNSIGNED NOT NULL DEFAULT 0,
    sort_order INT NOT NULL DEFAULT 0,
    published TINYINT(1) NOT NULL DEFAULT 0,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT fk_lesson_category FOREIGN KEY (category_id) REFERENCES categories(id)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS lesson_sections (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    lesson_id BIGINT UNSIGNED NOT NULL,
    parent_section_id BIGINT UNSIGNED NULL,
    section_type ENUM('presentation','video','example','activity','evaluation','exam','mini','html','pptx') NOT NULL,
    title VARCHAR(180) NOT NULL,
    body_html MEDIUMTEXT NULL,
    media_id BIGINT UNSIGNED NULL,
    duration_minutes INT UNSIGNED NOT NULL DEFAULT 0,
    sort_order INT NOT NULL DEFAULT 0,
    published TINYINT(1) NOT NULL DEFAULT 1,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    INDEX idx_lesson_sections_parent (parent_section_id),
    CONSTRAINT fk_section_lesson FOREIGN KEY (lesson_id) REFERENCES lessons(id) ON DELETE CASCADE
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS media (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(180) NOT NULL,
    media_type ENUM('image','video','document','external') NOT NULL,
    file_path VARCHAR(500) NULL,
    thumbnail_path VARCHAR(500) NULL,
    external_url VARCHAR(1000) NULL,
    alt_text VARCHAR(255) NULL,
    upload_context ENUM('general','icon','hero','content','gallery','svg','wordpress') NOT NULL DEFAULT 'general',
    wp_attachment_id INT UNSIGNED NULL,
    width SMALLINT UNSIGNED NULL,
    height SMALLINT UNSIGNED NULL,
    file_size INT UNSIGNED NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS lesson_media (
    lesson_id BIGINT UNSIGNED NOT NULL,
    media_id BIGINT UNSIGNED NOT NULL,
    placement VARCHAR(50) NOT NULL DEFAULT 'content',
    sort_order INT NOT NULL DEFAULT 0,
    PRIMARY KEY (lesson_id, media_id, placement),
    CONSTRAINT fk_lm_lesson FOREIGN KEY (lesson_id) REFERENCES lessons(id) ON DELETE CASCADE,
    CONSTRAINT fk_lm_media FOREIGN KEY (media_id) REFERENCES media(id) ON DELETE CASCADE
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS resources (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    lesson_id BIGINT UNSIGNED NOT NULL,
    title VARCHAR(180) NOT NULL,
    description TEXT NULL,
    resource_type ENUM('pdf','link','video','image','download','interactive') NOT NULL DEFAULT 'link',
    url VARCHAR(1000) NOT NULL,
    sort_order INT NOT NULL DEFAULT 0,
    published TINYINT(1) NOT NULL DEFAULT 1,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_resource_lesson FOREIGN KEY (lesson_id) REFERENCES lessons(id) ON DELETE CASCADE
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS exercises (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    section_id BIGINT UNSIGNED NOT NULL UNIQUE,
    json_data MEDIUMTEXT NOT NULL,
    ai_model VARCHAR(100) NULL,
    generated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT fk_exercise_section FOREIGN KEY (section_id) REFERENCES lesson_sections(id) ON DELETE CASCADE
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS challenges (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(180) NOT NULL,
    description TEXT NULL,
    lesson_id BIGINT UNSIGNED NULL,
    challenge_type ENUM('complete_lessons','complete_sections','score_exercises') NOT NULL DEFAULT 'complete_lessons',
    target_actions INT UNSIGNED NOT NULL DEFAULT 1,
    icon VARCHAR(50) NOT NULL DEFAULT '?',
    color VARCHAR(30) NOT NULL DEFAULT 'purple',
    start_date DATE NULL,
    end_date DATE NULL,
    active TINYINT(1) NOT NULL DEFAULT 1,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT fk_challenge_lesson FOREIGN KEY (lesson_id) REFERENCES lessons(id) ON DELETE SET NULL
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS site_settings (
    setting_key VARCHAR(120) PRIMARY KEY,
    setting_value TEXT NULL,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB;

INSERT INTO categories (name, slug, description, icon, color, sort_order, active)
VALUES ('Aritmética', 'aritmetica', 'Operaciones básicas y problemas', '▦', 'purple', 1, 1)
ON DUPLICATE KEY UPDATE name=VALUES(name), description=VALUES(description);

INSERT INTO lessons
    (category_id, title, slug, summary, page_type, icon, hero_expression, difficulty, duration_minutes, sort_order, published)
SELECT id, 'Suma de números naturales', 'suma-numeros-naturales',
       'Aprende a sumar números naturales y a resolver situaciones de la vida cotidiana usando la adición.',
       'topic', '+', '24 + 13 = 37', 'Básica', 35, 1, 1
FROM categories WHERE slug='aritmetica'
ON DUPLICATE KEY UPDATE title=VALUES(title), summary=VALUES(summary), published=1;

INSERT INTO lessons
    (category_id, title, slug, summary, page_type, icon, hero_expression, difficulty, duration_minutes, sort_order, published)
SELECT id, 'Suma de fracciones', 'suma-fracciones',
       'Aprende a sumar fracciones con el mismo o distinto denominador mediante ejercicios paso a paso.',
       'path', '½', '1/2 + 1/3 = ?', 'Básica', 64, 2, 1
FROM categories WHERE slug='aritmetica'
ON DUPLICATE KEY UPDATE title=VALUES(title), summary=VALUES(summary), published=1;

INSERT INTO site_settings (setting_key, setting_value) VALUES
('site_title', 'Academia CABSA Matemáticas'),
('welcome_title', '¡Bienvenido a Matemáticas!'),
('welcome_text', 'Desarrolla tu pensamiento lógico, resuelve problemas y aplica las matemáticas en tu día a día.')
ON DUPLICATE KEY UPDATE setting_value=VALUES(setting_value);

FLUSH PRIVILEGES;

-- ============================================================
-- FK a media (se agrega aquí porque media se define después
-- de lessons y lesson_sections)
-- ============================================================
ALTER TABLE lessons
    ADD CONSTRAINT fk_lesson_hero_media
        FOREIGN KEY (hero_media_id) REFERENCES media(id) ON DELETE SET NULL;

ALTER TABLE lesson_sections
    ADD CONSTRAINT fk_section_media
        FOREIGN KEY (media_id) REFERENCES media(id) ON DELETE SET NULL;
