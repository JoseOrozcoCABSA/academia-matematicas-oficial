-- ============================================================
-- Seed: secciones de lecciones para Academia CABSA
-- Ejecutar DESPUÉS de schema.sql
-- ============================================================

USE academia_matematicas;

-- Limpiar secciones existentes para permitir re-importar
DELETE FROM lesson_sections WHERE lesson_id IN (
    SELECT id FROM lessons WHERE slug IN ('suma-numeros-naturales', 'suma-fracciones')
);

-- ============================================================
-- LECCIÓN: Suma de números naturales  (tipo: topic)
-- ============================================================

SET @lid_topic = (SELECT id FROM lessons WHERE slug = 'suma-numeros-naturales');

INSERT INTO lesson_sections (lesson_id, section_type, title, body_html, duration_minutes, sort_order, published) VALUES

(@lid_topic, 'presentation', 'Introducción a la suma',
'<h3>¿Qué es la suma?</h3>
<p>La <strong>suma</strong> o <strong>adición</strong> es la operación matemática que combina dos o más cantidades para obtener un <strong>total</strong> llamado resultado.</p>
<h3>Elementos de la suma</h3>
<ul>
  <li><strong>Sumandos:</strong> los números que se suman.</li>
  <li><strong>Resultado o total:</strong> el número final obtenido.</li>
</ul>
<p class="formula-highlight">Sumando + Sumando = Resultado</p>
<p>Ejemplo: <strong>24 + 13 = 37</strong><br>Aquí 24 y 13 son los sumandos, y 37 es el resultado.</p>
<h3>Propiedades importantes</h3>
<ul>
  <li><strong>Conmutativa:</strong> a + b = b + a (el orden no cambia el resultado)</li>
  <li><strong>Asociativa:</strong> (a + b) + c = a + (b + c)</li>
  <li><strong>Elemento neutro:</strong> a + 0 = a</li>
</ul>',
8, 1, 1),

(@lid_topic, 'video', 'Video de apoyo',
'<p>Observa el siguiente video para ver cómo se realizan sumas de números naturales paso a paso.</p>
<div class="video-embed-box">
  <span class="play-icon">&#9654;</span>
  <div>
    <strong>Suma de números naturales — Paso a paso</strong>
    <small>Duración aproximada: 5 minutos</small>
  </div>
</div>
<h3>Temas que cubre el video</h3>
<ul>
  <li>Suma de números de una sola cifra</li>
  <li>Suma de números de dos cifras sin reagrupación</li>
  <li>Suma con reagrupación (cuando hay "llevadas")</li>
  <li>Resolución de problemas cotidianos con sumas</li>
</ul>',
5, 2, 1),

(@lid_topic, 'example', 'Ejemplos resueltos',
'<h3>Ejemplo 1 — Suma sencilla</h3>
<p>Calcula: <strong>24 + 13 = ?</strong></p>
<ol>
  <li>Suma las unidades: 4 + 3 = 7</li>
  <li>Suma las decenas: 2 + 1 = 3</li>
  <li>Resultado: <strong>37</strong></li>
</ol>
<hr>
<h3>Ejemplo 2 — Con reagrupación</h3>
<p>Calcula: <strong>48 + 37 = ?</strong></p>
<ol>
  <li>Unidades: 8 + 7 = 15 → escribes 5 y llevas 1</li>
  <li>Decenas: 4 + 3 + 1 (llevada) = 8</li>
  <li>Resultado: <strong>85</strong></li>
</ol>
<hr>
<h3>Ejemplo 3 — Problema de la vida real</h3>
<p>María tiene 36 manzanas y Juan le da 28 más. ¿Cuántas manzanas tiene María en total?</p>
<p class="formula-highlight">36 + 28 = 64 manzanas</p>',
10, 3, 1),

(@lid_topic, 'activity', 'Actividad práctica',
'<p>Aplica lo que has aprendido resolviendo estos ejercicios:</p>
<h3>Ejercicio 1</h3>
<p>Calcula: <strong>35 + 42 = ?</strong></p>
<p><em>Respuesta: <strong>77</strong></em></p>
<h3>Ejercicio 2</h3>
<p>Calcula: <strong>56 + 78 = ?</strong></p>
<p><em>Respuesta: <strong>134</strong></em></p>
<h3>Ejercicio 3</h3>
<p>Un estudiante tiene 124 estampas y consigue 89 más. ¿Cuántas tiene en total?</p>
<p><em>Respuesta: <strong>213 estampas</strong></em></p>
<h3>Reto extra</h3>
<p>¿Cuánto es 247 + 359 + 118?</p>
<p><em>Respuesta: <strong>724</strong></em></p>',
8, 4, 1),

(@lid_topic, 'evaluation', 'Evaluación final',
'<h3>Evaluación: Suma de números naturales</h3>
<p>Responde correctamente para demostrar lo que aprendiste.</p>
<h3>Pregunta 1</h3>
<p>¿Cómo se llaman los números que se suman?</p>
<ul>
  <li>a) Factores</li>
  <li>b) <strong>Sumandos ✓</strong></li>
  <li>c) Cocientes</li>
  <li>d) Divisores</li>
</ul>
<h3>Pregunta 2</h3>
<p>¿Cuánto es 567 + 348?</p>
<p>Respuesta correcta: <strong>915</strong></p>
<h3>Pregunta 3</h3>
<p>¿Cuál es el elemento neutro de la suma?</p>
<p>Respuesta: <strong>0</strong> — ya que cualquier número más cero es igual a ese mismo número.</p>',
4, 5, 1);

-- ============================================================
-- LECCIÓN: Suma de fracciones  (tipo: path)
-- ============================================================

SET @lid_path = (SELECT id FROM lessons WHERE slug = 'suma-fracciones');

INSERT INTO lesson_sections (lesson_id, section_type, title, body_html, duration_minutes, sort_order, published) VALUES

(@lid_path, 'mini', 'Mini 1 — Igual denominador',
'<h3>Fracciones con el mismo denominador</h3>
<p>Cuando dos fracciones tienen el <strong>mismo denominador</strong>, suma solo los numeradores y mantén el denominador.</p>
<p class="formula-highlight">a/c + b/c = (a+b) / c</p>
<h3>Ejemplos</h3>
<ul>
  <li>1/5 + 2/5 = <strong>3/5</strong></li>
  <li>3/8 + 4/8 = <strong>7/8</strong></li>
  <li>2/9 + 5/9 = <strong>7/9</strong></li>
</ul>
<h3>Practica</h3>
<p>¿Cuánto es 2/7 + 3/7?</p>
<p>Respuesta: <strong>5/7</strong></p>',
8, 1, 1),

(@lid_path, 'mini', 'Mini 2 — Diferente denominador',
'<h3>Fracciones con diferente denominador</h3>
<p>Cuando los denominadores son distintos, debes encontrar el <strong>mínimo común múltiplo (m.c.m.)</strong> de los denominadores.</p>
<h3>Pasos</h3>
<ol>
  <li>Encuentra el m.c.m. de los denominadores.</li>
  <li>Convierte cada fracción al nuevo denominador común.</li>
  <li>Suma los numeradores y simplifica si es posible.</li>
</ol>
<h3>Ejemplo: 1/3 + 1/4</h3>
<ol>
  <li>m.c.m.(3, 4) = 12</li>
  <li>1/3 = 4/12 &nbsp;&nbsp; 1/4 = 3/12</li>
  <li>4/12 + 3/12 = <strong>7/12</strong></li>
</ol>',
12, 2, 1),

(@lid_path, 'mini', 'Mini 3 — Fracciones mixtas',
'<h3>Suma de fracciones mixtas</h3>
<p>Una <strong>fracción mixta</strong> combina un número entero con una fracción propia, como 2&#189; (dos y medio).</p>
<h3>Método</h3>
<ol>
  <li>Suma los números enteros por separado.</li>
  <li>Suma las partes fraccionarias.</li>
  <li>Si la fracción resultante es impropia, conviértela a mixta.</li>
  <li>Combina el entero con la fracción obtenida.</li>
</ol>
<h3>Ejemplo: 1&#8531; + 2&#189;</h3>
<ol>
  <li>Enteros: 1 + 2 = 3</li>
  <li>Fracciones: 1/3 + 1/2 = 2/6 + 3/6 = 5/6</li>
  <li>Total: 3 + 5/6 = <strong>3&#8537;</strong></li>
</ol>',
14, 3, 1),

(@lid_path, 'mini', 'Mini 4 — Tres o más fracciones',
'<h3>Suma de tres o más fracciones</h3>
<p>Cuando sumas tres o más fracciones, aplicas el mismo proceso encontrando el m.c.m. de <strong>todos</strong> los denominadores.</p>
<h3>Ejemplo: 1/2 + 1/3 + 1/6</h3>
<ol>
  <li>m.c.m.(2, 3, 6) = 6</li>
  <li>1/2 = 3/6 &nbsp; 1/3 = 2/6 &nbsp; 1/6 = 1/6</li>
  <li>3/6 + 2/6 + 1/6 = 6/6 = <strong>1</strong></li>
</ol>
<h3>Ejemplo 2: 1/4 + 1/3 + 1/6</h3>
<ol>
  <li>m.c.m.(4, 3, 6) = 12</li>
  <li>3/12 + 4/12 + 2/12 = 9/12 = <strong>3/4</strong></li>
</ol>',
12, 4, 1),

(@lid_path, 'example', 'Ejercicios de práctica',
'<h3>Aplica lo aprendido</h3>
<p>Resuelve cada ejercicio usando las técnicas de los minis anteriores:</p>
<ol>
  <li>3/8 + 5/8 = 8/8 = <strong>1</strong></li>
  <li>1/4 + 2/3 = 3/12 + 8/12 = <strong>11/12</strong></li>
  <li>2&#189; + 1&#188; = 3 + 3/4 = <strong>3&#190;</strong></li>
  <li>1/2 + 1/4 + 1/8 = 4/8 + 2/8 + 1/8 = <strong>7/8</strong></li>
</ol>
<h3>Problema aplicado</h3>
<p>Una receta requiere 1/3 de taza de aceite y 2/5 de taza de leche. ¿Cuánto líquido hay en total?</p>
<p class="formula-highlight">1/3 + 2/5 = 5/15 + 6/15 = 11/15 de taza</p>',
10, 5, 1),

(@lid_path, 'evaluation', 'Evaluación final',
'<h3>Evaluación: Suma de fracciones</h3>
<p>Demuestra lo que aprendiste completando esta evaluación:</p>
<h3>Ejercicio 1 (2 pts)</h3>
<p>Calcula: 3/5 + 1/5</p>
<p>Respuesta: <strong>4/5</strong></p>
<h3>Ejercicio 2 (3 pts)</h3>
<p>Calcula: 2/3 + 1/4</p>
<p>Respuesta: <strong>11/12</strong></p>
<h3>Ejercicio 3 (5 pts)</h3>
<p>Un recipiente tiene 2/5 de litro de agua y se le agregan 3/8 de litro más. ¿Cuánto hay en total?</p>
<p class="formula-highlight">2/5 + 3/8 = 16/40 + 15/40 = 31/40 litros</p>',
4, 6, 1);
