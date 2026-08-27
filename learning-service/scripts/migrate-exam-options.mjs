import dotenv from 'dotenv';
import mysql from 'mysql2/promise';
import { fileURLToPath } from 'node:url';

dotenv.config({ path: fileURLToPath(new URL('../../.env', import.meta.url)) });

const connection = await mysql.createConnection({
  host: process.env.DB_HOST,
  port: Number(process.env.DB_PORT),
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  database: process.env.DB_NAME,
});

const definitions = {
  ai_exercise_type: "varchar(40) NOT NULL DEFAULT 'generic' AFTER ai_exercises_enabled",
  ai_difficulty: "varchar(20) NOT NULL DEFAULT 'Básica' AFTER ai_exercise_type",
  ai_exercise_count: 'int unsigned NOT NULL DEFAULT 10 AFTER ai_difficulty',
};

try {
  const [columns] = await connection.query(
    `SELECT COLUMN_NAME FROM information_schema.COLUMNS
     WHERE TABLE_SCHEMA = ? AND TABLE_NAME = 'aprendizaje_secciones_leccion'`,
    [process.env.DB_NAME],
  );
  const existing = new Set(columns.map((column) => column.COLUMN_NAME));
  for (const [name, definition] of Object.entries(definitions)) {
    if (!existing.has(name)) {
      await connection.query(`ALTER TABLE aprendizaje_secciones_leccion ADD COLUMN ${name} ${definition}`);
    }
  }
  const [verified] = await connection.query(
    `SELECT COLUMN_NAME, COLUMN_DEFAULT, IS_NULLABLE FROM information_schema.COLUMNS
     WHERE TABLE_SCHEMA = ? AND TABLE_NAME = 'aprendizaje_secciones_leccion'
       AND COLUMN_NAME IN ('ai_exercise_type', 'ai_difficulty', 'ai_exercise_count')
     ORDER BY ORDINAL_POSITION`,
    [process.env.DB_NAME],
  );
  console.log(JSON.stringify(verified));
} finally {
  await connection.end();
}
