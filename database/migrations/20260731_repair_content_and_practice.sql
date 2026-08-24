START TRANSACTION;

UPDATE `ia_modelos` SET `nombre` = 'Tutor matemático local' WHERE `id` = 1;
UPDATE `ia_prompts` SET `nombre` = 'Tutor matemático paso a paso', `contenido` = 'Acompaña al estudiante sin revelar inmediatamente la respuesta. Explica cada operación paso a paso y adapta el lenguaje a su nivel educativo.' WHERE `id` = 1;
UPDATE `ia_prompts` SET `contenido` = 'Genera diez ejercicios de matemáticas relacionados con la lección. Devuelve preguntas, respuestas y explicación en JSON.' WHERE `id` = 2;
UPDATE `ia_prompts` SET `nombre` = 'Evaluación de aprendizaje', `contenido` = 'Genera una evaluación breve y progresiva basada en los objetivos y contenido de la lección.' WHERE `id` = 3;
UPDATE `ia_mensajes` SET `contenido` = 'Ayúdame con una ecuación' WHERE `id` = 1;

UPDATE `aprendizaje_secciones_leccion` SET `title` = 'Video complementario' WHERE `id` = 44 AND TRIM(`title`) = '';
UPDATE `aprendizaje_secciones_leccion` SET `title` = 'Presentación' WHERE `id` = 67;
UPDATE `aprendizaje_secciones_leccion` SET `title` = 'Video-lección' WHERE `id` = 76;
UPDATE `aprendizaje_secciones_leccion` SET `title` = 'Nueva evaluación' WHERE `id` = 80;
UPDATE `aprendizaje_secciones_leccion` SET `title` = 'Presentación de apoyo' WHERE `id` = 84;

UPDATE `aprendizaje_secciones_leccion`
SET `ai_exercises_enabled` = 1
WHERE `section_type` IN ('activity', 'evaluation', 'exam');

UPDATE `ia_modelos`
SET `configuracion` = JSON_OBJECT(
  'temperature', 0.3,
  'timeout_ms', 120000,
  'fallback_local', TRUE,
  'purposes', JSON_ARRAY('tutor')
)
WHERE `id` = 1;

UPDATE `ia_modelos`
SET `configuracion` = JSON_OBJECT(
  'temperature', 0.2,
  'timeout_ms', 45000,
  'fallback_local', TRUE,
  'api_key_env', 'OPENAI_API_KEY',
  'purposes', JSON_ARRAY('generacion_ejercicios', 'evaluacion')
)
WHERE `id` = 2;

COMMIT;
