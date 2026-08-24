import { Link, useSearchParams } from 'react-router-dom';
import { BookOpen } from 'lucide-react';
import { MathSidebar, RightRail } from '@/components/layout/StudentShell';

export function Home({ catalog, dashboard, user }) {
  const lessons = catalog?.lessons ?? [];
  const categories = catalog?.categories ?? [];
  const levels = catalog?.levels ?? [];
  const progressByLesson = new Map((dashboard?.progress ?? []).map((item) => [Number(item.lesson_id), Number(item.progress_percent)]));
  const lessonsByCategory = new Map(categories.map((category) => [Number(category.id), []]));
  lessons.forEach((lesson) => {
    const categoryLessons = lessonsByCategory.get(Number(lesson.category_id));
    if (categoryLessons) categoryLessons.push(lesson);
  });
  const categoryProgress = (category) => {
    const items = lessonsByCategory.get(Number(category.id)) ?? [];
    return items.length ? Math.round(items.reduce((sum, lesson) => sum + (progressByLesson.get(Number(lesson.id)) || 0), 0) / items.length) : 0;
  };
  const continueLesson = lessons.find((lesson) => {
    const value = progressByLesson.get(Number(lesson.id)) || 0;
    return value > 0 && value < 100;
  }) ?? lessons[0];
  return (
    <div className="academy-layout">
      <MathSidebar catalog={catalog} />
      <main className="academy-home">
        <section className="student-welcome panel-surface">
          <div>
            <h1>Hola, {user.name.split(' ')[0]}!</h1>
            <p>Tienes <strong>{lessons.length} lecciones</strong> disponibles. {dashboard?.progress?.some((item) => item.status === 'in_progress') ? 'Continúa donde lo dejaste.' : 'Comienza tu ruta de aprendizaje hoy.'}</p>
            {continueLesson && <Link to={`/lecciones/${continueLesson.slug}`}>{(progressByLesson.get(Number(continueLesson.id)) || 0) > 0 ? `Continuar: ${continueLesson.title} →` : 'Comenzar ahora →'}</Link>}
          </div>
          <Link className="welcome-art" to={continueLesson ? `/lecciones/${continueLesson.slug}` : '/lecciones'}><img src="/math-assets/math-hero-generated.png" alt="" /></Link>
        </section>
        <section className="education-levels">
          <h2>Nivel educativo</h2>
          <div className="education-level-grid">
            {levels.map((level, index) => {
              const levelCategories = categories.filter((category) => category.education_level === level.slug);
              const total = levelCategories.reduce((sum, category) => sum + (lessonsByCategory.get(Number(category.id))?.length || 0), 0);
              const card = <><span className={`level-art tone-${index % 5 + 1}`}>{level.icon || 'M'}</span><div><strong>{level.name}</strong><em>{total ? level.description || 'Nivel educativo disponible.' : 'Sin lecciones publicadas aún.'}</em></div><small>{total ? `${total} lección${total === 1 ? '' : 'es'}` : 'Próximamente'}</small></>;
              return total ? <a className="education-level-card" href={`#nivel-${level.slug}`} key={level.slug}>{card}</a> : <article className="education-level-card empty-level" key={level.slug}>{card}</article>;
            })}
          </div>
        </section>
        <section className="learning-areas">
          <h2>Áreas de aprendizaje</h2>
          {levels.map((level) => {
            const levelCategories = categories.filter((category) => category.education_level === level.slug && (lessonsByCategory.get(Number(category.id))?.length || 0) > 0);
            if (!levelCategories.length) return null;
            return <div className="area-level-group" id={`nivel-${level.slug}`} key={level.slug}><h3>{level.name}</h3><div>{levelCategories.map((category, index) => {
              const count = lessonsByCategory.get(Number(category.id))?.length || 0;
              const value = categoryProgress(category);
              return <Link className="learning-area-row" to={`/lecciones?area=${category.slug}`} key={category.id}><span className={`tone-${index % 5 + 1}`}>{category.icon || '+'}</span><div><strong>{category.name}</strong><small>{count} lección{count === 1 ? '' : 'es'}</small><div className="area-progress"><i style={{ width: `${value}%` }} /><b>{value}%</b></div></div><em>Ver ›</em></Link>;
            })}</div></div>;
          })}
          {!lessons.length && <p className="empty-inline">El catálogo se mostrará cuando el servicio de aprendizaje esté disponible.</p>}
        </section>
      </main>
      <RightRail dashboard={dashboard} catalog={catalog} user={user} />
    </div>
  );
}

export function Lessons({ catalog }) {
  const [searchParams, setSearchParams] = useSearchParams();
  const categories = catalog?.categories ?? [];
  const requestedArea = searchParams.get('area');
  const category = categories.find((item) => item.slug === requestedArea) ?? categories.find((item) => (catalog?.lessons ?? []).some((lesson) => Number(lesson.category_id) === Number(item.id)));
  const lessons = (catalog?.lessons ?? []).filter((item) => !category || Number(item.category_id) === Number(category.id));
  return (
    <div className="academy-layout two-column">
      <MathSidebar catalog={catalog} mode="area" areaSlug={category?.slug} />
      <main className="library-page">
        <div className="area-page-heading"><span className="area-heading-icon">{category?.icon || '+'}</span><div><small>{category?.education_level || 'Matemáticas'}</small><h1>{category?.name || 'Área de aprendizaje'}</h1><p>{category?.description || 'Lecciones, actividades y evaluaciones organizadas para ti.'}</p></div></div>
        <div className="area-switcher">{categories.filter((item) => (catalog?.lessons ?? []).some((lesson) => Number(lesson.category_id) === Number(item.id))).map((item) => <button className={item.id === category?.id ? 'active' : ''} onClick={() => setSearchParams({ area: item.slug })} key={item.id}>{item.name}</button>)}</div>
        <section className="area-lessons"><h2>Lecciones disponibles</h2>{lessons.map((lesson, index) => <Link to={`/lecciones/${lesson.slug}`} key={lesson.id}><span className={`lesson-icon-badge tone-${index % 5 + 1}`}>{lesson.icon || '∑'}</span><div><strong>{lesson.title}</strong><small>{lesson.summary}</small><div className="lesson-meta-line">{lesson.difficulty} · {lesson.duration_minutes || 20} min</div></div><em>Comenzar ›</em></Link>)}</section>
        {!lessons.length && <div className="empty-state"><BookOpen /><h2>No hay lecciones disponibles</h2><p>Revisa la conexión con el servicio de aprendizaje.</p></div>}
      </main>
    </div>
  );
}


