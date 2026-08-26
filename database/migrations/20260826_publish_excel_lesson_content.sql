-- Hace visibles las lecciones y secciones terminadas importadas desde
-- "Estructura de trabajo de matematicas Primaria 1(3).xlsx".
-- Los planes multimedia permanecen como borradores hasta que exista el archivo.

START TRANSACTION;

UPDATE aprendizaje_lecciones
SET published = 1
WHERE slug REGEXP '^[a-z]{3}-(p[1-6]|s[1-3]|pre[1-3])-[0-9]{3}$';

UPDATE aprendizaje_secciones_leccion
SET published = 1
WHERE body_html LIKE '<!-- etl-google-cloud-matematicas:created:%';

COMMIT;
