ALTER TABLE `aprendizaje_lecciones`
  ADD COLUMN `quick_lesson_order` INT UNSIGNED NULL AFTER `sort_order`;

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
SET lesson.quick_lesson_order = numbered.quick_position;

CREATE INDEX `idx_lesson_quick_order`
  ON `aprendizaje_lecciones` (`quick_lesson_order`);
