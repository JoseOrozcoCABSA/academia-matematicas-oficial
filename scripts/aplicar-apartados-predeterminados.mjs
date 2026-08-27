import fs from 'node:fs';
import path from 'node:path';
import { fileURLToPath } from 'node:url';
import dotenv from '../learning-service/node_modules/dotenv/lib/main.js';
import mysql from '../learning-service/node_modules/mysql2/promise.js';

const projectRoot = path.resolve(path.dirname(fileURLToPath(import.meta.url)), '..');
dotenv.config({ path: path.join(projectRoot, '.env') });

const connection = await mysql.createConnection({
  host: process.env.DB_HOST,
  port: Number(process.env.DB_PORT || 3306),
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  database: process.env.DB_NAME,
  charset: 'utf8mb4',
  multipleStatements: true,
});

try {
  const migration = fs.readFileSync(
    path.join(projectRoot, 'database/migrations/20260827_apartados_predeterminados_lecciones.sql'),
    'utf8',
  );
  const [[before]] = await connection.query(
    'SELECT COUNT(*) lessons, (SELECT COUNT(*) FROM aprendizaje_secciones_leccion) sections FROM aprendizaje_lecciones',
  );
  await connection.query(migration);
  const [[after]] = await connection.query(`
    SELECT COUNT(*) lessons,
      (SELECT COUNT(*) FROM aprendizaje_secciones_leccion) sections,
      (SELECT COUNT(*) FROM aprendizaje_secciones_leccion WHERE parent_section_id IS NULL) root_tabs,
      (SELECT COUNT(*) FROM aprendizaje_lecciones l WHERE
        (SELECT COUNT(*) FROM aprendizaje_secciones_leccion s
         WHERE s.lesson_id=l.id AND s.parent_section_id IS NULL
           AND ((s.section_type='presentation' AND LOWER(TRIM(s.title))='lecciones')
             OR (s.section_type='activity' AND LOWER(TRIM(s.title))='actividad')
             OR (s.section_type='evaluation' AND LOWER(TRIM(s.title)) IN ('evaluacion','evaluación'))))=3
      ) lessons_with_defaults
    FROM aprendizaje_lecciones
  `);
  console.log(JSON.stringify({ database: process.env.DB_NAME, before, after }, null, 2));
} finally {
  await connection.end();
}
