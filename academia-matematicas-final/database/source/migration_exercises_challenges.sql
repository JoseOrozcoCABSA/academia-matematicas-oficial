-- ============================================================
-- Migración: Ejercicios IA + Retos semanales
-- Ejecutar UNA VEZ después de schema.sql
-- ============================================================

-- ── Tabla exercises (academia_matematicas) ─────────────────
USE academia_matematicas;

CREATE TABLE IF NOT EXISTS exercises (
    id            BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    section_id    BIGINT UNSIGNED NOT NULL UNIQUE,
    json_data     MEDIUMTEXT NOT NULL,
    ai_model      VARCHAR(100) NULL,
    generated_at  TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at    TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT fk_exercise_section FOREIGN KEY (section_id)
        REFERENCES lesson_sections(id) ON DELETE CASCADE
) ENGINE=InnoDB;

-- ── Tabla challenges (academia_matematicas) ────────────────
CREATE TABLE IF NOT EXISTS challenges (
    id              BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    title           VARCHAR(180) NOT NULL,
    description     TEXT NULL,
    lesson_id       BIGINT UNSIGNED NULL,
    challenge_type  ENUM('complete_lessons','complete_sections','score_exercises') NOT NULL DEFAULT 'complete_lessons',
    target_actions  INT UNSIGNED NOT NULL DEFAULT 1,
    icon            VARCHAR(50) NOT NULL DEFAULT '🏆',
    color           VARCHAR(30) NOT NULL DEFAULT 'purple',
    start_date      DATE NULL,
    end_date        DATE NULL,
    active          TINYINT(1) NOT NULL DEFAULT 1,
    created_at      TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at      TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT fk_challenge_lesson FOREIGN KEY (lesson_id)
        REFERENCES lessons(id) ON DELETE SET NULL
) ENGINE=InnoDB;

-- ── Tabla exercise_attempts (academia_usuarios) ────────────
USE academia_usuarios;

CREATE TABLE IF NOT EXISTS exercise_attempts (
    id            BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    user_id       BIGINT UNSIGNED NOT NULL,
    section_id    BIGINT UNSIGNED NOT NULL,
    answers       TEXT NOT NULL,
    score_percent TINYINT UNSIGNED NOT NULL DEFAULT 0,
    attempted_at  TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_attempt_user FOREIGN KEY (user_id)
        REFERENCES users(id) ON DELETE CASCADE
) ENGINE=InnoDB;

-- ── Tabla user_challenges (academia_usuarios) ──────────────
CREATE TABLE IF NOT EXISTS user_challenges (
    id              BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    user_id         BIGINT UNSIGNED NOT NULL,
    challenge_id    BIGINT UNSIGNED NOT NULL,
    progress_count  INT UNSIGNED NOT NULL DEFAULT 0,
    completed       TINYINT(1) NOT NULL DEFAULT 0,
    completed_at    TIMESTAMP NULL,
    updated_at      TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    UNIQUE KEY uq_user_challenge (user_id, challenge_id),
    CONSTRAINT fk_uc_user FOREIGN KEY (user_id)
        REFERENCES users(id) ON DELETE CASCADE
) ENGINE=InnoDB;

-- ── Reto de demostración ───────────────────────────────────
USE academia_matematicas;

INSERT INTO challenges (title, description, challenge_type, target_actions, icon, color, start_date, end_date, active)
VALUES (
    'Domina la aritmética',
    'Completa 2 lecciones de aritmética esta semana para demostrar tus habilidades',
    'complete_lessons',
    2,
    '🏆',
    'purple',
    CURDATE(),
    DATE_ADD(CURDATE(), INTERVAL 7 DAY),
    1
) ON DUPLICATE KEY UPDATE title=VALUES(title);
