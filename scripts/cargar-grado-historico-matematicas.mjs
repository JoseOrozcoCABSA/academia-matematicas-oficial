import path from 'node:path';
import { createRequire } from 'node:module';

const require = createRequire(new URL('../learning-service/package.json', import.meta.url));
const dotenv = require('dotenv');
const mysql = require('mysql2/promise');
dotenv.config({ path: path.resolve('.env'), quiet: true });

const production = process.env.DB_NAME;
const staging = 'academia_matematicas_import_stage';
const stamp = new Date().toISOString().replace(/[-:TZ.]/g, '').slice(0, 14);
const backup = `academia_matematicas_backup_grado_${stamp}`;
const targetTables = [
  'aprendizaje_categorias', 'aprendizaje_lecciones', 'aprendizaje_secciones_leccion',
  'aprendizaje_medios', 'aprendizaje_recursos', 'aprendizaje_medios_leccion', 'practica_ejercicios',
];
const connection = await mysql.createConnection({
  host: process.env.DB_HOST,
  port: Number(process.env.DB_PORT || 3306),
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  database: production,
  connectTimeout: 10000,
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

try {
  const [[stageExists]] = await connection.query(
    'SELECT COUNT(*) count FROM information_schema.tables WHERE table_schema=? AND table_name=?',
    [staging, 'lessons'],
  );
  if (!stageExists.count) throw new Error('Falta el staging académico. Ejecute primero extraer-respaldo-matematicas-soa.mjs.');

  const [sourceLessons] = await connection.query(`SELECT * FROM \`${staging}\`.lessons ORDER BY id`);
  if (sourceLessons.length !== 3) throw new Error(`Se esperaban 3 lecciones históricas; se encontraron ${sourceLessons.length}.`);

  const targetSlugs = sourceLessons.map((lesson) => `${lesson.slug}-respaldo-historico`);
  const [alreadyLoaded] = await connection.query('SELECT id,slug FROM aprendizaje_lecciones WHERE slug IN (?)', [targetSlugs]);
  if (alreadyLoaded.length === targetSlugs.length) {
    console.log(JSON.stringify({ changed: false, reason: 'El grado histórico ya estaba cargado.', lessons: alreadyLoaded }, null, 2));
    process.exit(0);
  }
  if (alreadyLoaded.length) throw new Error('La carga histórica está incompleta. No se modificó la base; revise los slugs de respaldo.');

  await connection.query(`CREATE DATABASE \`${backup}\` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci`);
  for (const table of targetTables) {
    await connection.query(`CREATE TABLE \`${backup}\`.\`${table}\` LIKE \`${production}\`.\`${table}\``);
    await connection.query(`INSERT INTO \`${backup}\`.\`${table}\` SELECT * FROM \`${production}\`.\`${table}\``);
  }

  await connection.beginTransaction();
  const [categoryResult] = await connection.query(
    `INSERT INTO aprendizaje_categorias
      (name,slug,description,education_level,icon,color,sort_order,active)
     VALUES (?,?,?,?,?,?,?,1)
     ON DUPLICATE KEY UPDATE id=LAST_INSERT_ID(id)`,
    ['Grado histórico recuperado', 'grado-historico-recuperado',
      'Lecciones recuperadas del respaldo académico completo. Conserva el contenido histórico sin reemplazar las ediciones vigentes.',
      'primaria', '📚', 'amber', 90],
  );
  const categoryId = categoryResult.insertId;

  const [sourceMedia] = await connection.query(`SELECT * FROM \`${staging}\`.media ORDER BY id`);
  const mediaMap = new Map();
  for (const media of sourceMedia) {
    const mediaId = await insert('aprendizaje_medios', media, { title: `${media.title} (respaldo histórico)` });
    mediaMap.set(String(media.id), mediaId);
  }

  const lessonMap = new Map();
  const sectionMap = new Map();
  for (const lesson of sourceLessons) {
    const lessonId = await insert('aprendizaje_lecciones', lesson, {
      category_id: categoryId,
      slug: `${lesson.slug}-respaldo-historico`,
      title: `${lesson.title} — respaldo histórico`,
      hero_media_id: lesson.hero_media_id ? mediaMap.get(String(lesson.hero_media_id)) ?? null : null,
      sort_order: lesson.sort_order + 1000,
    });
    lessonMap.set(String(lesson.id), lessonId);

    const [sections] = await connection.query(
      `SELECT * FROM \`${staging}\`.lesson_sections WHERE lesson_id=? ORDER BY sort_order,id`, [lesson.id],
    );
    for (const section of sections) {
      const sectionId = await insert('aprendizaje_secciones_leccion', section, {
        lesson_id: lessonId,
        parent_section_id: null,
        media_id: section.media_id ? mediaMap.get(String(section.media_id)) ?? null : null,
      });
      sectionMap.set(String(section.id), sectionId);
    }
    for (const section of sections.filter((item) => item.parent_section_id)) {
      await connection.query('UPDATE aprendizaje_secciones_leccion SET parent_section_id=? WHERE id=?', [
        sectionMap.get(String(section.parent_section_id)), sectionMap.get(String(section.id)),
      ]);
    }
  }

  const [resources] = await connection.query(`SELECT * FROM \`${staging}\`.resources ORDER BY id`);
  for (const resource of resources) {
    await insert('aprendizaje_recursos', resource, { lesson_id: lessonMap.get(String(resource.lesson_id)) });
  }
  const [lessonMedia] = await connection.query(`SELECT * FROM \`${staging}\`.lesson_media ORDER BY lesson_id,sort_order`);
  for (const relation of lessonMedia) {
    await connection.query(
      'INSERT INTO aprendizaje_medios_leccion (lesson_id,media_id,placement,sort_order) VALUES (?,?,?,?)',
      [lessonMap.get(String(relation.lesson_id)), mediaMap.get(String(relation.media_id)), relation.placement, relation.sort_order],
    );
  }
  const [exercises] = await connection.query(`SELECT * FROM \`${staging}\`.exercises ORDER BY id`);
  for (const exercise of exercises) {
    await insert('practica_ejercicios', exercise, { section_id: sectionMap.get(String(exercise.section_id)) });
  }
  await connection.commit();
  console.log(JSON.stringify({
    changed: true,
    backup_database: backup,
    category: { id: categoryId, slug: 'grado-historico-recuperado' },
    lessons: [...lessonMap.values()],
    sections: sectionMap.size,
    exercises: exercises.length,
  }, null, 2));
} catch (error) {
  try { await connection.rollback(); } catch {}
  throw error;
} finally {
  await connection.end();
}
