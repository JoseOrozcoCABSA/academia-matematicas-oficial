import { useEffect, useMemo, useRef, useState } from 'react';
import { Link, useParams } from 'react-router-dom';
import { BookOpen, Bot, Calculator, Check, ChevronDown, ChevronRight, Clock3, FileText, Sparkles, Target, Trophy } from 'lucide-react';
import renderMathInElement from 'katex/contrib/auto-render';
import 'katex/dist/katex.min.css';
import { aiApi, learningApi, practiceApi } from '@/api';
import { sanitizeContentHtml } from '@/utils/sanitizeContentHtml';
import { MathSidebar } from '@/components/layout/StudentShell';

const MATH_OPTIONS = {
  delimiters: [
    { left: '$$', right: '$$', display: true },
    { left: '\\[', right: '\\]', display: true },
    { left: '\\(', right: '\\)', display: false },
  ],
  throwOnError: false,
  strict: false,
};
const normalize = (value = '') => String(value).normalize('NFD').replace(/[\u0300-\u036f]/g, '').toLowerCase();

const sectionLabel = (type) => ({ presentation: 'Presentación', video: 'Video de apoyo', example: 'Ejemplos', activity: 'Actividad', evaluation: 'Evaluación', exam: 'Examen', mini: 'Contenido breve', pptx: 'Presentación', document: 'Documento / PDF', html: 'Lectura' }[type] || 'Contenido');

function normalizeExercises(payload) {
  const embedded = payload?.exercises;
  const items = Array.isArray(embedded)
    ? embedded
    : embedded?.exercises ?? embedded?.ejercicios ?? payload?.ejercicios ?? [];
  return items.map((item, index) => ({
    id: item.id ?? index + 1,
    question: item.question ?? item.ejercicio ?? 'Resuelve el ejercicio',
    answer: item.answer ?? item.resultado ?? '',
    explanation: item.explanation ?? item.explicacion ?? '',
    operands: item.operands ?? item.operandos,
    symbol: item.symbol ?? item.simbolo,
    type: item.type ?? item.response_type ?? (Array.isArray(item.options) ? 'multiple_choice' : 'text'),
    options: Array.isArray(item.options) ? item.options : [],
  }));
}

export function ExerciseBlock({ section, lesson, user, onComplete }) {
  const [items, setItems] = useState([]);
  const [answers, setAnswers] = useState({});
  const [result, setResult] = useState(null);
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState('');
  const [modelInfo, setModelInfo] = useState(null);
  const load = async () => {
    setLoading(true); setError(''); setResult(null); setAnswers({});
    try {
      const data = section.ai_exercises_enabled
        ? await aiApi.generate({ user_id: user.id, lesson_id: lesson.id, section_id: section.id, topic: lesson.title, count: 10, type: section.section_type })
        : await practiceApi.exercises(section.id);
      setItems(normalizeExercises(data));
      setModelInfo(section.ai_exercises_enabled ? data.model ?? null : { name: 'Reactivos preparados por el editor', manual: true });
    } catch (reason) { setError(reason.message); }
    finally { setLoading(false); }
  };
  const submit = async () => {
    const correct = items.filter((item) => normalize(answers[item.id]).trim() === normalize(item.answer).trim()).length;
    const score = items.length ? Math.round(correct / items.length * 100) : 0;
    setError('');
    try {
      await practiceApi.attempt({ user_id: user.id, section_id: section.id, answers, score_percent: score });
      setResult({ correct, score });
      if (section.section_type !== 'evaluation' || score >= 70) onComplete(section.id, true);
    } catch (reason) {
      setError(`La actividad se calificó, pero no pudo guardarse: ${reason.message}`);
      setResult({ correct, score });
    }
  };
  if (!items.length) return <div className="exercise-launch"><BrainIcon /><div><h3>{sectionLabel(section.section_type)} interactiva</h3><p>{section.ai_exercises_enabled ? 'Genera ejercicios desde el modelo central configurado y recibe tu calificación.' : 'Responde los reactivos preparados por tu docente y recibe tu calificación.'}</p></div><button onClick={load} disabled={loading}>{loading ? (section.ai_exercises_enabled ? 'Generando…' : 'Cargando…') : 'Comenzar'}</button>{error && <small>{error}</small>}</div>;
  return <div className="embedded-exercises"><header><div><span>{sectionLabel(section.section_type)}</span><h3>Resuelve los ejercicios</h3>{modelInfo && <small>{modelInfo.manual ? modelInfo.name : `Motor: ${modelInfo.name}${modelInfo.fallback ? ' · respaldo local' : ''}`}</small>}</div>{section.ai_exercises_enabled && <button onClick={load}>Generar otros</button>}</header>{modelInfo?.warning && <div className="exercise-provider-warning">{modelInfo.warning}</div>}<div className="exercise-grid">{items.map((item, index) => <label className={result ? (normalize(answers[item.id]) === normalize(item.answer) ? 'correct' : 'wrong') : ''} key={item.id}><span>{index + 1}</span><div><b>{item.question}</b>{item.operands?.length ? <strong className="operation">{item.operands.join(` ${item.symbol || '+'} `)} =</strong> : null}{item.type === 'multiple_choice' && item.options.length ? <div className="exercise-options">{item.options.map((option) => <label key={option}><input type="radio" name={`answer-${section.id}-${item.id}`} disabled={Boolean(result)} checked={answers[item.id] === option} onChange={() => setAnswers({ ...answers, [item.id]: option })} /> <span>{option}</span></label>)}</div> : <input type={item.type === 'number' ? 'number' : 'text'} disabled={Boolean(result)} value={answers[item.id] ?? ''} onChange={(event) => setAnswers({ ...answers, [item.id]: event.target.value })} placeholder="Respuesta" />}{result && normalize(answers[item.id]) !== normalize(item.answer) && <small>Respuesta correcta: {item.answer}</small>}{result && item.explanation && <small>{item.explanation}</small>}</div></label>)}</div>{!result ? <button className="primary-action" onClick={submit}>Finalizar {section.section_type === 'exam' ? 'examen' : section.section_type === 'evaluation' ? 'evaluación' : 'actividad'}</button> : <div className={result.score >= 70 ? 'result-banner pass' : 'result-banner fail'}><Trophy /><div><strong>{result.score}%</strong><span>{result.correct} de {items.length} respuestas correctas</span></div></div>}</div>;
}

function BrainIcon() { return <span className="brain-icon"><Sparkles /></span>; }

function buildLessonTabs(sections) {
  const parentTypes = ['presentation', 'activity', 'evaluation', 'exam'];
  const parentGroups = sections
    .filter((section) => parentTypes.includes(section.section_type) && !Number(section.parent_section_id))
    .map((parent) => ({
      id: `section-${parent.id}`,
      title: parent.title || sectionLabel(parent.section_type),
      type: parent.section_type === 'presentation' ? 'lesson' : parent.section_type,
      parent,
      children: [],
    }));
  const groupByParent = new Map(parentGroups.map((group) => [Number(group.parent.id), group]));
  const orphans = [];
  let currentGroup = parentGroups.find((group) => group.type === 'lesson') ?? null;

  sections.forEach((section) => {
    if (parentTypes.includes(section.section_type) && !Number(section.parent_section_id)) {
      currentGroup = groupByParent.get(Number(section.id));
      return;
    }
    const explicitParent = groupByParent.get(Number(section.parent_section_id));
    if (explicitParent) explicitParent.children.push(section);
    else if (currentGroup) currentGroup.children.push(section);
    else orphans.push(section);
  });

  if (!parentGroups.length && orphans.length) parentGroups.push({ id: 'lesson', title: 'Lección', type: 'lesson', parent: null, children: orphans });
  else if (orphans.length) parentGroups[0].children.unshift(...orphans);
  return parentGroups.map((group) => group.type === 'lesson'
    ? group
    : { ...group, sections: [group.parent, ...group.children] });
}

function SectionHtml({ html }) {
  const containerRef = useRef(null);
  const safeHtml = useMemo(() => sanitizeContentHtml(html), [html]);
  useEffect(() => {
    if (containerRef.current) renderMathInElement(containerRef.current, MATH_OPTIONS);
  }, [safeHtml]);
  if (!html) return null;
  return <div ref={containerRef} className="legacy-content" dangerouslySetInnerHTML={{ __html: safeHtml }} />;
}

function MathText({ children, className }) {
  const containerRef = useRef(null);
  useEffect(() => {
    if (containerRef.current) renderMathInElement(containerRef.current, MATH_OPTIONS);
  }, [children]);
  return <div ref={containerRef} className={className}>{children}</div>;
}

function PresentationViewer({ path, title }) {
  const containerRef = useRef(null);
  const [status, setStatus] = useState('loading');
  const [error, setError] = useState('');
  useEffect(() => {
    let viewer;
    let cancelled = false;
    const open = async () => {
      setStatus('loading'); setError('');
      try {
        const buffer = await learningApi.presentation(path);
        if (cancelled || !containerRef.current) return;
        const { PptxViewer, RECOMMENDED_ZIP_LIMITS } = await import('@aiden0z/pptx-renderer');
        if (cancelled || !containerRef.current) return;
        viewer = await PptxViewer.open(buffer, containerRef.current, {
          renderMode: 'list',
          fitMode: 'contain',
          zipLimits: RECOMMENDED_ZIP_LIMITS,
          lazySlides: true,
          lazyMedia: true,
          listOptions: { windowed: true, initialSlides: 3, batchSize: 4 },
          pdfjs: false,
        });
        if (!cancelled) setStatus('ready');
      } catch (reason) {
        if (!cancelled) { setStatus('error'); setError(reason.message); }
      }
    };
    void open();
    return () => { cancelled = true; viewer?.destroy(); };
  }, [path]);
  return <div className="presentation-viewer"><div className="presentation-heading"><FileText /><div><strong>{title}</strong><small>Presentación interactiva</small></div></div>{status === 'loading' && <p className="presentation-state">Preparando diapositivas…</p>}{status === 'error' && <div className="presentation-error"><b>No se pudo mostrar la presentación.</b><span>{error}</span></div>}<div ref={containerRef} className={status === 'ready' ? 'pptx-canvas ready' : 'pptx-canvas'} /></div>;
}

function LessonAccordion({ section, defaultOpen = false }) {
  const [open, setOpen] = useState(defaultOpen);
  const isPptx = section.section_type === 'pptx';
  const icon = section.section_type === 'video' ? '▶' : section.section_type === 'example' ? '✎' : isPptx ? 'P' : section.section_type === 'document' ? 'PDF' : '▣';
  return <div className={open ? 'content-accordion open' : 'content-accordion'}><button type="button" onClick={() => setOpen(!open)}><span>{icon}</span><strong>{section.title || sectionLabel(section.section_type)}</strong><ChevronDown /></button><div>{open && (isPptx ? <PresentationViewer path={section.body_html} title={section.title || 'Presentación'} /> : <SectionHtml html={section.body_html} />)}</div></div>;
}

function LessonResources({ resources = [] }) {
  if (!resources.length) return null;
  return <section className="public-resources"><h2>Recursos de la lección</h2>{resources.map((resource) => resource.resource_type === 'interactive' ? <article className="interactive-resource" key={resource.id}><div><strong>{resource.title}</strong><small>{resource.description}</small></div><iframe src={resource.url} title={resource.title} loading="lazy" /></article> : <a href={resource.url || '#'} target="_blank" rel="noreferrer" key={resource.id}><FileText /><p><strong>{resource.title}</strong><small>{resource.description}</small></p><b>Ver ↗</b></a>)}</section>;
}

export default function LessonPage({ catalog, dashboard, user, refreshDashboard }) {
  const { slug } = useParams();
  const [data, setData] = useState(null);
  const [error, setError] = useState('');
  const [completed, setCompleted] = useState(new Set());
  const [activeTab, setActiveTab] = useState('');
  useEffect(() => { setData(null); setError(''); learningApi.lesson(slug).then(setData).catch((reason) => setError(reason.message)); }, [slug]);
  useEffect(() => {
    const lessonId = Number(data?.lesson?.id);
    const saved = (dashboard?.progress ?? []).find((item) => Number(item.lesson_id) === lessonId);
    let ids = saved?.completed_sections ?? [];
    if (typeof ids === 'string') { try { ids = JSON.parse(ids); } catch { ids = []; } }
    setCompleted(new Set((ids || []).map(Number)));
  }, [data?.lesson?.id, dashboard]);
  const lesson = data?.lesson;
  const sections = data?.sections ?? [];
  const tabs = useMemo(() => buildLessonTabs(sections), [sections]);
  useEffect(() => { if (tabs.length && !tabs.some((tab) => tab.id === activeTab)) setActiveTab(tabs[0].id); }, [tabs, activeTab]);
  const category = (catalog?.categories ?? []).find((item) => Number(item.id) === Number(lesson?.category_id));
  const savedProgress = (dashboard?.progress ?? []).find((item) => Number(item.lesson_id) === Number(lesson?.id));
  const progress = Number(savedProgress?.progress_percent || (sections.length ? completed.size / sections.length * 100 : 0));
  const saveCompletion = async (sectionId, forceComplete = null) => {
    const next = new Set(completed);
    const shouldComplete = forceComplete ?? !next.has(Number(sectionId));
    shouldComplete ? next.add(Number(sectionId)) : next.delete(Number(sectionId));
    setCompleted(next);
    await practiceApi.progress({ user_id: user.id, lesson_id: lesson.id, progress_percent: Math.round(next.size / Math.max(1, sections.length) * 100), status: next.size >= sections.length ? 'completed' : 'in_progress', completed_sections: [...next] }).then(refreshDashboard).catch(() => {});
  };
  if (error) return <div className="error-page"><h1>No se pudo abrir la lección</h1><p>{error}</p><Link to="/lecciones">Volver a los cursos</Link></div>;
  if (!data) return <div className="loading-page">Preparando la lección…</div>;

  const active = tabs.find((tab) => tab.id === activeTab) ?? tabs[0];
  return <div className="academy-layout lesson-layout">
    <MathSidebar catalog={catalog} currentSlug={slug} />
    <main className="lesson-main">
      <div className="breadcrumbs"><Link to="/">Matemáticas</Link><ChevronRight /><Link to={`/lecciones?area=${category?.slug || ''}`}>{category?.name || 'Cursos'}</Link><ChevronRight /><b>{lesson.title}</b></div>
      <header className="lesson-hero-v2"><div className="hero-body"><span className="lesson-symbol">{lesson.icon || '+'}</span><div className="hero-copy-v2"><h1>{lesson.title}</h1><p>{lesson.summary}</p><div className="lesson-meta-row"><span><Clock3 /> {lesson.duration_minutes || 0} min</span><span><Target /> {lesson.difficulty}</span><span><BookOpen /> {tabs.length} secciones</span><span>Tema</span></div></div>{lesson.hero_expression && <MathText className="dynamic-expression">{lesson.hero_expression}</MathText>}</div></header>
      {!sections.length ? <div className="empty-state"><h2>Contenido en preparación</h2><p>Esta lección aún no contiene secciones visibles.</p></div> : lesson.page_type === 'path' ? <section className="path-view"><h2>Secciones de la ruta</h2>{sections.map((section, index) => <article key={section.id}><span className={`tone-${index % 5 + 1}`}>{index + 1}</span><div><strong>{section.title}</strong><small>{sectionLabel(section.section_type)} · {section.duration_minutes || 0} min</small>{!['activity', 'evaluation', 'exam'].includes(section.section_type) && <SectionHtml html={section.body_html} />}{['activity', 'evaluation', 'exam'].includes(section.section_type) && <ExerciseBlock section={section} lesson={lesson} user={user} onComplete={saveCompletion} />}</div><button className={completed.has(Number(section.id)) ? 'completed' : ''} onClick={() => saveCompletion(section.id)}>{completed.has(Number(section.id)) ? 'Completada' : 'Completar'}</button></article>)}</section> : <>
        <nav className="lesson-tabs">{tabs.map((tab) => <button className={tab.id === activeTab ? 'active' : ''} onClick={() => setActiveTab(tab.id)} key={tab.id}>{tab.title}</button>)}</nav>
        <div className="tab-pane active">
          {active?.type === 'lesson' && <>{active.parent?.body_html && <article className="topic-content-card"><SectionHtml html={active.parent.body_html} /></article>}{active.children.map((section, index) => ['video', 'example', 'pptx', 'document'].includes(section.section_type) ? <LessonAccordion section={section} defaultOpen={section.section_type === 'video' && index === 0} key={section.id} /> : <article className="topic-content-card" key={section.id}><h2>{section.title}</h2><SectionHtml html={section.body_html} /></article>)}</>}
          {['activity', 'evaluation', 'exam'].includes(active?.type) && (active.sections ?? []).map((section) => <article className="interactive-section" key={section.id}><header><span>{sectionLabel(section.section_type)}</span>{section.duration_minutes > 0 && <small><Clock3 /> {section.duration_minutes} min</small>}</header><h2>{section.title}</h2><SectionHtml html={section.body_html} />{['activity', 'evaluation', 'exam'].includes(section.section_type) && <ExerciseBlock section={section} lesson={lesson} user={user} onComplete={saveCompletion} />}<button className={completed.has(Number(section.id)) ? 'complete-section completed' : 'complete-section'} onClick={() => saveCompletion(section.id)}><Check /> {completed.has(Number(section.id)) ? 'Completada' : section.section_type === 'evaluation' ? 'Finalizar evaluación' : 'Marcar como completada'}</button></article>)}
        </div>
      </>}
      <LessonResources resources={data.resources} />
    </main>
    <aside className="lesson-rail"><section className="rail-card lesson-progress-status"><h3>Mi progreso</h3>{progress > 0 ? <strong className={progress >= 70 ? 'approved' : 'not-approved'}>{progress >= 70 ? '✓ Aprobado' : '✕ No aprobado'}</strong> : <p>Completa la evaluación para ver tu resultado.</p>}</section><section className="rail-card lesson-information"><h3>Información</h3><p><Target /><span><small>Dificultad</small><b>{lesson.difficulty}</b></span></p><p><Clock3 /><span><small>Duración</small><b>{lesson.duration_minutes || 0} min</b></span></p><p><Calculator /><span><small>Categoría</small><b>{category?.name || 'Matemáticas'}</b></span></p><p><BookOpen /><span><small>Secciones</small><b>{tabs.length}</b></span></p></section><section className="rail-card tutor-help"><Bot /><h3>¿Tienes dudas?</h3><p>El Tutor IA te explica paso a paso.</p><Link to="/tutor">Preguntar al tutor</Link></section></aside>
  </div>;
}
