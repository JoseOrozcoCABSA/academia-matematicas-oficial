import { useMemo, useRef, useState } from 'react';
import { Save } from 'lucide-react';

export default function SectionEditorPage({ section, lesson, sections, media, sectionTypes, optionLabels, Preview, onBack, onSaved }) {
  const [draft, setDraft] = useState({ ...section, parent_section_id: section.parent_section_id || '' });
  const [saving, setSaving] = useState(false);
  const editorRef = useRef(null);
  const descendants = useMemo(() => {
    const found = new Set([String(section.id)]); let changed = true;
    while (changed) { changed = false; sections.forEach((item) => { if (item.parent_section_id != null && found.has(String(item.parent_section_id)) && !found.has(String(item.id))) { found.add(String(item.id)); changed = true; } }); }
    return found;
  }, [section.id, sections]);
  const focusHtml = (position) => {
    const field = editorRef.current; if (!field) return;
    window.requestAnimationFrame(() => { const offset = Math.max(0, Math.min(Number(position) || 0, field.value.length)); field.focus(); field.setSelectionRange(offset, offset); field.scrollTop = Math.max(0, (field.value.slice(0, offset).split('\n').length - 3) * 18); });
  };
  const insert = (before, after, fallback) => {
    const field = editorRef.current; if (!field) return;
    const start = field.selectionStart ?? field.value.length; const end = field.selectionEnd ?? start; const selected = field.value.slice(start, end) || fallback;
    setDraft((current) => ({ ...current, body_html: `${field.value.slice(0, start)}${before}${selected}${after}${field.value.slice(end)}` }));
    window.requestAnimationFrame(() => { field.focus(); field.setSelectionRange(start + before.length, start + before.length + selected.length); });
  };
  const save = async (event) => {
    event.preventDefault(); setSaving(true);
    try { await onSaved({ ...draft, lesson_id: Number(lesson.id), parent_section_id: draft.parent_section_id ? Number(draft.parent_section_id) : null, media_id: draft.media_id ? Number(draft.media_id) : null, duration_minutes: Number(draft.duration_minutes || 0), sort_order: Number(draft.sort_order || 0), published: Boolean(draft.published), ai_exercises_enabled: Boolean(draft.ai_exercises_enabled) }); }
    finally { setSaving(false); }
  };
  return <main className="page-content section-editor-page"><button type="button" className="lesson-back" onClick={onBack}>← Volver a la estructura de la lección</button><header className="section-editor-header"><div><p className="eyebrow">{section.parent_section_id ? 'SUBLECCIÓN' : 'SECCIÓN PADRE'} · LECCIÓN #{lesson.id}</p><h1>{section.title}</h1><p>Edición exclusiva de este contenido. Los cambios no afectan las demás secciones.</p></div><span>{section.parent_section_id ? 'Elemento interno' : 'Pestaña principal'}</span></header><form onSubmit={save} className="section-editor-form"><section className="section-editor-settings"><label>Título<input value={draft.title || ''} required onChange={(event) => setDraft({ ...draft, title: event.target.value })} /></label><label>Tipo<select value={draft.section_type || 'html'} onChange={(event) => setDraft({ ...draft, section_type: event.target.value })}>{sectionTypes.map((type) => <option value={type} key={type}>{optionLabels[type] || type}</option>)}</select></label><label>Sección padre<select value={draft.parent_section_id || ''} onChange={(event) => setDraft({ ...draft, parent_section_id: event.target.value })}><option value="">Sin padre: pestaña principal</option>{sections.filter((item) => !descendants.has(String(item.id))).map((item) => <option value={item.id} key={item.id}>Dentro de: {item.title}</option>)}</select></label><label>Duración (min)<input type="number" min="0" value={draft.duration_minutes || 0} onChange={(event) => setDraft({ ...draft, duration_minutes: event.target.value })} /></label><label>Orden<input type="number" min="0" value={draft.sort_order || 0} onChange={(event) => setDraft({ ...draft, sort_order: event.target.value })} /></label><label>Imagen o medio<select value={draft.media_id || ''} onChange={(event) => setDraft({ ...draft, media_id: event.target.value })}><option value="">Sin medio</option>{media.map((item) => <option value={item.value} key={item.value}>{item.label}</option>)}</select></label><label className="checkbox"><input type="checkbox" checked={Boolean(draft.published)} onChange={(event) => setDraft({ ...draft, published: event.target.checked })} /> Publicada</label>{['activity', 'evaluation', 'exam'].includes(draft.section_type) && <label className="checkbox"><input type="checkbox" checked={Boolean(draft.ai_exercises_enabled)} onChange={(event) => setDraft({ ...draft, ai_exercises_enabled: event.target.checked })} /> Ejercicios con IA</label>}</section><section className="section-html-editor"><header><div><small>CÓDIGO HTML</small><h2>Contenido de {draft.title || 'la sección'}</h2></div><div className="content-composer-tools"><button type="button" onClick={() => insert('<p>', '</p>', 'Texto')}>Párrafo</button><button type="button" onClick={() => insert('<h3>', '</h3>', 'Título')}>Título</button><button type="button" onClick={() => insert('<strong>', '</strong>', 'Texto destacado')}>Negrita</button><button type="button" onClick={() => insert('\\(', '\\)', 'x + y = 10')}>LaTeX</button></div></header><textarea ref={editorRef} rows="22" value={draft.body_html || ''} onChange={(event) => setDraft({ ...draft, body_html: event.target.value })} /><small>Haz clic en un bloque de la vista previa para ir directamente a su código HTML.</small></section><section className="section-preview-panel"><header><small>PREVISUALIZACIÓN VINCULADA</small><span>clic para ubicar el cursor</span></header><Preview data={draft} onHtmlSelect={focusHtml} /></section><footer><button type="button" className="admin-secondary" onClick={onBack}>Cancelar</button><button className="admin-primary" disabled={saving}><Save /> {saving ? 'Guardando…' : 'Guardar esta sección'}</button></footer></form></main>;
}

