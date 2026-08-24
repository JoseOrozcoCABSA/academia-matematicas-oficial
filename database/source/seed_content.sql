USE academia_matematicas;

INSERT INTO lesson_sections (lesson_id,section_type,title,body_html,duration_minutes,sort_order,published)
SELECT l.id,'presentation','Presentación del tema',
'<p>La suma es una operación matemática que consiste en juntar o agregar dos o más cantidades para obtener el total.</p><ul><li>Sumar números naturales de una y más cifras.</li><li>Resolver problemas de la vida diaria.</li><li>Aplicar la propiedad conmutativa.</li></ul>',
3,1,1 FROM lessons l
WHERE l.slug='suma-numeros-naturales'
AND NOT EXISTS (SELECT 1 FROM lesson_sections s WHERE s.lesson_id=l.id AND s.section_type='presentation');

INSERT INTO lesson_sections (lesson_id,section_type,title,body_html,duration_minutes,sort_order,published)
SELECT l.id,'video','Video de apoyo','<p>¿Qué es la suma? Entendemos la adición con ejemplos sencillos.</p>',3,2,1
FROM lessons l WHERE l.slug='suma-numeros-naturales'
AND NOT EXISTS (SELECT 1 FROM lesson_sections s WHERE s.lesson_id=l.id AND s.section_type='video');

INSERT INTO lesson_sections (lesson_id,section_type,title,body_html,duration_minutes,sort_order,published)
SELECT l.id,'example','Ejemplo resuelto','<p>24 + 13 = 37</p>',5,3,1
FROM lessons l WHERE l.slug='suma-numeros-naturales'
AND NOT EXISTS (SELECT 1 FROM lesson_sections s WHERE s.lesson_id=l.id AND s.section_type='example');

INSERT INTO lesson_sections (lesson_id,section_type,title,body_html,duration_minutes,sort_order,published)
SELECT l.id,'mini','¿Qué es una fracción?','<p>Conceptos básicos: numerador, denominador y tipos de fracciones.</p>',5,1,1
FROM lessons l WHERE l.slug='suma-fracciones'
AND NOT EXISTS (SELECT 1 FROM lesson_sections s WHERE s.lesson_id=l.id AND s.sort_order=1);
INSERT INTO lesson_sections (lesson_id,section_type,title,body_html,duration_minutes,sort_order,published)
SELECT l.id,'mini','Fracciones equivalentes','<p>Aprende a encontrar fracciones equivalentes y simplificar.</p>',6,2,1
FROM lessons l WHERE l.slug='suma-fracciones'
AND NOT EXISTS (SELECT 1 FROM lesson_sections s WHERE s.lesson_id=l.id AND s.sort_order=2);
INSERT INTO lesson_sections (lesson_id,section_type,title,body_html,duration_minutes,sort_order,published)
SELECT l.id,'mini','Suma de fracciones con el mismo denominador','<p>Suma las fracciones sin cambiar el denominador.</p>',8,3,1
FROM lessons l WHERE l.slug='suma-fracciones'
AND NOT EXISTS (SELECT 1 FROM lesson_sections s WHERE s.lesson_id=l.id AND s.sort_order=3);
INSERT INTO lesson_sections (lesson_id,section_type,title,body_html,duration_minutes,sort_order,published)
SELECT l.id,'mini','Suma de fracciones con distinto denominador','<p>Encuentra el común denominador y suma correctamente.</p>',10,4,1
FROM lessons l WHERE l.slug='suma-fracciones'
AND NOT EXISTS (SELECT 1 FROM lesson_sections s WHERE s.lesson_id=l.id AND s.sort_order=4);
