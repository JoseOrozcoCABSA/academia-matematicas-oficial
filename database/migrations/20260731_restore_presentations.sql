START TRANSACTION;

INSERT INTO aprendizaje_medios
  (title, media_type, file_path, alt_text, upload_context, file_size)
SELECT
  'Presentación: suma de números naturales',
  'document',
  '/api/learning/uploads/cabsa-suma-numeros-naturales.pptx',
  'Presentación didáctica sobre la suma de números naturales',
  'content',
  107794
WHERE NOT EXISTS (
  SELECT 1 FROM aprendizaje_medios
  WHERE file_path = '/api/learning/uploads/cabsa-suma-numeros-naturales.pptx'
);

INSERT INTO aprendizaje_medios
  (title, media_type, file_path, alt_text, upload_context, file_size)
SELECT
  'Presentación: ecuaciones lineales',
  'document',
  '/api/learning/uploads/cabsa-ecuaciones-lineales.pptx',
  'Presentación didáctica sobre ecuaciones lineales',
  'content',
  109410
WHERE NOT EXISTS (
  SELECT 1 FROM aprendizaje_medios
  WHERE file_path = '/api/learning/uploads/cabsa-ecuaciones-lineales.pptx'
);

UPDATE aprendizaje_secciones_leccion
SET body_html = '/api/learning/uploads/cabsa-suma-numeros-naturales.pptx',
    media_id = (
      SELECT id FROM aprendizaje_medios
      WHERE file_path = '/api/learning/uploads/cabsa-suma-numeros-naturales.pptx'
      ORDER BY id DESC LIMIT 1
    )
WHERE id = 84;

UPDATE aprendizaje_secciones_leccion
SET body_html = '/api/learning/uploads/cabsa-ecuaciones-lineales.pptx',
    media_id = (
      SELECT id FROM aprendizaje_medios
      WHERE file_path = '/api/learning/uploads/cabsa-ecuaciones-lineales.pptx'
      ORDER BY id DESC LIMIT 1
    )
WHERE id = 67;

COMMIT;
