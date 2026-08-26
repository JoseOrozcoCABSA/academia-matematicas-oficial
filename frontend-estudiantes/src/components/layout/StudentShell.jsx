import { useState } from 'react';
import { Link, NavLink } from 'react-router-dom';
import { ArrowLeft, Bell, BookOpen, Bot, Calculator, Clock3, FileText, Flame, LogOut, Menu, Sparkles, Target, Trophy, X } from 'lucide-react';
import logoHorizontal from '@/assets/logo/logo-horizontal.svg';

const initials = (name = '') => name.split(' ').filter(Boolean).map((part) => part[0]).slice(0, 2).join('').toUpperCase();

export function Header({ user, logout }) {
  const [open, setOpen] = useState(false);
  return (
    <header className="global-header">
      <Link to="/" className="global-brand" aria-label="Academia CABSA">
        <img src={logoHorizontal} alt="Academia CABSA" />
        <span className="brand-divider" />
        <span className="platform-name"><b>Matemáticas</b><small>Portal del alumno</small></span>
      </Link>
      <nav className={open ? 'global-nav is-open' : 'global-nav'}>
        <NavLink to="/" end onClick={() => setOpen(false)}>Inicio</NavLink>
        <NavLink to="/practica" onClick={() => setOpen(false)}>Práctica</NavLink>
        <NavLink to="/tutor" onClick={() => setOpen(false)}>Tutor IA</NavLink>
        <button className="mobile-logout" type="button" onClick={() => { setOpen(false); logout(); }}><LogOut size={16} /> Salir</button>
      </nav>
      <div className="header-user">
        <button className="notification-button" type="button" title="Notificaciones" aria-label="Notificaciones"><Bell size={17} /></button>
        <span className="avatar">{initials(user.name)}</span>
        <span className="student-identity"><strong>{user.name}</strong><small>Estudiante</small></span>
        <button className="logout-button" type="button" onClick={logout} aria-label="Cerrar sesión"><LogOut size={15} /> Salir</button>
      </div>
      <button className="mobile-menu" type="button" onClick={() => setOpen(!open)} aria-label="Abrir menú">
        {open ? <X /> : <Menu />}
      </button>
    </header>
  );
}

export function Footer() {
  return (
    <footer className="platform-footer">
      <div className="footer-main">
        <section className="footer-brand"><img src={logoHorizontal} alt="Academia CABSA" /><p>Una experiencia de aprendizaje enfocada en comprender, practicar y aplicar las matemáticas paso a paso.</p></section>
        <nav><strong>Aprendizaje</strong><Link to="/">Inicio</Link><Link to="/niveles">Lecciones</Link><Link to="/practica">Práctica guiada</Link></nav>
        <nav><strong>Herramientas</strong><Link to="/tutor">Tutor matemático IA</Link><Link to="/niveles">Contenido interactivo</Link><span>Fórmulas con LaTeX</span></nav>
        <section className="footer-seal"><span>∑</span><div><strong>Academia Matemáticas</strong><small>Aprende a tu ritmo · Avanza con confianza</small></div></section>
      </div>
      <div className="footer-bottom"><span>© 2026 Academia CABSA · Matemáticas</span><span>Portal educativo para estudiantes</span></div>
    </footer>
  );
}

export function MathSidebar({ catalog, currentSlug, mode = 'home', areaSlug }) {
  const lessons = catalog?.lessons ?? [];
  const currentLesson = lessons.find((item) => item.slug === currentSlug);
  const category = (catalog?.categories ?? []).find((item) => item.slug === areaSlug)
    ?? (catalog?.categories ?? []).find((item) => Number(item.id) === Number(currentLesson?.category_id))
    ?? catalog?.categories?.[0];
  const isLesson = Boolean(currentSlug);
  const isArea = mode === 'area';
  return (
    <aside className="math-sidebar">
      {isLesson && <Link className="back-math" to={`/lecciones?area=${category?.slug || ''}`}><ArrowLeft size={14} /> Volver a {category?.name || 'Matemáticas'}</Link>}
      {!isLesson && isArea && <Link className="back-math" to="/"><ArrowLeft size={14} /> Volver a Matemáticas</Link>}
      <div className="math-module-card">
        <span>{isLesson || isArea ? category?.icon || '+' : 'M'}</span>
        <div>
          <h2>{isLesson || isArea ? category?.name || 'Aritmética' : 'Academia CABSA'}</h2>
          <p>{isLesson || isArea ? category?.description || 'Operaciones básicas y problemas' : 'Excelencia, práctica y acompañamiento'}</p>
        </div>
      </div>
      {!isLesson && !isArea && <nav className="math-nav compact-nav">
        <NavLink to="/niveles"><span><BookOpen /></span>Explorar lecciones</NavLink>
        <span className="disabled-link"><span><Clock3 /></span>Historia <small>Pronto</small></span>
        <span className="disabled-link"><span><FileText /></span>Blogs <small>Pronto</small></span>
        <span className="disabled-link"><span><Sparkles /></span>Material adicional <small>Pronto</small></span>
      </nav>}
      {!isLesson && isArea && <nav className="area-side-nav">
        <small>ÁREAS</small>
        {(catalog?.categories ?? []).map((item, index) => {
          const count = lessons.filter((lesson) => Number(lesson.category_id) === Number(item.id)).length;
          return count ? <Link to={`/lecciones?area=${item.slug}`} key={item.id}><span className={`tone-${index % 5 + 1}`}>{item.icon || '+'}</span><div><b>{item.name}</b><em>{count} lección{count === 1 ? '' : 'es'}</em></div></Link>
            : <span className="soon-area" key={item.id}><span>{item.icon || '∑'}</span><div><b>{item.name}</b><em>Pronto</em></div></span>;
        })}
      </nav>}
      {!isLesson && <div className="tutor-promo">
        <div className="bot-illustration"><Bot /></div>
        <h3>Tutor IA<br />Academia CABSA</h3>
        <p>Acompañamiento paso a paso para fortalecer tu aprendizaje.</p>
        <Link to="/tutor">Iniciar conversación</Link>
      </div>}
    </aside>
  );
}

function ProgressRing({ value, label = 'Completado' }) {
  const safe = Math.max(0, Math.min(100, Math.round(Number(value) || 0)));
  return <div className="ring" style={{ '--progress': `${safe * 3.6}deg` }}><div><strong>{safe}%</strong><small>{label}</small></div></div>;
}

export function RightRail({ dashboard, catalog }) {
  const progress = dashboard?.progress ?? [];
  const lessons = catalog?.lessons ?? [];
  const completed = progress.filter((item) => item.status === 'completed').length;
  const active = progress.filter((item) => item.status === 'in_progress').length;
  const total = Math.max(lessons.length, progress.length);
  const average = progress.length
    ? progress.reduce((sum, item) => sum + Number(item.progress_percent || 0), 0) / total
    : 0;
  const challenge = dashboard?.challenges?.[0];
  const assigned = dashboard?.assignedChallenges?.find((item) => Number(item.challenge_id) === Number(challenge?.id));
  const target = Number(challenge?.target_actions || 10);
  const challengeProgress = Number(assigned?.progress_count || 0);
  return (
    <aside className="right-rail">
      <section className="rail-card progress-summary">
        <h3>Tu progreso general</h3>
        <ProgressRing value={average} />
        <dl>
          <div><dt><i className="green" /> Temas completados</dt><dd>{completed} / {total}</dd></div>
          <div><dt><i className="blue" /> En progreso</dt><dd>{active}</dd></div>
          <div><dt><i className="gray" /> Por comenzar</dt><dd>{Math.max(0, total - completed - active)}</dd></div>
        </dl>
      </section>
      <section className="rail-card streak-card">
        <h3>Racha de aprendizaje</h3>
        <div><Flame /><strong>{Number(dashboard?.streakDays ?? 0)} días</strong></div><p>{dashboard?.streakDays ? '¡Sigue así!' : 'Completa una actividad para comenzar.'}</p>
      </section>
      <section className="rail-card achievements-card">
        <h3>Logros recientes</h3>
        <p><span><Sparkles /></span><b>Explorador<small>Completaste {completed} temas</small></b></p>
        <p><span><Target /></span><b>Constante<small>Mantienes tu progreso</small></b></p>
        <p><span><Trophy /></span><b>Resolutor<small>{dashboard?.attempts?.length ?? 0} prácticas registradas</small></b></p>
      </section>
      <section className="rail-card challenge-card">
        <h3>Reto semanal</h3>
        <p><span><Calculator /></span>{challenge?.description || 'Resuelve ejercicios y completa una lección.'}</p>
        <div className="mini-progress"><i style={{ width: `${Math.min(100, challengeProgress / target * 100)}%` }} /></div>
        <b>{challengeProgress} / {target}</b>
        <Link to="/practica">Ir al reto</Link>
      </section>
    </aside>
  );
}


export function StudentShell({ user, logout, children }) {
  return <div className="site-shell"><Header user={user} logout={logout} /><div className="site-content">{children}</div><Footer /></div>;
}
