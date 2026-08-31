import { useEffect, useMemo, useRef, useState } from 'react';
import { Layers3, Pencil, Plus, Save, Trash2 } from 'lucide-react';
import { gatewayApi } from '@/api';
import FormEditor from '../../components/forms/FormEditor';
import { MathPreview } from '../../components/content/ContentPreview';
import SectionEditorPage from './SectionEditorPage';
import { OPTION_LABELS, SELECTS } from '../../config/resourceFields';

/** Normaliza listas directas y respuestas paginadas/anidadas del Gateway. */
const rowsOf = (result) => {
  if (Array.isArray(result)) return result;
  if (!result || typeof result !== 'object') return [];
  if (Array.isArray(result.rows)) return result.rows;
  if (Array.isArray(result.items)) return result.items;
  return result.data && result.data !== result ? rowsOf(result.data) : [];
};

const TAB_TEMPLATES = [
  { type: 'presentation', title: 'Lecciones', icon: '📘', description: 'Apartado principal con explicaciones y recursos del tema.' },
  { type: 'activity', title: 'Actividad', icon: '✏️', description: 'Apartado para práctica y trabajo guiado.' },
  { type: 'evaluation', title: 'Evaluación', icon: '✅', description: 'Apartado para comprobar y calificar el aprendizaje.' },
  { type: 'presentation', title: 'Otro apartado', icon: '➕', description: 'Apartado adicional cuyo nombre podrás cambiar.' },
];
const CONTENT_TYPES = [
  ['html', '📖', 'Lectura', 'Texto enriquecido, HTML y fórmulas LaTeX.'],
  ['mini', '💡', 'Contenido breve', 'Una definición, recordatorio o dato importante.'],
  ['example', '🧩', 'Ejemplo resuelto', 'Procedimiento explicado paso a paso.'],
  ['video', '▶️', 'Video', 'Video incorporado o enlace audiovisual.'],
  ['pptx', '📊', 'PowerPoint', 'Presentación cargada desde un archivo PPTX.'],
  ['document', '📄', 'Documento / PDF', 'Guía, ficha de trabajo o material descargable.'],
  ['presentation', '🎓', 'Introducción', 'Presentación o apertura de un bloque.'],
  ['activity', '✏️', 'Actividad', 'Práctica que el estudiante puede completar.'],
  ['evaluation', '✅', 'Evaluación corta', 'Comprobación del aprendizaje y resultado.'],
  ['exam', '📝', 'Examen', 'Evaluación formal con ejercicios y calificación.'],
];

export default function LessonStructurePage({ lesson, onBack }) {
  const [currentLesson, setCurrentLesson] = useState(lesson);
  const [sections, setSections] = useState([]);
  const [definitions, setDefinitions] = useState({ lesson: null, section: null });
  const [lookups, setLookups] = useState({});
  const [editor, setEditor] = useState(null);
  const [creationTarget, setCreationTarget] = useState(null);
  const [editingSection, setEditingSection] = useState(null);
  const [selectedId, setSelectedId] = useState(null);
  const [sectionDraft, setSectionDraft] = useState(null);
  const [savingSection, setSavingSection] = useState(false);
  const [creatingDefaults, setCreatingDefaults] = useState(false);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState('');
  const contentEditorRef = useRef(null);

  const load = async () => {
    setLoading(true); setError('');
    try {
      const [catalog, lessonResult, sectionResult, categoryResult, mediaResult] = await Promise.all([
        gatewayApi.resources('learning'),
        gatewayApi.list('learning', 'aprendizaje_lecciones', 500),
        gatewayApi.listWhere('learning', 'aprendizaje_secciones_leccion', { lesson_id: lesson.id }, 100),
        gatewayApi.list('learning', 'aprendizaje_categorias', 500),
        gatewayApi.list('learning', 'aprendizaje_medios', 500),
      ]);
      const allLessons = rowsOf(lessonResult);
      const allSections = rowsOf(sectionResult);
      const lessonRows = allLessons.map((item) => ({ value: item.id, plainLabel: item.title, label: `${item.title} · #${item.id}` }));
      const sectionRows = allSections.map((item) => ({ value: item.id, plainLabel: item.title, label: `${item.title} · #${item.id} · Lección #${item.lesson_id}`, lessonId: item.lesson_id, parentSectionId: item.parent_section_id }));
      const mediaRows = rowsOf(mediaResult).map((item) => ({ value: item.id, plainLabel: item.title, label: `${item.title} · #${item.id}` }));
      setCurrentLesson(allLessons.find((item) => String(item.id) === String(lesson.id)) || currentLesson);
      const lessonSections = allSections.filter((item) => String(item.lesson_id) === String(lesson.id));
      setSections(lessonSections);
      setSelectedId((current) => lessonSections.some((item) => String(item.id) === String(current)) ? current : (lessonSections[0]?.id ?? null));
      setDefinitions({
        lesson: (catalog.resources || []).find((item) => item.resource === 'aprendizaje_lecciones'),
        section: (catalog.resources || []).find((item) => item.resource === 'aprendizaje_secciones_leccion'),
      });
      setLookups({
        category_id: rowsOf(categoryResult).map((item) => ({ value: item.id, plainLabel: item.name, label: `${item.name} · #${item.id}` })),
        lesson_id: lessonRows,
        parent_section_id: sectionRows,
        section_id: sectionRows,
        media_id: mediaRows,
        hero_media_id: mediaRows,
      });
    } catch (reason) {
      setError(reason instanceof Error ? reason.message : 'No fue posible cargar la estructura de la lección.');
    }
    finally { setLoading(false); }
  };

  useEffect(() => { void load(); }, [lesson.id]);
  const structuredSections = useMemo(() => [...sections]
    .sort((a, b) => Number(a.sort_order || 0) - Number(b.sort_order || 0))
    .map((section) => ({
      ...section,
      effective_parent_section_id: section.parent_section_id || null,
      inferred_parent: false,
    })), [sections]);
  const selectedSection = structuredSections.find((item) => String(item.id) === String(selectedId)) || null;
  useEffect(() => { setSectionDraft(selectedSection ? { ...selectedSection, parent_section_id: selectedSection.effective_parent_section_id || '' } : null); }, [selectedSection?.id, structuredSections]);

  const saveLesson = async (data) => {
    await gatewayApi.update('learning', 'aprendizaje_lecciones', currentLesson.id, data);
    setEditor(null); await load();
  };

  const saveSection = async (data, file) => {
    if (data.section_type === 'pptx' && file) {
      const form = new FormData();
      form.append('file', file); form.append('title', data.title || file.name); form.append('upload_context', 'content');
      const media = await gatewayApi.uploadMedia(form);
      data.body_html = media.file_path; data.media_id = media.id;
    }
    if (editor?.record) await gatewayApi.update('learning', 'aprendizaje_secciones_leccion', editor.record.id, data);
    else await gatewayApi.create('learning', 'aprendizaje_secciones_leccion', data);
    setEditor(null); await load();
  };

  const removeSection = async (section) => {
    const children = structuredSections.filter((item) => String(item.effective_parent_section_id) === String(section.id));
    if (children.length) { setError(`No puedes eliminar “${section.title}” porque contiene ${children.length} sublección(es). Reubícalas o elimínalas primero.`); return; }
    if (!window.confirm(`¿Eliminar “${section.title}”? Esta acción no se puede deshacer.`)) return;
    try { await gatewayApi.remove('learning', 'aprendizaje_secciones_leccion', section.id); await load(); }
    catch (reason) { setError(reason.message); }
  };

  const descendantsOf = (id) => {
    const found = new Set([String(id)]); let changed = true;
    while (changed) { changed = false; structuredSections.forEach((item) => { if (item.effective_parent_section_id != null && found.has(String(item.effective_parent_section_id)) && !found.has(String(item.id))) { found.add(String(item.id)); changed = true; } }); }
    return found;
  };

  const saveInlineSection = async () => {
    if (!sectionDraft?.title?.trim()) { setError('Escribe el título de la sección o sublección.'); return; }
    const invalidParents = descendantsOf(sectionDraft.id);
    if (sectionDraft.parent_section_id && invalidParents.has(String(sectionDraft.parent_section_id))) { setError('Una sección no puede colocarse dentro de sí misma ni de una de sus sublecciones.'); return; }
    setSavingSection(true); setError('');
    try {
      const data = { ...sectionDraft };
      ['id', 'created_at', 'updated_at', 'effective_parent_section_id', 'inferred_parent'].forEach((key) => delete data[key]);
      data.lesson_id = Number(currentLesson.id);
      data.parent_section_id = data.parent_section_id ? Number(data.parent_section_id) : null;
      data.media_id = data.media_id ? Number(data.media_id) : null;
      data.duration_minutes = Number(data.duration_minutes || 0);
      data.sort_order = Number(data.sort_order || 0);
      data.published = Boolean(data.published);
      data.ai_exercises_enabled = Boolean(data.ai_exercises_enabled);
      await gatewayApi.update('learning', 'aprendizaje_secciones_leccion', sectionDraft.id, data);
      await load();
    } catch (reason) { setError(reason.message); }
    finally { setSavingSection(false); }
  };

  const insertContent = (before, after, fallback) => {
    const field = contentEditorRef.current; if (!field) return;
    const start = field.selectionStart ?? field.value.length; const end = field.selectionEnd ?? start;
    const selected = field.value.slice(start, end) || fallback;
    const value = `${field.value.slice(0, start)}${before}${selected}${after}${field.value.slice(end)}`;
    setSectionDraft((current) => ({ ...current, body_html: value }));
    window.requestAnimationFrame(() => { field.focus(); field.setSelectionRange(start + before.length, start + before.length + selected.length); });
  };
  const focusInlineHtml = (selection) => {
    const field = contentEditorRef.current;
    if (!field) return;
    window.requestAnimationFrame(() => {
      const start = Math.max(0, Math.min(Number(selection?.start ?? selection?.position ?? selection) || 0, field.value.length));
      const end = Math.max(start, Math.min(Number(selection?.end) || start, field.value.length));
      const line = field.value.slice(0, start).split('\n').length - 1;
      field.focus(); field.setSelectionRange(start, end);
      field.scrollTop = Math.max(0, (line - 2) * 18);
    });
  };
  useEffect(() => {
    const focusFromPreview = (event) => focusInlineHtml(event.detail);
    window.addEventListener('academia-html-source-select', focusFromPreview);
    return () => window.removeEventListener('academia-html-source-select', focusFromPreview);
  }, [focusInlineHtml]);

  const roots = structuredSections.filter((item) => !item.effective_parent_section_id || !structuredSections.some((candidate) => String(candidate.id) === String(item.effective_parent_section_id)));
  const childrenOf = (id) => structuredSections.filter((item) => String(item.effective_parent_section_id) === String(id)).sort((a, b) => Number(a.sort_order || 0) - Number(b.sort_order || 0));
  const parentTypes = ['presentation', 'activity', 'evaluation', 'exam'];
  const chooseCreationType = (type, suggestedTitle) => {
    const parentId = creationTarget?.parentId || '';
    setEditor({ kind: 'section', defaults: {
      lesson_id: currentLesson.id, parent_section_id: parentId, section_type: type,
      title: suggestedTitle || OPTION_LABELS[type] || 'Nuevo contenido', published: true,
      sort_order: parentId ? childrenOf(parentId).length + 1 : roots.length + 1,
      duration_minutes: 0,
    } });
    setCreationTarget(null);
  };
  const defaultTabs = TAB_TEMPLATES.slice(0, 3);
  const normalizeTitle = (value) => String(value || '').normalize('NFD').replace(/[\u0300-\u036f]/g, '').trim().toLowerCase();
  const isDefaultTab = (section, template) => section.section_type === template.type
    && normalizeTitle(section.title) === normalizeTitle(template.title);
  const missingDefaultTabs = defaultTabs.filter((template) => !roots.some((root) => isDefaultTab(root, template)));
  const createDefaultTabs = async () => {
    if (!missingDefaultTabs.length) return;
    setCreatingDefaults(true); setError('');
    try {
      const defaults = new Map(defaultTabs.map((template) => [
        template.type,
        roots.find((root) => isDefaultTab(root, template)),
      ]).filter(([, section]) => section));
      for (const template of missingDefaultTabs) {
        const created = await gatewayApi.create('learning', 'aprendizaje_secciones_leccion', {
          lesson_id: Number(currentLesson.id), parent_section_id: null, section_type: template.type,
          title: template.title, body_html: '', duration_minutes: 0,
          sort_order: defaultTabs.findIndex((item) => item.type === template.type) + 1,
          published: true, ai_exercises_enabled: false,
        });
        defaults.set(template.type, created);
      }
      const defaultIds = new Set([...defaults.values()].map((item) => String(item.id)));
      for (const orphan of roots.filter((item) => !defaultIds.has(String(item.id)))) {
        const targetType = orphan.section_type === 'activity'
          ? 'activity'
          : ['evaluation', 'exam'].includes(orphan.section_type) ? 'evaluation' : 'presentation';
        const parent = defaults.get(targetType);
        if (parent?.id) {
          await gatewayApi.update('learning', 'aprendizaje_secciones_leccion', orphan.id, {
            parent_section_id: Number(parent.id),
          });
        }
      }
      await load();
    } catch (reason) { setError(reason.message); }
    finally { setCreatingDefaults(false); }
  };
  const saveDedicatedSection = async (data, file) => {
    try {
      const clean = { ...data };
      ['id', 'created_at', 'updated_at', 'effective_parent_section_id', 'inferred_parent'].forEach((key) => delete clean[key]);
      if (clean.section_type === 'pptx' && file) {
        const form = new FormData();
        form.append('file', file);
        form.append('title', clean.title || file.name);
        form.append('upload_context', 'content');
        const uploaded = await gatewayApi.uploadMedia(form);
        clean.body_html = uploaded.file_path;
        clean.media_id = uploaded.id;
      }
      await gatewayApi.update('learning', 'aprendizaje_secciones_leccion', editingSection.id, clean);
      setEditingSection(null); await load();
    } catch (reason) { setError(reason.message); throw reason; }
  };
  if (editingSection) return <SectionEditorPage section={editingSection} lesson={currentLesson} sections={structuredSections} media={lookups.media_id || []} sectionTypes={SELECTS.section_type} optionLabels={OPTION_LABELS} Preview={MathPreview} onBack={() => setEditingSection(null)} onSaved={saveDedicatedSection} />;
  const SectionNode = ({ section, depth = 0 }) => <div className="lesson-tree-branch">
    <article className={`lesson-tree-node depth-${Math.min(depth, 3)}${String(selectedId) === String(section.id) ? ' selected' : ''}`} onClick={() => setEditingSection(section)}>
      <div className="lesson-tree-order">{section.sort_order ?? 0}</div>
      <div className="lesson-tree-copy"><small>{depth ? `SUBLECCIÓN · NIVEL ${depth + 1}` : parentTypes.includes(section.section_type) ? 'SECCIÓN PADRE · PESTAÑA' : 'SIN SECCIÓN PADRE'}</small><strong>{section.title}</strong><span>{OPTION_LABELS[section.section_type] || section.section_type} · {section.duration_minutes || 0} min · {section.published ? 'Publicada' : 'Borrador'} · {childrenOf(section.id).length} elementos internos</span></div>
      <div className="lesson-tree-actions" onClick={(event) => event.stopPropagation()}><button type="button" onClick={() => setEditingSection(section)}><Pencil /> Editar</button><button type="button" onClick={() => setCreationTarget({ mode: 'content', parentId: section.id, parentTitle: section.title })}><Plus /> {depth ? 'Añadir dentro' : 'Agregar contenido'}</button><button type="button" className="danger" onClick={() => removeSection(section)}><Trash2 /></button></div>
    </article>
    {childrenOf(section.id).map((child) => <SectionNode section={child} depth={depth + 1} key={child.id} />)}
  </div>;

  return <div className="page-content lesson-structure-page">
    <button type="button" className="lesson-back" onClick={onBack}>← Volver al listado de lecciones</button>
    <header className="lesson-structure-header"><div><p className="eyebrow">ESTRUCTURA DE LA LECCIÓN · #{currentLesson.id}</p><h1>{currentLesson.title}</h1><p>{currentLesson.summary || 'Sin resumen capturado.'}</p><div className="lesson-context"><span>Área: {lookups.category_id?.find((item) => String(item.value) === String(currentLesson.category_id))?.plainLabel || `#${currentLesson.category_id}`}</span><span>{currentLesson.page_type === 'path' ? 'Ruta paso a paso' : 'Tema con pestañas'}</span><span>{sections.length} contenidos</span></div></div><button type="button" className="admin-secondary" onClick={() => setEditor({ kind: 'lesson', record: currentLesson })}><Pencil /> Editar datos generales</button></header>
    <section className="lesson-workflow"><div className="active"><small>1</small><strong>Lección principal</strong><span>{currentLesson.title}</span></div><b>→</b><div><small>2</small><strong>Apartados padre</strong><span>Lección, Actividad y Evaluación</span></div><b>→</b><div><small>3</small><strong>Contenidos</strong><span>Lecturas, videos, exámenes y más</span></div></section>
    <div className="lesson-structure-toolbar"><div><h2>Apartados principales de la lección</h2><p>Por defecto son Lecciones, Actividad y Evaluación. Dentro de cada contenido puedes seguir creando elementos hijos.</p></div><div className="lesson-toolbar-actions">{missingDefaultTabs.length > 0 && <button type="button" className="admin-secondary" disabled={creatingDefaults} onClick={createDefaultTabs}><Plus /> {creatingDefaults ? 'Organizando…' : 'Crear y organizar apartados predeterminados'}</button>}<button type="button" className="admin-primary" onClick={() => setCreationTarget({ mode: 'tab', parentId: null })}><Plus /> Añadir apartado padre</button></div></div>
    {creationTarget && <section className="lesson-type-picker"><header><div><small>{creationTarget.mode === 'tab' ? 'NUEVO APARTADO PADRE' : `CONTENIDO DENTRO DE “${creationTarget.parentTitle}”`}</small><h2>{creationTarget.mode === 'tab' ? 'Selecciona el tipo de apartado' : '¿Qué deseas agregar?'}</h2><p>{creationTarget.mode === 'tab' ? 'Los apartados habituales son Lección, Actividad y Evaluación.' : 'Selecciona uno de los 10 tipos disponibles.'}</p></div><button type="button" className="admin-secondary" onClick={() => setCreationTarget(null)}>Cancelar</button></header><div className={creationTarget.mode === 'tab' ? 'lesson-type-grid tab-types' : 'lesson-type-grid'}>{(creationTarget.mode === 'tab' ? TAB_TEMPLATES.map((item) => [item.type, item.icon, item.title, item.description]) : CONTENT_TYPES).map(([type, icon, title, description]) => <button type="button" key={`${type}-${title}`} onClick={() => chooseCreationType(type, title)}><b>{icon}</b><strong>{title}</strong><small>{description}</small><span>Seleccionar →</span></button>)}</div></section>}
    {error && <div className="alert error">{error}</div>}
    {loading ? <div className="table-state">Cargando estructura…</div> : roots.length ? <div className="lesson-builder-grid"><section className="lesson-tree">{roots.sort((a, b) => Number(a.sort_order || 0) - Number(b.sort_order || 0)).map((section) => <SectionNode section={section} key={section.id} />)}</section><aside className="inline-section-editor">{sectionDraft ? <><header><div><small>EDITANDO DENTRO DE LA LECCIÓN</small><h3>{sectionDraft.title}</h3></div><span>{sectionDraft.parent_section_id ? 'Elemento hijo' : 'Sección padre'}</span></header><div className="inline-editor-grid"><label>Título<input value={sectionDraft.title || ''} onChange={(event) => setSectionDraft({ ...sectionDraft, title: event.target.value })} /></label><label>Tipo<select value={sectionDraft.section_type || 'html'} onChange={(event) => setSectionDraft({ ...sectionDraft, section_type: event.target.value })}>{SELECTS.section_type.map((type) => <option value={type} key={type}>{OPTION_LABELS[type] || type}</option>)}</select></label><label className="full">Ubicación<select value={sectionDraft.parent_section_id || ''} onChange={(event) => setSectionDraft({ ...sectionDraft, parent_section_id: event.target.value })}><option value="">Sección padre / pestaña principal</option>{roots.filter((item) => String(item.id) !== String(sectionDraft.id) && !descendantsOf(sectionDraft.id).has(String(item.id))).map((item) => <option value={item.id} key={item.id}>Dentro de: {item.title}</option>)}</select><small className="field-help">Sin padre aparecerá como pestaña. Con un padre será un elemento interno de esa sección.</small></label><label>Duración (min)<input type="number" min="0" value={sectionDraft.duration_minutes || 0} onChange={(event) => setSectionDraft({ ...sectionDraft, duration_minutes: event.target.value })} /></label><label>Orden<input type="number" value={sectionDraft.sort_order || 0} onChange={(event) => setSectionDraft({ ...sectionDraft, sort_order: event.target.value })} /></label><label>Imagen o medio<select value={sectionDraft.media_id || ''} onChange={(event) => setSectionDraft({ ...sectionDraft, media_id: event.target.value })}><option value="">Sin medio</option>{(lookups.media_id || []).map((item) => <option value={item.value} key={item.value}>{item.label}</option>)}</select></label><label className="checkbox"><input type="checkbox" checked={Boolean(sectionDraft.published)} onChange={(event) => setSectionDraft({ ...sectionDraft, published: event.target.checked })} /> Publicada</label>{['activity', 'evaluation', 'exam'].includes(sectionDraft.section_type) && <><label className="checkbox full"><input type="checkbox" checked={Boolean(sectionDraft.ai_exercises_enabled)} onChange={(event) => setSectionDraft({ ...sectionDraft, ai_exercises_enabled: event.target.checked })} /> Incluir ejercicios generados con IA</label><label className="full">Instrucciones para la IA<textarea rows="3" value={sectionDraft.ai_prompt || ''} onChange={(event) => setSectionDraft({ ...sectionDraft, ai_prompt: event.target.value })} /></label></>}</div><div className="content-composer"><div className="content-composer-tools"><strong>Contenido de la sección</strong><button type="button" onClick={() => insertContent('<p>', '</p>', 'Texto')}>Párrafo</button><button type="button" onClick={() => insertContent('<h3>', '</h3>', 'Título')}>Título</button><button type="button" onClick={() => insertContent('<strong>', '</strong>', 'Texto destacado')}>Negrita</button><button type="button" onClick={() => insertContent('\\(', '\\)', 'x + y = 10')}>LaTeX</button><button type="button" onClick={() => insertContent('\\[', '\\]', 'x = \\frac{-b \\pm \\sqrt{b^2-4ac}}{2a}')}>Fórmula</button></div><textarea ref={contentEditorRef} rows="12" value={sectionDraft.body_html || ''} onChange={(event) => setSectionDraft({ ...sectionDraft, body_html: event.target.value })} /></div><section className="inline-live-preview"><small>PREVISUALIZACIÓN EN VIVO</small><MathPreview data={sectionDraft} /></section><div className="inline-editor-actions"><button type="button" className="admin-secondary" onClick={() => setEditor({ kind: 'section', record: selectedSection })}>Editor avanzado / archivo</button><button type="button" className="admin-primary" disabled={savingSection} onClick={saveInlineSection}><Save /> {savingSection ? 'Guardando…' : 'Guardar sección'}</button></div></> : <div className="inline-editor-placeholder"><Pencil /><p>Selecciona una sección padre o un elemento hijo para editarlo y previsualizarlo.</p></div>}</aside></div> : <section className="lesson-tree-empty"><Layers3 /><h3>Esta lección todavía no tiene secciones padre</h3><p>Crea “Introducción”, “Actividad” o “Evaluación”; después agrega sus elementos internos.</p><button type="button" className="admin-primary" onClick={() => setEditor({ kind: 'section', defaults: { lesson_id: currentLesson.id, parent_section_id: '', section_type: 'presentation', published: true, sort_order: 1 } })}><Plus /> Crear primera sección padre</button></section>}
    {editor?.kind === 'lesson' && definitions.lesson && <FormEditor title="Datos generales de la lección" resource="aprendizaje_lecciones" columns={definitions.lesson.columns || []} primaryKeys={definitions.lesson.primaryKeys || ['id']} record={editor.record} defaults={{ published: true, sort_order: 0 }} lookups={lookups} onClose={() => setEditor(null)} onSave={saveLesson} />}
    {editor?.kind === 'section' && definitions.section && <FormEditor title={editor.record ? 'Editar sección o sublección' : editor.defaults?.parent_section_id ? 'Nueva sublección' : 'Nueva sección directa'} resource="aprendizaje_secciones_leccion" columns={definitions.section.columns || []} primaryKeys={definitions.section.primaryKeys || ['id']} record={editor.record} defaults={editor.defaults || { lesson_id: currentLesson.id, published: true, sort_order: 0 }} lookups={lookups} onClose={() => setEditor(null)} onSave={saveSection} />}
  </div>;
}
