import { Link, Navigate, useParams, useSearchParams } from 'react-router-dom';
import { BookOpen, ChevronRight, GraduationCap, Layers3, Play, Shapes, Zap } from 'lucide-react';
import { MathSidebar, RightRail } from '@/components/layout/StudentShell';
import { findGrade, GRADES_BY_LEVEL, lessonArea, lessonGrade, lessonsForGrade, quickLessonsForGrade } from '@/utils/catalogHierarchy';

const categoryMap = (catalog) => new Map((catalog?.categories ?? []).map((category) => [Number(category.id), category]));

function Breadcrumbs({ items }) {
  return <nav className="catalog-breadcrumbs" aria-label="Ruta del catálogo">{items.map((item, index) => <span key={`${item.label}-${index}`}>{index > 0 && <ChevronRight />}{item.to ? <Link to={item.to}>{item.label}</Link> : <b>{item.label}</b>}</span>)}</nav>;
}

function PageIntro({ eyebrow, title, description }) {
  return <header className="catalog-page-intro"><small>{eyebrow}</small><h1>{title}</h1><p>{description}</p></header>;
}

export function Home({ catalog, dashboard, user }) {
  const lessons = catalog?.lessons ?? [];
  const categories = catalog?.categories ?? [];
  const levels = catalog?.levels ?? [];
  const progressByLesson = new Map((dashboard?.progress ?? []).map((item) => [Number(item.lesson_id), Number(item.progress_percent)]));
  const continueLesson = lessons.find((lesson) => {
    const value = progressByLesson.get(Number(lesson.id)) || 0;
    return value > 0 && value < 100;
  }) ?? lessons[0];
  const firstName = user?.name?.split(' ')[0] || 'Estudiante';
  return <div className="academy-layout">
    <MathSidebar catalog={catalog} />
    <main className="academy-home">
      <section className="student-welcome panel-surface">
        <div><h1>¡Hola, {firstName}!</h1><p>Tienes <strong>{lessons.length} lecciones</strong> disponibles. {dashboard?.progress?.some((item) => item.status === 'in_progress') ? 'Continúa donde lo dejaste.' : 'Selecciona tu nivel educativo para comenzar.'}</p>
          {continueLesson && <Link to={`/lecciones/${continueLesson.slug}`}>{(progressByLesson.get(Number(continueLesson.id)) || 0) > 0 ? `Continuar: ${continueLesson.title} →` : 'Comenzar ahora →'}</Link>}
        </div>
        <Link className="welcome-art" to="/niveles"><img src="/math-assets/math-hero-generated.png" alt="" /></Link>
      </section>
      <section className="education-levels"><div className="section-title-row"><div><small>EMPIEZA AQUÍ</small><h2>Elige tu nivel educativo</h2><p>Después podrás elegir tu grado, tema y lección.</p></div><span>1 nivel · 2 grado · 3 tema</span></div><div className="education-level-grid">
        {levels.map((level, index) => {
          const categoryIds = new Set(categories.filter((category) => category.education_level === level.slug).map((category) => Number(category.id)));
          const total = lessons.filter((lesson) => categoryIds.has(Number(lesson.category_id))).length;
          return <Link className="education-level-card" to={`/niveles/${level.slug}`} key={level.slug}><span className={`level-art tone-${index % 5 + 1}`}>{level.icon || 'M'}</span><div><strong>{level.name}</strong><em>{level.description}</em></div><small>{total ? `${total} lección${total === 1 ? '' : 'es'}` : 'Contenido en preparación'}</small></Link>;
        })}
      </div></section>
    </main>
    <RightRail dashboard={dashboard} catalog={catalog} user={user} />
  </div>;
}

export function Levels({ catalog }) {
  const levels = catalog?.levels ?? [];
  const categories = categoryMap(catalog);
  const lessonCounts = new Map(levels.map((level) => [level.slug, 0]));
  (catalog?.lessons ?? []).forEach((lesson) => {
    const level = categories.get(Number(lesson.category_id))?.education_level;
    if (level) lessonCounts.set(level, (lessonCounts.get(level) || 0) + 1);
  });
  return <main className="catalog-hierarchy-page">
    <PageIntro eyebrow="PASO 1 DE 4 · NIVEL" title="¿Qué nivel estudias?" description="Elige una tarjeta. Te mostraremos solamente los grados y temas que corresponden a tu nivel." />
    <section className="level-selection-grid">
      {levels.map((level, index) => <Link className="hierarchy-card level-card" to={`/niveles/${level.slug}`} key={level.slug}>
        <span className={`hierarchy-icon tone-${index % 5 + 1}`}>{level.icon || <GraduationCap />}</span>
        <div><small>NIVEL EDUCATIVO</small><h2>{level.name}</h2><p>{level.description}</p><b>{lessonCounts.get(level.slug) || 0} lecciones disponibles</b></div><ChevronRight />
      </Link>)}
    </section>
    {!levels.length && <div className="empty-state"><GraduationCap /><h2>Cargando niveles educativos</h2><p>El catálogo aparecerá cuando el servicio de aprendizaje responda.</p></div>}
  </main>;
}

export function Grades({ catalog }) {
  const { levelSlug } = useParams();
  const level = (catalog?.levels ?? []).find((item) => item.slug === levelSlug);
  if (catalog && !level) return <Navigate to="/" replace />;
  const grades = GRADES_BY_LEVEL[levelSlug] ?? [];
  return <main className="catalog-hierarchy-page">
    <Breadcrumbs items={[{ label: 'Niveles educativos', to: '/niveles' }, { label: level?.name || 'Nivel' }]} />
    <PageIntro eyebrow="PASO 2 DE 4 · GRADO" title={`¿En qué grado de ${level?.name || ''} estás?`} description="Elige tu grado para ver únicamente los temas y las lecciones que te corresponden." />
    <section className="grade-selection-grid">{grades.map((grade, index) => {
      const count = lessonsForGrade(catalog, levelSlug, grade.code).length;
      return <Link className="hierarchy-card grade-card" to={`/niveles/${levelSlug}/${grade.code.toLowerCase()}`} key={grade.code}>
        <span className={`grade-number tone-${index % 5 + 1}`}>{grade.number}</span><div><small>{grade.code}</small><h2>{grade.name}</h2><p>{count ? `${count} lecciones disponibles` : 'Contenido en preparación'}</p></div><ChevronRight />
      </Link>;
    })}</section>
  </main>;
}

export function Categories({ catalog }) {
  const { levelSlug, gradeCode } = useParams();
  const level = (catalog?.levels ?? []).find((item) => item.slug === levelSlug);
  const grade = findGrade(levelSlug, gradeCode);
  if (catalog && (!level || !grade)) return <Navigate to="/" replace />;
  const gradeLessons = lessonsForGrade(catalog, levelSlug, gradeCode);
  const quickLessons = quickLessonsForGrade(catalog, levelSlug, gradeCode);
  const firstQuickLesson = quickLessons[0];
  const lessonsByCategory = new Map();
  gradeLessons.forEach((lesson) => lessonsByCategory.set(Number(lesson.category_id), [...(lessonsByCategory.get(Number(lesson.category_id)) || []), lesson]));
  const categories = (catalog?.categories ?? []).filter((category) => lessonsByCategory.has(Number(category.id)));
  return <main className="catalog-hierarchy-page">
    <Breadcrumbs items={[{ label: 'Niveles educativos', to: '/niveles' }, { label: level?.name || 'Nivel', to: `/niveles/${levelSlug}` }, { label: grade?.name || gradeCode }]} />
    <PageIntro eyebrow="PASO 3 DE 4 · TEMA" title="¿Qué quieres aprender?" description={`Estos son los temas disponibles para ${grade?.name || gradeCode}. Elige uno para consultar sus lecciones.`} />
    {firstQuickLesson && <section className="quick-lesson-launch"><span><Zap /></span><div><small>LECCIÓN RÁPIDA #{firstQuickLesson.quick_lesson_order}</small><h2>Empieza ahora con {firstQuickLesson.title.replace(/^\s*(?:PRE\d|P\d|S\d)\s*-\s*/i, '')}</h2><p>Abre directamente la primera lección de la secuencia de {grade?.name}. Después podrás continuar según el orden configurado.</p></div><Link to={`/lecciones/${firstQuickLesson.slug}`}><Play /> Iniciar lección rápida</Link></section>}
    <section className="category-selection-grid">{categories.map((category, index) => {
      const lessons = lessonsByCategory.get(Number(category.id)) || [];
      const areas = new Set(lessons.map(lessonArea));
      return <Link className="hierarchy-card category-card" to={`/niveles/${levelSlug}/${gradeCode}/${category.slug}`} key={category.id}>
        <span className={`hierarchy-icon tone-${index % 5 + 1}`}>{category.icon || <Shapes />}</span><div><small>CATEGORÍA GENERAL</small><h2>{category.name}</h2><p>{areas.size} área{areas.size === 1 ? '' : 's'} · {lessons.length} lección{lessons.length === 1 ? '' : 'es'}</p></div><ChevronRight />
      </Link>;
    })}</section>
    {!categories.length && <div className="empty-state"><Shapes /><h2>No hay categorías para este grado</h2><p>El grado existe, pero su contenido todavía está en preparación.</p></div>}
  </main>;
}

export function Lessons({ catalog }) {
  const { levelSlug, gradeCode, categorySlug } = useParams();
  const [searchParams] = useSearchParams();
  const categories = catalog?.categories ?? [];
  const legacyCategory = categories.find((item) => item.slug === searchParams.get('area'));
  if (!levelSlug && legacyCategory) {
    const firstLesson = (catalog?.lessons ?? []).find((lesson) => Number(lesson.category_id) === Number(legacyCategory.id));
    const grade = lessonGrade(firstLesson, legacyCategory);
    return <Navigate to={`/niveles/${legacyCategory.education_level}/${grade.toLowerCase()}/${legacyCategory.slug}`} replace />;
  }
  if (!levelSlug) return <Navigate to="/" replace />;
  const level = (catalog?.levels ?? []).find((item) => item.slug === levelSlug);
  const grade = findGrade(levelSlug, gradeCode);
  const category = categories.find((item) => item.slug === categorySlug && item.education_level === levelSlug);
  if (catalog && (!level || !grade || !category)) return <Navigate to="/" replace />;
  const lessons = lessonsForGrade(catalog, levelSlug, gradeCode).filter((lesson) => Number(lesson.category_id) === Number(category?.id));
  const quickOrderById = new Map(quickLessonsForGrade(catalog, levelSlug, gradeCode).map((lesson) => [Number(lesson.id), lesson.quick_lesson_order]));
  const grouped = lessons.reduce((map, lesson) => {
    const area = lessonArea(lesson);
    map.set(area, [...(map.get(area) || []), lesson]);
    return map;
  }, new Map());
  return <main className="catalog-hierarchy-page lesson-catalog-page">
    <Breadcrumbs items={[{ label: 'Niveles educativos', to: '/niveles' }, { label: level?.name || 'Nivel', to: `/niveles/${levelSlug}` }, { label: grade?.name || gradeCode, to: `/niveles/${levelSlug}/${gradeCode}` }, { label: category?.name || 'Categoría' }]} />
    <PageIntro eyebrow="PASO 4 DE 4 · LECCIÓN" title={category?.name || 'Lecciones'} description={`Elige una lección de ${grade?.name || gradeCode}. Puedes avanzar a tu propio ritmo.`} />
    <div className="lesson-area-groups">{[...grouped.entries()].map(([area, areaLessons]) => <section className="lesson-area-group" key={area}>
      <header><span><Layers3 /></span><div><small>ÁREA</small><h2>{area}</h2><p>{areaLessons.length} {areaLessons.length === 1 ? 'lección' : 'lecciones'}</p></div></header>
      <div className="area-lessons">{areaLessons.map((lesson, index) => <Link to={`/lecciones/${lesson.slug}`} key={lesson.id}><span className={`lesson-icon-badge tone-${index % 5 + 1}`}>{lesson.icon || '∑'}</span><div><strong>{lesson.title.replace(/^\s*(?:PRE\d|P\d|S\d)\s*-\s*/i, '')}</strong><small>{lesson.summary}</small><div className="lesson-meta-line"><b>Rápida #{quickOrderById.get(Number(lesson.id))}</b>{lesson.difficulty} · {lesson.duration_minutes || 20} min</div></div><em>Comenzar ›</em></Link>)}</div>
    </section>)}</div>
    {!lessons.length && <div className="empty-state"><BookOpen /><h2>No hay lecciones en esta categoría</h2><p>El editor puede agregar contenido para este grado desde el panel de gestión.</p></div>}
  </main>;
}
