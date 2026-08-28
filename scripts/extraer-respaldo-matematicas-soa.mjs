import fs from 'node:fs/promises';
import path from 'node:path';
import { createRequire } from 'node:module';

const require = createRequire(new URL('../learning-service/package.json', import.meta.url));
const dotenv = require('dotenv');
const mysql = require('mysql2/promise');

const [sourceArg, outputDirArg] = process.argv.slice(2);
if (!sourceArg || !outputDirArg) {
  throw new Error('Uso: node scripts/extraer-respaldo-matematicas-soa.mjs <respaldo_completo.sql> <directorio-salida>');
}

dotenv.config({ path: path.resolve('.env'), quiet: true });
const source = path.resolve(sourceArg);
const outputDir = path.resolve(outputDirArg);
const mysqlOutput = path.join(outputDir, 'respaldo_academia_matematicas_soa_mysql.sql');
const jsonOutput = path.join(outputDir, 'respaldo_academia_matematicas_soa.json');
const staging = 'academia_matematicas_import_stage';
const tables = [
  'education_levels', 'categories', 'lessons', 'media',
  'lesson_sections', 'resources', 'lesson_media', 'exercises',
];

const dump = await fs.readFile(source, 'utf8');
const blocks = [];
for (const table of tables) {
  const marker = `-- Table structure for table \`${table}\``;
  const start = dump.indexOf(marker);
  if (start < 0) throw new Error(`No se encontró la tabla académica ${table}`);
  const next = dump.indexOf('-- Table structure for table `', start + marker.length);
  blocks.push(dump.slice(start, next < 0 ? dump.length : next).trim());
}

const header = [
  '-- Respaldo aislado de Academia Matemáticas SOA',
  `-- Fuente: ${path.basename(source)}`,
  '-- Contiene únicamente niveles, categorías, lecciones, secciones, medios, recursos y ejercicios.',
  'SET NAMES utf8mb4;',
  'SET FOREIGN_KEY_CHECKS=0;',
].join('\n');
const footer = '\nSET FOREIGN_KEY_CHECKS=1;\n';
await fs.mkdir(outputDir, { recursive: true });
await fs.writeFile(mysqlOutput, `${header}\n\n${blocks.join('\n\n')}\n${footer}`, 'utf8');

const connection = await mysql.createConnection({
  host: process.env.DB_HOST,
  port: Number(process.env.DB_PORT || 3306),
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  multipleStatements: true,
});
const snapshot = {
  generated_at: new Date().toISOString(),
  source_database: 'respaldo_completo.sql (solo Academia Matemáticas)',
  tables: {},
};
try {
  await connection.query(`CREATE DATABASE IF NOT EXISTS \`${staging}\` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci`);
  await connection.query(`SET FOREIGN_KEY_CHECKS=0; USE \`${staging}\``);
  for (let index = 0; index < tables.length; index += 1) {
    const table = tables[index];
    let block = blocks[index].slice(blocks[index].indexOf(`DROP TABLE IF EXISTS \`${table}\``));
    block = block
      .replace(/\/\*!\d+ SET @saved_cs_client[\s\S]*?;\s*/g, '')
      .replace(/\/\*!\d+ SET character_set_client[\s\S]*?;\s*/g, '')
      .replace(/UNLOCK TABLES;\s*/g, '')
      .replace(/(?:^|\n)LOCK TABLES[\s\S]*?;\s*/g, '\n')
      .replace(/\/\*!\d+ ALTER TABLE[\s\S]*?;\s*/g, '');
    await connection.query(`USE \`${staging}\`; ${block}`);
  }
  await connection.query('SET FOREIGN_KEY_CHECKS=1');
  for (const table of tables) {
    const [rows, fields] = await connection.query(`SELECT * FROM \`${staging}\`.\`${table}\``);
    snapshot.tables[table] = { columns: fields.map((field) => field.name), rows };
  }
} finally {
  await connection.end();
}
await fs.writeFile(jsonOutput, JSON.stringify(snapshot), 'utf8');

console.log(`SQL MySQL académico: ${mysqlOutput}`);
console.log(`Snapshot académico: ${jsonOutput}`);
for (const [table, content] of Object.entries(snapshot.tables)) {
  console.log(`${table}: ${content.rows.length}`);
}
