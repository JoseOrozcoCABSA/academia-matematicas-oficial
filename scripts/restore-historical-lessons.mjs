import { createRequire } from 'node:module';
import { dirname, join } from 'node:path';
import { fileURLToPath } from 'node:url';
import { mkdir, readFile, writeFile } from 'node:fs/promises';
import { gunzipSync } from 'node:zlib';

const projectRoot = dirname(dirname(fileURLToPath(import.meta.url)));
const requireFromService = createRequire(join(projectRoot, 'identity-service', 'package.json'));
const mysql = requireFromService('mysql2/promise');
const sourcePath = join(projectRoot, 'database', 'backups', 'academia-matematicas-soa-antes-etl-20260826-125319.json.gz');
const backupDir = join(projectRoot, 'database', 'backups', 'antes_restaurar_lecciones_historicas');
const targetSlugs = ['suma-numeros-naturales', 'suma-fracciones', 'ecuaciones-lineales-s1'];
const curriculumPlacement = {
  'suma-numeros-naturales': { grade: 'P1', area: 'Suma' },
  'suma-fracciones': { grade: 'P4', area: 'Fracciones' },
  'ecuaciones-lineales-s1': { grade: 'S1', area: 'Ecuaciones' },
};

const required = (name) => {
  const value = process.env[name]?.trim();
  if (!value) throw new Error(`Falta la variable obligatoria ${name}`);
  return value;
};

const source = JSON.parse(gunzipSync(await readFile(sourcePath)));
const tables = source.tables;
const sourceLessons = tables.aprendizaje_lecciones.rows.filter((row) => targetSlugs.includes(row.slug));
const sourceLessonIds = new Set(sourceLessons.map((row) => Number(row.id)));
const sourceSections = tables.aprendizaje_secciones_leccion.rows.filter((row) => sourceLessonIds.has(Number(row.lesson_id)));
const sourceCategoryIds = new Set(sourceLessons.map((row) => Number(row.category_id)));
const sourceCategories = tables.aprendizaje_categorias.rows.filter((row) => sourceCategoryIds.has(Number(row.id)));
const sourceMediaIds = new Set(sourceSections.map((row) => Number(row.media_id)).filter(Boolean));
const sourceMedia = tables.aprendizaje_medios.rows.filter((row) => sourceMediaIds.has(Number(row.id)));

if (sourceLessons.length !== 3 || sourceSections.length !== 17) {
  throw new Error('El respaldo histórico no contiene las 3 lecciones y 17 secciones esperadas');
}

const connection = await mysql.createConnection({
  host: process.env.DB_HOST ?? '127.0.0.1',
  port: Number(process.env.DB_PORT ?? 3306),
  user: required('DB_USER'),
  password: required('DB_PASSWORD'),
  database: process.env.DB_NAME ?? 'academia-matematicas-soa',
  dateStrings: true,
});

try {
  const placeholders = targetSlugs.map(() => '?').join(',');
  const [currentLessons] = await connection.query(
    `SELECT * FROM aprendizaje_lecciones WHERE slug IN (${placeholders})`,
    targetSlugs,
  );
  const currentIds = currentLessons.map((row) => row.id);
  let currentSections = [];
  if (currentIds.length) {
    const ids = currentIds.map(() => '?').join(',');
    [currentSections] = await connection.query(
      `SELECT * FROM aprendizaje_secciones_leccion WHERE lesson_id IN (${ids})`,
      currentIds,
    );
  }
  await mkdir(backupDir, { recursive: true });
  const stamp = new Date().toISOString().replaceAll(':', '').replaceAll('.', '-');
  await writeFile(
    join(backupDir, `estado-previo-${stamp}.json`),
    JSON.stringify({ database: process.env.DB_NAME, lessons: currentLessons, sections: currentSections }, null, 2),
    'utf8',
  );

  await connection.beginTransaction();

  const categoryIds = new Map();
  for (const category of sourceCategories) {
    await connection.execute(
      `INSERT INTO aprendizaje_categorias
       (name,slug,description,education_level,icon,color,sort_order,active)
       VALUES (?,?,?,?,?,?,?,1)
       ON DUPLICATE KEY UPDATE name=VALUES(name),description=VALUES(description),
       education_level=VALUES(education_level),icon=VALUES(icon),color=VALUES(color),active=1`,
      [category.name, category.slug, category.description, category.education_level, category.icon, category.color, category.sort_order],
    );
    const [[saved]] = await connection.execute('SELECT id FROM aprendizaje_categorias WHERE slug=?', [category.slug]);
    categoryIds.set(Number(category.id), Number(saved.id));
  }

  const mediaIds = new Map();
  for (const media of sourceMedia) {
    const [[existing]] = await connection.execute('SELECT id FROM aprendizaje_medios WHERE file_path=? LIMIT 1', [media.file_path]);
    if (existing) {
      mediaIds.set(Number(media.id), Number(existing.id));
      continue;
    }
    const [created] = await connection.execute(
      `INSERT INTO aprendizaje_medios
       (title,media_type,file_path,thumbnail_path,external_url,alt_text,upload_context,wp_attachment_id,width,height,file_size)
       VALUES (?,?,?,?,?,?,?,?,?,?,?)`,
      [media.title, media.media_type, media.file_path, media.thumbnail_path, media.external_url, media.alt_text, media.upload_context, media.wp_attachment_id, media.width, media.height, media.file_size],
    );
    mediaIds.set(Number(media.id), Number(created.insertId));
  }

  const lessonIds = new Map();
  for (const lesson of sourceLessons) {
    const placement = curriculumPlacement[lesson.slug];
    const summary = `Grado: ${placement.grade}. Area: ${placement.area}. ${lesson.summary}`;
    await connection.execute(
      `INSERT INTO aprendizaje_lecciones
       (category_id,title,slug,summary,page_type,icon,icon_type,icon_file,hero_expression,
        hero_media_id,difficulty,duration_minutes,sort_order,published)
       VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,1)
       ON DUPLICATE KEY UPDATE category_id=VALUES(category_id),title=VALUES(title),
       summary=VALUES(summary),page_type=VALUES(page_type),icon=VALUES(icon),
       icon_type=VALUES(icon_type),difficulty=VALUES(difficulty),
       duration_minutes=VALUES(duration_minutes),sort_order=VALUES(sort_order),published=1`,
      [categoryIds.get(Number(lesson.category_id)), lesson.title, lesson.slug, summary, lesson.page_type,
        lesson.icon, lesson.icon_type, lesson.icon_file, lesson.hero_expression, null, lesson.difficulty,
        lesson.duration_minutes, lesson.sort_order],
    );
    const [[saved]] = await connection.execute('SELECT id FROM aprendizaje_lecciones WHERE slug=?', [lesson.slug]);
    lessonIds.set(Number(lesson.id), Number(saved.id));
    await connection.execute('DELETE FROM aprendizaje_secciones_leccion WHERE lesson_id=?', [saved.id]);
  }

  const sectionIds = new Map();
  const pending = [...sourceSections];
  while (pending.length) {
    const index = pending.findIndex((section) => !section.parent_section_id || sectionIds.has(Number(section.parent_section_id)));
    if (index < 0) throw new Error('No fue posible reconstruir la jerarquía de secciones');
    const [section] = pending.splice(index, 1);
    const [created] = await connection.execute(
      `INSERT INTO aprendizaje_secciones_leccion
       (lesson_id,parent_section_id,section_type,title,body_html,ai_prompt,ai_exercises_enabled,
        media_id,duration_minutes,sort_order,published)
       VALUES (?,?,?,?,?,?,?,?,?,?,?)`,
      [lessonIds.get(Number(section.lesson_id)), section.parent_section_id ? sectionIds.get(Number(section.parent_section_id)) : null,
        section.section_type, section.title, section.body_html, section.ai_prompt, section.ai_exercises_enabled,
        section.media_id ? mediaIds.get(Number(section.media_id)) ?? null : null, section.duration_minutes,
        section.sort_order, 1],
    );
    sectionIds.set(Number(section.id), Number(created.insertId));
  }

  await connection.commit();
  process.stdout.write(`Restauradas ${sourceLessons.length} lecciones, ${sourceSections.length} secciones y ${sourceMedia.length} medios.\n`);
} catch (error) {
  await connection.rollback();
  throw error;
} finally {
  await connection.end();
}
