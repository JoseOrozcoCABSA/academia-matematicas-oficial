import path from 'node:path';
import { createRequire } from 'node:module';

const require = createRequire(new URL('../learning-service/package.json', import.meta.url));
const dotenv = require('dotenv');
const mysql = require('mysql2/promise');
dotenv.config({ path: path.resolve('.env'), quiet: true });

const production = process.env.DB_NAME;
const staging = 'academia_matematicas_import_stage';
const stamp = new Date().toISOString().replace(/[-:TZ.]/g, '').slice(0, 14);
const backup = `academia_matematicas_backup_grados_${stamp}`;
const tables = ['aprendizaje_categorias', 'aprendizaje_lecciones', 'aprendizaje_secciones_leccion', 'aprendizaje_medios', 'aprendizaje_recursos', 'aprendizaje_medios_leccion', 'practica_ejercicios'];
const gradeByLessonSlug = {
  'suma-numeros-naturales': { name: 'Cuarto de primaria', slug: 'cuarto-primaria', lessonSlug: 'suma-numeros-naturales-p4', previousSlug: 'suma-numeros-naturales-cuarto-primaria', level: 'primaria', order: 4 },
  'suma-fracciones': { name: 'Quinto de primaria', slug: 'quinto-primaria', lessonSlug: 'suma-fracciones-p5', previousSlug: 'suma-fracciones-quinto-primaria', level: 'primaria', order: 5 },
  'ecuaciones-lineales-s1': { name: 'Primero de secundaria', slug: 'primero-secundaria', lessonSlug: 'ecuaciones-lineales-s1-secundaria', previousSlug: 'ecuaciones-lineales-primero-secundaria', level: 'secundaria', order: 1 },
};
const connection = await mysql.createConnection({
  host: process.env.DB_HOST, port: Number(process.env.DB_PORT || 3306), user: process.env.DB_USER,
  password: process.env.DB_PASSWORD, database: production, connectTimeout: 10000,
});

async function insert(table, row, overrides = {}) {
  const payload = { ...row, ...overrides };
  delete payload.id;
  const columns = Object.keys(payload);
  const [result] = await connection.query(
    `INSERT INTO \`${table}\` (${columns.map((column) => `\`${column}\``).join(',')}) VALUES (${columns.map(() => '?').join(',')})`,
    columns.map((column) => payload[column]),
  );
  return result.insertId;
}

async function createBackup() {
  await connection.query(`CREATE DATABASE \`${backup}\` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci`);
  for (const table of tables) {
    await connection.query(`CREATE TABLE \`${backup}\`.\`${table}\` LIKE \`${production}\`.\`${table}\``);
    await connection.query(`INSERT INTO \`${backup}\`.\`${table}\` SELECT * FROM \`${production}\`.\`${table}\``);
  }
}

async function ensureGrades() {
  const ids = new Map();
  for (const grade of Object.values(gradeByLessonSlug)) {
    const [result] = await connection.query(
      `INSERT INTO aprendizaje_categorias (name,slug,description,education_level,icon,color,sort_order,active)
       VALUES (?,?,?,?,?,?,?,1)
       ON DUPLICATE KEY UPDATE id=LAST_INSERT_ID(id),name=VALUES(name),education_level=VALUES(education_level),active=1`,
      [grade.name, grade.slug, `Contenido de ${grade.name}.`, grade.level, '📘', 'blue', grade.order],
    );
    ids.set(grade.slug, result.insertId);
  }
  return ids;
}

try {
  const [[stageExists]] = await connection.query(
    'SELECT COUNT(*) count FROM information_schema.tables WHERE table_schema=? AND table_name=?', [staging, 'lessons'],
  );
  if (!stageExists.count) throw new Error('Falta el staging académico. Ejecute primero extraer-respaldo-matematicas-soa.mjs.');
  const [sourceLessons] = await connection.query(`SELECT * FROM \`${staging}\`.lessons ORDER BY id`);
  if (sourceLessons.length !== 3) throw new Error(`Se esperaban 3 lecciones; se encontraron ${sourceLessons.length}.`);
  const targetSlugs = sourceLessons.map((lesson) => gradeByLessonSlug[lesson.slug].lessonSlug);
  const legacySlugs = sourceLessons.map((lesson) => `${lesson.slug}-respaldo-historico`);
  const previousSlugs = sourceLessons.map((lesson) => gradeByLessonSlug[lesson.slug].previousSlug);
  const [loaded] = await connection.query('SELECT id,slug FROM aprendizaje_lecciones WHERE slug IN (?) OR slug IN (?) OR slug IN (?)', [targetSlugs, legacySlugs, previousSlugs]);
  if (loaded.length && loaded.length !== targetSlugs.length) throw new Error('La carga está incompleta; no se modificó la base.');

  await createBackup();
  await connection.beginTransaction();
  const gradeIds = await ensureGrades();
  if (loaded.length === targetSlugs.length) {
    for (const lesson of sourceLessons) {
      const grade = gradeByLessonSlug[lesson.slug];
      await connection.query('UPDATE aprendizaje_lecciones SET category_id=?,title=?,sort_order=?,slug=? WHERE slug IN (?,?,?)', [
        gradeIds.get(grade.slug), lesson.title, lesson.sort_order, grade.lessonSlug,
        `${lesson.slug}-respaldo-historico`, grade.previousSlug, grade.lessonSlug,
      ]);
    }
    await connection.query("UPDATE aprendizaje_medios SET title=REPLACE(title,' (respaldo histórico)','') WHERE title LIKE '% (respaldo histórico)'");
  } else {
    const [sourceMedia] = await connection.query(`SELECT * FROM \`${staging}\`.media ORDER BY id`);
    const mediaMap = new Map();
    for (const media of sourceMedia) mediaMap.set(String(media.id), await insert('aprendizaje_medios', media));
    const lessonMap = new Map();
    const sectionMap = new Map();
    for (const lesson of sourceLessons) {
      const grade = gradeByLessonSlug[lesson.slug];
      const lessonId = await insert('aprendizaje_lecciones', lesson, {
        category_id: gradeIds.get(grade.slug), slug: grade.lessonSlug, title: lesson.title,
        hero_media_id: lesson.hero_media_id ? mediaMap.get(String(lesson.hero_media_id)) ?? null : null,
      });
      lessonMap.set(String(lesson.id), lessonId);
      const [sections] = await connection.query(`SELECT * FROM \`${staging}\`.lesson_sections WHERE lesson_id=? ORDER BY sort_order,id`, [lesson.id]);
      for (const section of sections) {
        sectionMap.set(String(section.id), await insert('aprendizaje_secciones_leccion', section, {
          lesson_id: lessonId, parent_section_id: null,
          media_id: section.media_id ? mediaMap.get(String(section.media_id)) ?? null : null,
        }));
      }
      for (const section of sections.filter((item) => item.parent_section_id)) {
        await connection.query('UPDATE aprendizaje_secciones_leccion SET parent_section_id=? WHERE id=?', [sectionMap.get(String(section.parent_section_id)), sectionMap.get(String(section.id))]);
      }
    }
    const [resources] = await connection.query(`SELECT * FROM \`${staging}\`.resources ORDER BY id`);
    for (const row of resources) await insert('aprendizaje_recursos', row, { lesson_id: lessonMap.get(String(row.lesson_id)) });
    const [lessonMedia] = await connection.query(`SELECT * FROM \`${staging}\`.lesson_media ORDER BY lesson_id,sort_order`);
    for (const row of lessonMedia) await connection.query('INSERT INTO aprendizaje_medios_leccion (lesson_id,media_id,placement,sort_order) VALUES (?,?,?,?)', [lessonMap.get(String(row.lesson_id)), mediaMap.get(String(row.media_id)), row.placement, row.sort_order]);
    const [exercises] = await connection.query(`SELECT * FROM \`${staging}\`.exercises ORDER BY id`);
    for (const row of exercises) await insert('practica_ejercicios', row, { section_id: sectionMap.get(String(row.section_id)) });
  }
  await connection.query("DELETE FROM aprendizaje_categorias WHERE slug='grado-historico-recuperado' AND NOT EXISTS (SELECT 1 FROM aprendizaje_lecciones WHERE category_id=aprendizaje_categorias.id)");
  await connection.commit();
  console.log(JSON.stringify({ changed: true, backup_database: backup, grades: [...gradeIds.entries()].map(([slug, id]) => ({ id, slug })), lessons: targetSlugs }, null, 2));
} catch (error) {
  try { await connection.rollback(); } catch {}
  throw error;
} finally {
  await connection.end();
}
