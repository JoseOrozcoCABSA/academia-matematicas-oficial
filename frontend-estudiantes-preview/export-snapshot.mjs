import fs from 'node:fs/promises';
import path from 'node:path';
import { fileURLToPath } from 'node:url';
import { createRequire } from 'node:module';

const directory = path.dirname(fileURLToPath(import.meta.url));
const require = createRequire(new URL('../learning-service/package.json', import.meta.url));
const dotenv = require('dotenv');
const mysql = require('mysql2/promise');
dotenv.config({ path: path.resolve(directory, '../.env'), quiet: true });
const output = path.resolve(directory, 'data/snapshot.json');
const tables = [
  'aprendizaje_niveles_educativos', 'aprendizaje_categorias',
  'aprendizaje_lecciones', 'aprendizaje_secciones_leccion',
  'aprendizaje_recursos', 'aprendizaje_medios',
  'aprendizaje_medios_leccion', 'aprendizaje_configuracion_sitio',
  'practica_ejercicios',
];
let connection;
try {
  connection = await mysql.createConnection({
    host: process.env.DB_HOST, port: Number(process.env.DB_PORT), user: process.env.DB_USER,
    password: process.env.DB_PASSWORD, database: process.env.DB_NAME, connectTimeout: 8000,
  });
} catch (error) {
  if (error?.code === 'ETIMEDOUT' || error?.code === 'EAI_AGAIN' || error?.code === 'ENOTFOUND') {
    throw new Error(
      `No existe ruta hacia MySQL (${process.env.DB_HOST}:${process.env.DB_PORT}). ` +
      'DB_HOST es una IP privada; genere el snapshot desde la red interna. ' +
      'Para levantar el preview no ejecute este exportador: use ejecutar-todo-frontend-estudiantes-preview.sh.',
      { cause: error },
    );
  }
  throw error;
}
const snapshot = { generated_at: new Date().toISOString(), source_database: process.env.DB_NAME, tables: {} };
try {
  for (const table of tables) {
    const [rows, fields] = await connection.query(`SELECT * FROM \`${table}\``);
    snapshot.tables[table] = { columns: fields.map((field) => field.name), rows };
  }
} finally { await connection.end(); }
await fs.mkdir(path.dirname(output), { recursive: true });
await fs.writeFile(output, JSON.stringify(snapshot), 'utf8');
console.log(`Snapshot académico: ${output}`);
