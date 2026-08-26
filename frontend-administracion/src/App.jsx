import { useEffect, useMemo, useRef, useState } from 'react';
import {
  Bot, BookOpen, ChartNoAxesCombined, ChevronDown, Database, ExternalLink,
  FileText, FileUp, Gamepad2, GraduationCap, Image, LayoutDashboard, Layers3, Link2,
  Menu, Pencil, Plus, RefreshCw, Save, Search, Settings, Shapes, Sigma,
  Trash2, Trophy, Users, X,
} from 'lucide-react';
import { gatewayApi } from '@/api';
import { sanitizeContentHtml } from '@/utils/sanitizeContentHtml';
import renderMathInElement from 'katex/contrib/auto-render';
import 'katex/dist/katex.min.css';
import './section-editor.css';
import SectionEditorPage from './pages/lessons/SectionEditorPage';
import LessonStructurePage from './pages/lessons/LessonStructurePage';
import ResourcePage from './pages/resources/ResourcePage';
import { MathPreview, PresentationPreview } from './components/content/ContentPreview';
import FormEditor from './components/forms/FormEditor';
import { BOOLEAN_FIELDS, LOOKUP_FIELDS, OPTION_LABELS, SELECTS, SYSTEM_FIELDS, label } from './config/resourceFields';
import { AdminLogin, AppFooter, Sidebar, Topbar } from './components/layout/AdminLayout';

const NAVIGATION = [
  { id: 'dashboard', label: 'Estadísticas de uso', icon: LayoutDashboard, roles: ['admin'] },
  { id: 'users', label: 'Gestión de usuarios', icon: Users, roles: ['admin'] },
  { id: 'progress', label: 'Alumnos y progreso', icon: ChartNoAxesCombined, roles: ['admin'] },
  { id: 'topics', label: 'Lecciones y contenido', icon: Layers3, roles: ['editor'] },
  { id: 'levels', label: 'Niveles educativos', icon: GraduationCap, roles: ['editor'] },
  { id: 'areas', label: 'Áreas', icon: Shapes, roles: ['editor'] },
  { id: 'media', label: 'Medios', icon: Image, roles: ['editor'] },
  { id: 'resources', label: 'Recursos', icon: Link2, roles: ['editor'] },
  { id: 'exercises', label: 'Ejercicios', icon: FileText, roles: ['editor'] },
  { id: 'challenges', label: 'Retos', icon: Trophy, roles: ['editor'] },
  { id: 'games', label: 'Juegos matemáticos', icon: Gamepad2, roles: ['editor'] },
  { id: 'import', label: 'Importar Excel / CSV', icon: FileUp, roles: ['editor'] },
  { id: 'settings', label: 'Configuración del sitio', icon: Settings, roles: ['editor'] },
  { id: 'ai', label: 'Modelos IA', icon: Bot, roles: ['editor'] },
  { id: 'latex', label: 'Paquetes LaTeX', icon: Sigma, roles: ['editor'] },
];

const PAGES = {
  topics: {
    title: 'Estructura de lecciones', service: 'learning',
    resources: [
      { id: 'aprendizaje_lecciones', label: '1. Lecciones principales' },
      { id: 'aprendizaje_secciones_leccion', label: '2. Secciones y sublecciones' },
      { id: 'aprendizaje_medios_leccion', label: '3. Archivos vinculados' },
    ],
    description: 'Organiza cada contenido siguiendo la relación: Área → Lección principal → Sección → Sublección.',
  },
  levels: { title: 'Niveles educativos', service: 'learning', resource: 'aprendizaje_niveles_educativos', description: 'Configura Primaria, Secundaria y Preparatoria.', noCreate: true },
  areas: { title: 'Áreas', service: 'learning', resource: 'aprendizaje_categorias', description: 'Administra las áreas matemáticas de cada nivel educativo.' },
  media: { title: 'Biblioteca de medios', service: 'learning', resource: 'aprendizaje_medios', description: 'Imágenes, documentos, videos y enlaces usados por las lecciones.', cardView: true },
  resources: { title: 'Recursos y enlaces', service: 'learning', resource: 'aprendizaje_recursos', description: 'Material complementario asociado a cada lección.' },
  exercises: { title: 'Banco de ejercicios', service: 'practice', resource: 'practica_ejercicios', description: 'Edita las preguntas, respuestas y el modelo asociado a cada actividad o evaluación.' },
  challenges: { title: 'Retos semanales', service: 'practice', resource: 'practica_retos', description: 'Crea metas y retos para motivar la práctica constante.' },
  games: { title: 'Juegos matemáticos', service: 'practice', resource: 'practica_juegos', description: 'Edita los juegos que aparecen en la sección de Práctica.' },
  users: { title: 'Usuarios', service: 'identity', resource: 'identidad_usuarios', description: 'Cuentas, roles y acceso a la Academia.' },
  progress: {
    title: 'Alumnos y progreso', service: 'practice',
    resources: [
      { id: 'practica_progreso_usuario', label: 'Progreso por lección' },
      { id: 'practica_intentos_ejercicio', label: 'Intentos de ejercicios' },
      { id: 'practica_retos_usuario', label: 'Progreso de retos' },
    ],
    description: 'Consulta el avance, intentos, resultados y retos completados.', readMostly: true,
  },
  settings: { title: 'Configuración', service: 'learning', resource: 'aprendizaje_configuracion_sitio', description: 'Ajustes generales utilizados por la plataforma.' },
  ai: {
    title: 'Configuración IA', service: 'ai',
    resources: [
      { id: 'ia_modelos', label: 'Modelos y proveedores' },
      { id: 'ia_prompts', label: 'Prompts del sistema' },
      { id: 'ia_conversaciones', label: 'Conversaciones' },
      { id: 'ia_mensajes', label: 'Mensajes' },
      { id: 'ia_generaciones', label: 'Historial de generaciones' },
    ],
    description: 'Proveedores, modelos, prompts y trazabilidad de la inteligencia artificial.',
  },
};

const rowsOf = (result) => result?.rows ?? (Array.isArray(result) ? result : []);

function Dashboard({ health, setPage }) {
  const [data, setData] = useState({ lessons: [], sections: [], exercises: [], challenges: [], users: [], progress: [], attempts: [] });
  useEffect(() => {
    Promise.all([
      gatewayApi.list('learning', 'aprendizaje_lecciones', 200), gatewayApi.list('learning', 'aprendizaje_secciones_leccion', 200),
      gatewayApi.list('practice', 'practica_ejercicios', 200), gatewayApi.list('practice', 'practica_retos', 200),
      gatewayApi.list('identity', 'identidad_usuarios', 200), gatewayApi.list('practice', 'practica_progreso_usuario', 200),
      gatewayApi.list('practice', 'practica_intentos_ejercicio', 200),
    ]).then(([lessons, sections, exercises, challenges, users, progress, attempts]) => setData({ lessons: rowsOf(lessons), sections: rowsOf(sections), exercises: rowsOf(exercises), challenges: rowsOf(challenges), users: rowsOf(users), progress: rowsOf(progress), attempts: rowsOf(attempts) })).catch(() => {});
  }, []);
  const completed = data.progress.filter((item) => item.status === 'completed').length;
  const average = data.progress.length ? Math.round(data.progress.reduce((sum, item) => sum + Number(item.progress_percent || 0), 0) / data.progress.length) : 0;
  const activeUsers = data.users.filter((item) => item.active);
  const students = activeUsers.filter((item) => item.role === 'student');
  const editors = activeUsers.filter((item) => item.role === 'editor');
  const activeLearners = new Set([...data.progress, ...data.attempts].map((item) => Number(item.user_id)).filter(Boolean)).size;
  const averageScore = data.attempts.length ? Math.round(data.attempts.reduce((sum, item) => sum + Number(item.score_percent || 0), 0) / data.attempts.length) : 0;
  const completionRate = data.progress.length ? Math.round(completed * 100 / data.progress.length) : 0;
  const stats = [['Usuarios activos', activeUsers.length], ['Estudiantes', students.length], ['Editores', editors.length], ['Usuarios con actividad', activeLearners], ['Intentos realizados', data.attempts.length], ['Progreso promedio', `${average}%`], ['Finalización', `${completionRate}%`], ['Puntuación promedio', `${averageScore}%`]];
  return (
    <div className="page-content">
      <div className="page-title"><div><h1>Estadísticas de uso</h1><p>Consulta la adopción, actividad y avance de los estudiantes en Academia CABSA.</p></div><span className="service-health"><i className={(health?.services ?? []).every((item) => item.status === 'ok') ? 'online' : ''} />{(health?.services ?? []).filter((item) => item.status === 'ok').length}/4 servicios</span></div>
      <section className="stat-grid">{stats.map(([name, value]) => <article key={name}><span>{value}</span><strong>{name}</strong></article>)}</section>
      <div className="dashboard-columns">
        <section className="admin-panel"><div className="panel-heading"><div><h2>Actividad de la plataforma</h2><p>{data.lessons.length} lecciones y {data.sections.length} contenidos disponibles</p></div><button className="admin-secondary" onClick={() => setPage('users')}>Gestionar usuarios</button></div><table className="admin-table"><thead><tr><th>Indicador</th><th>Resultado</th></tr></thead><tbody><tr><td>Estudiantes activos</td><td>{students.length}</td></tr><tr><td>Estudiantes con actividad registrada</td><td>{activeLearners}</td></tr><tr><td>Lecciones completadas</td><td>{completed}</td></tr><tr><td>Ejercicios disponibles</td><td>{data.exercises.length}</td></tr><tr><td>Retos activos</td><td>{data.challenges.filter((item) => item.active).length}</td></tr></tbody></table></section>
        <div className="dashboard-stack"><section className="admin-panel"><div className="panel-heading"><h2>Distribución de cuentas</h2></div><div className="compact-row"><b>{students.length}</b><div><strong>Estudiantes</strong><small>Cuentas activas de aprendizaje</small></div></div><div className="compact-row"><b>{editors.length}</b><div><strong>Editores</strong><small>Responsables del contenido</small></div></div></section><section className="admin-panel"><div className="panel-heading"><h2>Últimos intentos</h2><button className="admin-secondary" onClick={() => setPage('progress')}>Ver detalle</button></div>{data.attempts.slice(0, 6).map((item) => <div className="compact-row" key={item.id}><b>{item.score_percent}%</b><div><strong>Alumno #{item.user_id}</strong><small>{new Date(item.attempted_at).toLocaleString('es-MX')}</small></div></div>)}{!data.attempts.length && <p className="muted">Aún no hay intentos registrados.</p>}</section></div>
      </div>
    </div>
  );
}

function ImportPage() {
  const targets = [PAGES.areas, { ...PAGES.topics, resource: 'aprendizaje_lecciones' }, PAGES.resources, PAGES.challenges];
  const [target, setTarget] = useState(0); const [text, setText] = useState(''); const [message, setMessage] = useState(''); const [busy, setBusy] = useState(false);
  const importRows = async () => {
    setBusy(true); setMessage('');
    try {
      const lines = text.trim().split(/\r?\n/).filter(Boolean); if (lines.length < 2) throw new Error('Incluye encabezados y al menos una fila.');
      const parse = (line) => line.split(',').map((cell) => cell.trim().replace(/^"|"$/g, ''));
      const headers = parse(lines[0]); const chosen = targets[target];
      for (const line of lines.slice(1)) { const values = parse(line); await gatewayApi.create(chosen.service, chosen.resource, Object.fromEntries(headers.map((header, index) => [header, values[index] ?? '']))); }
      setMessage(`Se importaron ${lines.length - 1} registros correctamente.`); setText('');
    } catch (reason) { setMessage(reason.message); } finally { setBusy(false); }
  };
  return <div className="page-content"><div className="page-title"><div><h1>Importar desde Excel / CSV</h1><p>Carga registros masivos usando columnas compatibles con la arquitectura nueva.</p></div></div><section className="admin-panel import-guide"><h2>Carga masiva sencilla</h2><ol><li>Guarda tu hoja de Excel como CSV UTF-8.</li><li>La primera fila debe contener los nombres técnicos de las columnas.</li><li>Revisa los datos antes de iniciar la importación.</li></ol><label>Destino<select value={target} onChange={(event) => setTarget(Number(event.target.value))}>{targets.map((item, index) => <option value={index} key={item.title}>{item.title}</option>)}</select></label><label>Contenido CSV<textarea rows="13" value={text} onChange={(event) => setText(event.target.value)} placeholder={'name,slug,description\nÁlgebra,algebra,Fundamentos de álgebra'} /></label>{message && <div className={`alert ${message.includes('correctamente') ? 'success' : 'error'}`}>{message}</div>}<button className="admin-primary" disabled={busy || !text.trim()} onClick={importRows}><FileUp /> {busy ? 'Importando…' : 'Importar registros'}</button></section></div>;
}

const LATEX_PACKAGES = [
  ['ams', 'AMS', 'Entornos avanzados para álgebra, matrices y ecuaciones.'], ['color', 'Color', 'Colores en expresiones matemáticas.'],
  ['boldsymbol', 'Símbolos en negrita', 'Vectores y símbolos destacados.'], ['physics', 'Physics', 'Notación para derivadas, vectores y física.'],
  ['mhchem', 'Química', 'Fórmulas y ecuaciones químicas.'], ['mathtools', 'Mathtools', 'Herramientas ampliadas para notación matemática.'],
];
const storedLatexPackages = () => {
  try {
    const value = JSON.parse(localStorage.getItem('cabsa:latex-packages') || '["ams","color"]');
    return Array.isArray(value) ? value : ['ams', 'color'];
  } catch { return ['ams', 'color']; }
};
function LatexPage() {
  const [enabled, setEnabled] = useState(storedLatexPackages);
  const [search, setSearch] = useState(''); const [sample, setSample] = useState('\\[x = \\frac{-b \\pm \\sqrt{b^2-4ac}}{2a}\\]'); const previewRef = useRef(null);
  useEffect(() => { if (previewRef.current) { previewRef.current.textContent = sample; renderMathInElement(previewRef.current, MATH_OPTIONS); } }, [sample, enabled]);
  const save = () => { localStorage.setItem('cabsa:latex-packages', JSON.stringify(enabled)); window.alert('Configuración LaTeX guardada.'); };
  return <div className="page-content"><div className="page-title"><div><h1>Paquetes LaTeX</h1><p>Activa extensiones de representación matemática y comprueba el resultado.</p></div></div><section className="admin-panel"><h2>Extensiones KaTeX compatibles</h2><label className="search-wide"><Search /><input value={search} onChange={(event) => setSearch(event.target.value)} placeholder="Buscar paquete…" /></label><div className="latex-grid">{LATEX_PACKAGES.filter((item) => item.join(' ').toLowerCase().includes(search.toLowerCase())).map(([key, name, description]) => <label className="latex-card" key={key}><input type="checkbox" checked={enabled.includes(key)} onChange={(event) => setEnabled(event.target.checked ? [...enabled, key] : enabled.filter((item) => item !== key))} /><span><strong>{name}</strong><code>[tex]/{key}</code><small>{description}</small></span></label>)}</div><div className="latex-test"><label>Probar expresión<textarea rows="4" value={sample} onChange={(event) => setSample(event.target.value)} /></label><div><small>PREVISUALIZACIÓN</small><div ref={previewRef} className="math-output" /></div></div><button className="admin-primary" onClick={save}><Save /> Guardar paquetes</button></section></div>;
}

export default function App() {
  const [page, setPage] = useState('dashboard'); const [menuOpen, setMenuOpen] = useState(false); const [health, setHealth] = useState(null);
  const [user, setUser] = useState(() => {
    try { return JSON.parse(localStorage.getItem('cabsa_current_user') || 'null'); }
    catch { return null; }
  });
  useEffect(() => { void gatewayApi.health().then(setHealth).catch(() => setHealth({ services: [] })); }, []);
  const logout = () => {
    localStorage.removeItem('cabsa_access_token');
    localStorage.removeItem('cabsa_current_user');
    setUser(null);
  };
  if (!user || !localStorage.getItem('cabsa_access_token')) return <AdminLogin onLogin={setUser} />;
  const navigation = NAVIGATION.filter((item) => item.roles.includes(user.role));
  const activePage = navigation.some((item) => item.id === page) ? page : navigation[0]?.id;
  const config = PAGES[activePage];
  return <div className="legacy-admin"><Topbar setOpen={setMenuOpen} onLogout={logout} user={user} /><div className="legacy-layout"><Sidebar navigation={navigation} page={activePage} setPage={setPage} open={menuOpen} setOpen={setMenuOpen} />{menuOpen && <button className="sidebar-overlay" onClick={() => setMenuOpen(false)} />}<main className="legacy-main">{activePage === 'dashboard' && <Dashboard health={health} setPage={setPage} />}{config && <ResourcePage key={activePage} config={config} />}{activePage === 'import' && <ImportPage />}{activePage === 'latex' && <LatexPage />}<AppFooter health={health} /></main></div></div>;
}
