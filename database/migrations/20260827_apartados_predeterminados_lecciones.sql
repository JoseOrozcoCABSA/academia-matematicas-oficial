-- Tres apartados predeterminados para cada lección existente.
-- Idempotente: puede ejecutarse en cada despliegue sin duplicar registros.
SET NAMES utf8mb4;

INSERT INTO aprendizaje_secciones_leccion
  (lesson_id, parent_section_id, section_type, title, body_html, ai_prompt,
   ai_exercises_enabled, media_id, duration_minutes, sort_order, published,
   created_at, updated_at)
SELECT l.id, NULL, 'presentation', 'Lecciones', '', NULL,
       0, NULL, 0, 1, 1, NOW(), NOW()
FROM aprendizaje_lecciones AS l
WHERE NOT EXISTS (
  SELECT 1 FROM aprendizaje_secciones_leccion AS s
  WHERE s.lesson_id = l.id AND s.parent_section_id IS NULL
    AND s.section_type = 'presentation'
    AND LOWER(TRIM(s.title)) IN ('leccion', 'lección', 'lecciones')
);

UPDATE aprendizaje_secciones_leccion
SET title = 'Lecciones', sort_order = 1, published = 1, updated_at = NOW()
WHERE parent_section_id IS NULL AND section_type = 'presentation'
  AND LOWER(TRIM(title)) IN ('leccion', 'lección', 'lecciones');

INSERT INTO aprendizaje_secciones_leccion
  (lesson_id, parent_section_id, section_type, title, body_html, ai_prompt,
   ai_exercises_enabled, media_id, duration_minutes, sort_order, published,
   created_at, updated_at)
SELECT l.id, NULL, 'activity', 'Actividad', '', NULL,
       0, NULL, 0, 2, 1, NOW(), NOW()
FROM aprendizaje_lecciones AS l
WHERE NOT EXISTS (
  SELECT 1 FROM aprendizaje_secciones_leccion AS s
  WHERE s.lesson_id = l.id AND s.parent_section_id IS NULL
    AND s.section_type = 'activity' AND LOWER(TRIM(s.title)) = 'actividad'
);

INSERT INTO aprendizaje_secciones_leccion
  (lesson_id, parent_section_id, section_type, title, body_html, ai_prompt,
   ai_exercises_enabled, media_id, duration_minutes, sort_order, published,
   created_at, updated_at)
SELECT l.id, NULL, 'evaluation', 'Evaluación', '', NULL,
       0, NULL, 0, 3, 1, NOW(), NOW()
FROM aprendizaje_lecciones AS l
WHERE NOT EXISTS (
  SELECT 1 FROM aprendizaje_secciones_leccion AS s
  WHERE s.lesson_id = l.id AND s.parent_section_id IS NULL
    AND s.section_type = 'evaluation'
    AND LOWER(TRIM(s.title)) IN ('evaluacion', 'evaluación')
);

DROP TEMPORARY TABLE IF EXISTS tmp_apartados_leccion;
CREATE TEMPORARY TABLE tmp_apartados_leccion AS
SELECT l.id AS lesson_id,
  (SELECT s.id FROM aprendizaje_secciones_leccion AS s
   WHERE s.lesson_id=l.id AND s.parent_section_id IS NULL
     AND s.section_type='presentation'
     AND LOWER(TRIM(s.title)) IN ('leccion','lección','lecciones')
   ORDER BY s.id LIMIT 1) AS lessons_tab_id,
  (SELECT s.id FROM aprendizaje_secciones_leccion AS s
   WHERE s.lesson_id=l.id AND s.parent_section_id IS NULL
     AND s.section_type='activity' AND LOWER(TRIM(s.title))='actividad'
   ORDER BY s.id LIMIT 1) AS activity_tab_id,
  (SELECT s.id FROM aprendizaje_secciones_leccion AS s
   WHERE s.lesson_id=l.id AND s.parent_section_id IS NULL
     AND s.section_type='evaluation'
     AND LOWER(TRIM(s.title)) IN ('evaluacion','evaluación')
   ORDER BY s.id LIMIT 1) AS evaluation_tab_id
FROM aprendizaje_lecciones AS l;

-- Conserva todo el contenido y organiza únicamente los elementos sin padre.
UPDATE aprendizaje_secciones_leccion AS content
INNER JOIN tmp_apartados_leccion AS tabs ON tabs.lesson_id=content.lesson_id
SET content.parent_section_id=CASE
      WHEN content.section_type='activity' THEN tabs.activity_tab_id
      WHEN content.section_type IN ('evaluation','exam') THEN tabs.evaluation_tab_id
      ELSE tabs.lessons_tab_id
    END,
    content.updated_at=NOW()
WHERE content.parent_section_id IS NULL
  AND content.id NOT IN (tabs.lessons_tab_id,tabs.activity_tab_id,tabs.evaluation_tab_id);

DROP TEMPORARY TABLE IF EXISTS tmp_apartados_leccion;

