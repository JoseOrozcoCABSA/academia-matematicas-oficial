-- Esta migracion se ejecuta en cada despliegue. Crear la columna y el indice
-- mediante sentencias condicionales evita que una segunda ejecucion falle.
SET @quick_order_column_exists = (
  SELECT COUNT(*)
  FROM information_schema.COLUMNS
  WHERE TABLE_SCHEMA = DATABASE()
    AND TABLE_NAME = 'aprendizaje_lecciones'
    AND COLUMN_NAME = 'quick_lesson_order'
);
SET @quick_order_column_sql = IF(
  @quick_order_column_exists = 0,
  'ALTER TABLE `aprendizaje_lecciones` ADD COLUMN `quick_lesson_order` INT UNSIGNED NULL AFTER `sort_order`',
  'SELECT 1'
);
PREPARE quick_order_column_statement FROM @quick_order_column_sql;
EXECUTE quick_order_column_statement;
DEALLOCATE PREPARE quick_order_column_statement;

UPDATE `aprendizaje_lecciones` AS lesson
JOIN (
  SELECT id, ROW_NUMBER() OVER (
    PARTITION BY COALESCE(
      REGEXP_SUBSTR(UPPER(CONCAT_WS(' ', slug, title, summary)), 'PRE[1-3]|P[1-6]|S[1-3]'),
      'SIN-GRADO'
    )
    ORDER BY sort_order, id
  ) AS quick_position
  FROM `aprendizaje_lecciones`
) AS numbered ON numbered.id = lesson.id
SET lesson.quick_lesson_order = numbered.quick_position
WHERE lesson.quick_lesson_order IS NULL;

SET @quick_order_index_exists = (
  SELECT COUNT(*)
  FROM information_schema.STATISTICS
  WHERE TABLE_SCHEMA = DATABASE()
    AND TABLE_NAME = 'aprendizaje_lecciones'
    AND INDEX_NAME = 'idx_lesson_quick_order'
);
SET @quick_order_index_sql = IF(
  @quick_order_index_exists = 0,
  'CREATE INDEX `idx_lesson_quick_order` ON `aprendizaje_lecciones` (`quick_lesson_order`)',
  'SELECT 1'
);
PREPARE quick_order_index_statement FROM @quick_order_index_sql;
EXECUTE quick_order_index_statement;
DEALLOCATE PREPARE quick_order_index_statement;
