-- Idempotente: crear cada columna únicamente cuando todavía no existe.
SET @schema_name = DATABASE();

SET @statement = IF(
  EXISTS(SELECT 1 FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=@schema_name AND TABLE_NAME='aprendizaje_secciones_leccion' AND COLUMN_NAME='ai_exercise_type'),
  'SELECT 1',
  "ALTER TABLE aprendizaje_secciones_leccion ADD COLUMN ai_exercise_type varchar(40) NOT NULL DEFAULT 'generic' AFTER ai_exercises_enabled"
);
PREPARE migration_statement FROM @statement;
EXECUTE migration_statement;
DEALLOCATE PREPARE migration_statement;

SET @statement = IF(
  EXISTS(SELECT 1 FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=@schema_name AND TABLE_NAME='aprendizaje_secciones_leccion' AND COLUMN_NAME='ai_difficulty'),
  'SELECT 1',
  "ALTER TABLE aprendizaje_secciones_leccion ADD COLUMN ai_difficulty varchar(20) NOT NULL DEFAULT 'Básica' AFTER ai_exercise_type"
);
PREPARE migration_statement FROM @statement;
EXECUTE migration_statement;
DEALLOCATE PREPARE migration_statement;

SET @statement = IF(
  EXISTS(SELECT 1 FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=@schema_name AND TABLE_NAME='aprendizaje_secciones_leccion' AND COLUMN_NAME='ai_exercise_count'),
  'SELECT 1',
  'ALTER TABLE aprendizaje_secciones_leccion ADD COLUMN ai_exercise_count int unsigned NOT NULL DEFAULT 10 AFTER ai_difficulty'
);
PREPARE migration_statement FROM @statement;
EXECUTE migration_statement;
DEALLOCATE PREPARE migration_statement;
