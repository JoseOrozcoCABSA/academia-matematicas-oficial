import { createRequire } from 'node:module';
import { dirname, join } from 'node:path';
import { fileURLToPath } from 'node:url';
import { mkdir, writeFile } from 'node:fs/promises';

const projectRoot = dirname(dirname(fileURLToPath(import.meta.url)));
const requireFromService = createRequire(join(projectRoot, 'identity-service', 'package.json'));
const mysql = requireFromService('mysql2/promise');
const databaseName = process.env.DB_NAME ?? 'academia-matematicas-soa';
const outputPath = join(projectRoot, 'database', 'init', '01-academia-matematicas-soa.sql');

const required = (name) => {
  const value = process.env[name]?.trim();
  if (!value) throw new Error(`Falta la variable obligatoria ${name}`);
  return value;
};

const connection = await mysql.createConnection({
  host: process.env.DB_HOST ?? '127.0.0.1',
  port: Number(process.env.DB_PORT ?? 3306),
  user: required('DB_USER'),
  password: required('DB_PASSWORD'),
  database: databaseName,
  dateStrings: true,
});

const identifier = (value) => `\`${String(value).replaceAll('`', '``')}\``;
const literal = (value) => {
  if (value === null || value === undefined) return 'NULL';
  if (Buffer.isBuffer(value)) return `X'${value.toString('hex')}'`;
  if (typeof value === 'number' || typeof value === 'bigint') return String(value);
  if (typeof value === 'boolean') return value ? '1' : '0';
  const text = typeof value === 'object' ? JSON.stringify(value) : String(value);
  return `'${text
    .replaceAll('\\', '\\\\')
    .replaceAll('\0', '\\0')
    .replaceAll('\n', '\\n')
    .replaceAll('\r', '\\r')
    .replaceAll('\x1a', '\\Z')
    .replaceAll("'", "\\'")}'`;
};

const [tableRows] = await connection.query('SHOW FULL TABLES WHERE Table_type = "BASE TABLE"');
const tableKey = Object.keys(tableRows[0] ?? {}).find((key) => key.startsWith('Tables_in_'));
const tables = tableKey ? tableRows.map((row) => row[tableKey]).sort() : [];
if (!tables.length) throw new Error(`La base ${databaseName} no contiene tablas`);

const output = [
  '-- Exportación reproducible de Academia Matemáticas Final.',
  '-- Generada desde la base unificada vigente; los respaldos originales están en database/source.',
  'SET NAMES utf8mb4;',
  'SET FOREIGN_KEY_CHECKS=0;',
  `CREATE DATABASE IF NOT EXISTS ${identifier(databaseName)} CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;`,
  `USE ${identifier(databaseName)};`,
  '',
];

for (const table of tables) {
  const [[definition]] = await connection.query(`SHOW CREATE TABLE ${identifier(table)}`);
  output.push(`DROP TABLE IF EXISTS ${identifier(table)};`);
  output.push(`${definition['Create Table']};`, '');
}

for (const table of tables) {
  const [rows, fields] = await connection.query(`SELECT * FROM ${identifier(table)}`);
  if (!rows.length) continue;
  const columns = fields.map((field) => field.name);
  const prefix = `INSERT INTO ${identifier(table)} (${columns.map(identifier).join(',')}) VALUES`;
  for (let offset = 0; offset < rows.length; offset += 100) {
    const chunk = rows.slice(offset, offset + 100);
    output.push(prefix);
    output.push(`${chunk.map((row) => `(${columns.map((column) => literal(row[column])).join(',')})`).join(',\n')};`, '');
  }
}

output.push('SET FOREIGN_KEY_CHECKS=1;', '');
await mkdir(dirname(outputPath), { recursive: true });
await writeFile(outputPath, output.join('\n'), 'utf8');
await connection.end();
process.stdout.write(`Exportadas ${tables.length} tablas a ${outputPath}\n`);
