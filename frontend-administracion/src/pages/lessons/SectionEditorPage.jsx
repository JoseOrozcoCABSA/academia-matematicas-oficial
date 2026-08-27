import { useEffect, useMemo, useRef, useState } from 'react';
import { FileUp, Link, Plus, Save, Sparkles, Trash2 } from 'lucide-react';
import { gatewayApi } from '@/api';

const TYPE_GUIDES = {
  presentation: {
    title: 'Introducción o presentación',
    help: 'Presenta el propósito, los conocimientos previos y lo que aprenderá el estudiante.',
    template: '<h2>¿Qué aprenderemos?</h2>\n<p>Explica aquí el propósito de este apartado.</p>\n<h3>Antes de comenzar</h3>\n<ul><li>Conocimiento previo necesario</li></ul>',
  },
  html: {
    title: 'Lectura o lección escrita',
    help: 'Organiza la explicación con títulos, párrafos, listas, imágenes y fórmulas.',
    template: '<h2>Explicación</h2>\n<p>Escribe aquí el contenido de la lección.</p>\n<h3>Idea importante</h3>\n<p>Destaca el concepto principal.</p>',
  },
  mini: {
    title: 'Contenido breve',
    help: 'Úsalo para una definición, una regla, un recordatorio o una idea rápida.',
    template: '<aside class="learning-callout"><h3>Recuerda</h3><p>Escribe aquí la idea clave.</p></aside>',
  },
  example: {
    title: 'Ejemplo resuelto',
    help: 'Explica el problema y su solución paso a paso.',
    template: '<h2>Ejemplo</h2>\n<p><strong>Problema:</strong> Escribe el planteamiento.</p>\n<ol><li>Primer paso</li><li>Segundo paso</li><li>Resultado</li></ol>',
  },
  video: {
    title: 'Video',
    help: 'Pega una URL de YouTube, Vimeo o de un archivo de video. Se insertará en el contenido y aparecerá en la vista previa.',
  },
  pptx: {
    title: 'Presentación PowerPoint',
    help: 'Selecciona un archivo .pptx. Podrás revisarlo antes de guardar y se cargará al servidor al guardar.',
  },
  document: {
    title: 'Documento o PDF',
    help: 'Pega el enlace del PDF o material descargable que verá el estudiante.',
  },
  activity: {
    title: 'Actividad',
    help: 'Incluye instrucciones claras, materiales y el producto que debe entregar el estudiante.',
    template: '<h2>Actividad</h2>\n<p><strong>Instrucciones:</strong> Describe lo que debe realizar el estudiante.</p>\n<h3>Pasos</h3>\n<ol><li>Primer paso</li><li>Segundo paso</li></ol>',
  },
  evaluation: {
    title: 'Evaluación corta',
    help: 'Indica qué se evaluará, las instrucciones y los criterios de logro.',
    template: '<h2>Comprueba lo aprendido</h2>\n<p>Responde las siguientes preguntas.</p>\n<ol><li>Primera pregunta</li><li>Segunda pregunta</li></ol>',
  },
  exam: {
    title: 'Examen',
    help: 'Prepara las instrucciones generales y los reactivos de la evaluación formal.',
    template: '<h2>Examen</h2>\n<p><strong>Instrucciones:</strong> Lee y responde cuidadosamente.</p>\n<ol><li>Reactivo 1</li><li>Reactivo 2</li></ol>',
  },
};

const escapeAttribute = (value) => String(value || '')
  .replaceAll('&', '&amp;').replaceAll('"', '&quot;').replaceAll('<', '&lt;').replaceAll('>', '&gt;');

const videoMarkup = (value) => {
  const url = String(value || '').trim();
  if (!url) return '';
  const youtube = url.match(/(?:youtu\.be\/|youtube\.com\/(?:watch\?v=|embed\/|shorts\/))([\w-]{6,})/i);
  if (youtube) return `<iframe src="https://www.youtube-nocookie.com/embed/${youtube[1]}" title="Video de la lección" loading="lazy" allowfullscreen></iframe>`;
  const vimeo = url.match(/vimeo\.com\/(?:video\/)?(\d+)/i);
  if (vimeo) return `<iframe src="https://player.vimeo.com/video/${vimeo[1]}" title="Video de la lección" loading="lazy" allowfullscreen></iframe>`;
  return `<video controls preload="metadata" src="${escapeAttribute(url)}">Tu navegador no puede reproducir este video.</video>`;
};

export default function SectionEditorPage({ section, lesson, sections, media, sectionTypes, optionLabels, Preview, onBack, onSaved }) {
  const [draft, setDraft] = useState({ ...section, parent_section_id: section.parent_section_id || '' });
  const [resourceUrl, setResourceUrl] = useState('');
  const [file, setFile] = useState(null);
  const [saving, setSaving] = useState(false);
  const [exerciseRecord, setExerciseRecord] = useState(null);
  const [questions, setQuestions] = useState([]);
  const [exerciseError, setExerciseError] = useState('');
  const editorRef = useRef(null);
  const guide = TYPE_GUIDES[draft.section_type] || TYPE_GUIDES.html;
  const isAssessment = ['activity', 'evaluation', 'exam'].includes(draft.section_type);
  useEffect(() => {
    if (!isAssessment) return;
    let cancelled = false;
    gatewayApi.listWhere('practice', 'practica_ejercicios', { section_id: section.id }, 1)
      .then((result) => {
        if (cancelled) return;
        const record = Array.isArray(result) ? result[0] : result?.rows?.[0];
        setExerciseRecord(record || null);
        if (!record?.json_data) return;
        try {
          const parsed = JSON.parse(record.json_data);
          const items = Array.isArray(parsed) ? parsed : parsed.exercises || parsed.ejercicios || [];
          setQuestions(items.map((item, index) => ({
            id: item.id ?? index + 1,
            type: item.type || item.response_type || 'text',
            question: item.question || item.ejercicio || '',
            options: Array.isArray(item.options) ? item.options : [],
            answer: String(item.answer ?? item.resultado ?? ''),
            explanation: item.explanation || item.explicacion || '',
          })));
        } catch { setExerciseError('Los ejercicios guardados tienen un formato inválido. Puedes reemplazarlos desde este constructor.'); }
      })
      .catch((reason) => { if (!cancelled && reason?.message && !/no hay|not found/i.test(reason.message)) setExerciseError(reason.message); });
    return () => { cancelled = true; };
  }, [section.id, isAssessment]);
  const descendants = useMemo(() => {
    const found = new Set([String(section.id)]);
    let changed = true;
    while (changed) {
      changed = false;
      sections.forEach((item) => {
        if (item.parent_section_id != null && found.has(String(item.parent_section_id)) && !found.has(String(item.id))) {
          found.add(String(item.id)); changed = true;
        }
      });
    }
    return found;
  }, [section.id, sections]);

  const focusHtml = (position) => {
    const field = editorRef.current;
    if (!field) return;
    window.requestAnimationFrame(() => {
      const offset = Math.max(0, Math.min(Number(position) || 0, field.value.length));
      field.focus(); field.setSelectionRange(offset, offset);
      field.scrollTop = Math.max(0, (field.value.slice(0, offset).split('\n').length - 3) * 18);
    });
  };
  const insert = (before, after, fallback) => {
    const field = editorRef.current;
    const currentValue = draft.body_html || '';
    const start = field?.selectionStart ?? currentValue.length;
    const end = field?.selectionEnd ?? start;
    const selected = currentValue.slice(start, end) || fallback;
    const body_html = `${currentValue.slice(0, start)}${before}${selected}${after}${currentValue.slice(end)}`;
    setDraft((current) => ({ ...current, body_html }));
    window.requestAnimationFrame(() => {
      if (!field) return;
      field.focus(); field.setSelectionRange(start + before.length, start + before.length + selected.length);
    });
  };
  const applyTemplate = () => {
    if (!guide.template) return;
    if (draft.body_html?.trim() && !window.confirm('El contenido actual será reemplazado por la plantilla. ¿Continuar?')) return;
    setDraft((current) => ({ ...current, body_html: guide.template }));
  };
  const addResource = () => {
    const url = resourceUrl.trim();
    if (!url) return;
    const markup = draft.section_type === 'video'
      ? videoMarkup(url)
      : `<p><a href="${escapeAttribute(url)}" target="_blank" rel="noopener noreferrer">Abrir o descargar ${escapeAttribute(draft.title || 'el documento')}</a></p>`;
    setDraft((current) => ({ ...current, body_html: `${current.body_html || ''}${current.body_html ? '\n' : ''}${markup}` }));
    setResourceUrl('');
  };
  const save = async (event) => {
    event.preventDefault(); setSaving(true);
    try {
      if (isAssessment && !draft.ai_exercises_enabled) {
        if (!questions.length) throw new Error('Agrega al menos una pregunta manual o activa la generación con IA.');
        const invalid = questions.find((item) => !item.question.trim() || !String(item.answer).trim()
          || (item.type === 'multiple_choice' && item.options.filter((option) => option.trim()).length < 2));
        if (invalid) throw new Error('Completa la pregunta, su respuesta correcta y al menos dos opciones cuando sea de opción múltiple.');
        const json_data = JSON.stringify({ version: 1, source: 'manual', exercises: questions.map((item, index) => ({ ...item, id: index + 1, options: item.type === 'multiple_choice' ? item.options.filter((option) => option.trim()) : [] })) });
        if (exerciseRecord?.id) await gatewayApi.update('practice', 'practica_ejercicios', exerciseRecord.id, { section_id: Number(section.id), json_data, ai_model: null });
        else {
          const created = await gatewayApi.create('practice', 'practica_ejercicios', { section_id: Number(section.id), json_data, ai_model: null });
          setExerciseRecord(created);
        }
      }
      await onSaved({
        ...draft,
        lesson_id: Number(lesson.id),
        parent_section_id: draft.parent_section_id ? Number(draft.parent_section_id) : null,
        media_id: draft.media_id ? Number(draft.media_id) : null,
        duration_minutes: Number(draft.duration_minutes || 0),
        sort_order: Number(draft.sort_order || 0),
        published: Boolean(draft.published),
        ai_exercises_enabled: Boolean(draft.ai_exercises_enabled),
      }, file);
    } catch (reason) {
      setExerciseError(reason instanceof Error ? reason.message : 'No fue posible guardar el examen.');
    } finally { setSaving(false); }
  };

  const addQuestion = () => setQuestions((current) => [...current, { id: Date.now(), type: 'multiple_choice', question: '', options: ['', '', '', ''], answer: '', explanation: '' }]);
  const updateQuestion = (index, changes) => setQuestions((current) => current.map((item, itemIndex) => itemIndex === index ? { ...item, ...changes } : item));
  const updateOption = (questionIndex, optionIndex, value) => setQuestions((current) => current.map((item, itemIndex) => itemIndex === questionIndex ? { ...item, options: item.options.map((option, currentOption) => currentOption === optionIndex ? value : option) } : item));

  return <main className="page-content section-editor-page">
    <button type="button" className="lesson-back" onClick={onBack}>← Volver a la estructura de la lección</button>
    <header className="section-editor-header"><div><p className="eyebrow">{section.parent_section_id ? 'SUBLECCIÓN' : 'SECCIÓN PADRE'} · LECCIÓN #{lesson.id}</p><h1>{section.title}</h1><p>Edición exclusiva de este contenido. Los cambios no afectan las demás secciones.</p></div><span>{section.parent_section_id ? 'Elemento interno' : 'Pestaña principal'}</span></header>
    <form onSubmit={save} className="section-editor-form">
      <section className="section-editor-settings">
        <label>Título<input value={draft.title || ''} required onChange={(event) => setDraft({ ...draft, title: event.target.value })} /></label>
        <label>Tipo<select value={draft.section_type || 'html'} onChange={(event) => { setDraft({ ...draft, section_type: event.target.value }); setFile(null); setResourceUrl(''); }}>{sectionTypes.map((type) => <option value={type} key={type}>{optionLabels[type] || type}</option>)}</select></label>
        <label>Sección padre<select value={draft.parent_section_id || ''} onChange={(event) => setDraft({ ...draft, parent_section_id: event.target.value })}><option value="">Sin padre: pestaña principal</option>{sections.filter((item) => !descendants.has(String(item.id))).map((item) => <option value={item.id} key={item.id}>Dentro de: {item.title}</option>)}</select></label>
        <label>Duración (min)<input type="number" min="0" value={draft.duration_minutes || 0} onChange={(event) => setDraft({ ...draft, duration_minutes: event.target.value })} /></label>
        <label>Orden<input type="number" min="0" value={draft.sort_order || 0} onChange={(event) => setDraft({ ...draft, sort_order: event.target.value })} /></label>
        <label>Imagen o medio<select value={draft.media_id || ''} onChange={(event) => setDraft({ ...draft, media_id: event.target.value })}><option value="">Sin medio</option>{media.map((item) => <option value={item.value} key={item.value}>{item.label}</option>)}</select></label>
        <label className="checkbox"><input type="checkbox" checked={Boolean(draft.published)} onChange={(event) => setDraft({ ...draft, published: event.target.checked })} /> Publicada</label>
      </section>

      <section className="section-type-options">
        <header><div><small>OPCIONES PARA ESTE TIPO</small><h2>{guide.title}</h2><p>{guide.help}</p></div><span>{optionLabels[draft.section_type] || draft.section_type}</span></header>
        {guide.template && <button type="button" className="admin-secondary" onClick={applyTemplate}><Sparkles /> Usar plantilla sugerida</button>}
        {['video', 'document'].includes(draft.section_type) && <div className="section-resource-url"><label>{draft.section_type === 'video' ? 'URL del video' : 'URL del documento o PDF'}<input type="url" placeholder={draft.section_type === 'video' ? 'https://youtube.com/watch?v=…' : 'https://…/documento.pdf'} value={resourceUrl} onChange={(event) => setResourceUrl(event.target.value)} /></label><button type="button" className="admin-primary" onClick={addResource} disabled={!resourceUrl.trim()}><Link /> Insertar en el contenido</button></div>}
        {draft.section_type === 'pptx' && <label className="section-file-option"><FileUp /><span><strong>Archivo PowerPoint (.pptx)</strong><small>{file ? file.name : draft.body_html ? 'Puedes conservar la presentación actual o seleccionar otra.' : 'Selecciona la presentación que verá el estudiante.'}</small></span><input type="file" accept=".pptx,application/vnd.openxmlformats-officedocument.presentationml.presentation" onChange={(event) => setFile(event.target.files?.[0] || null)} /></label>}
        {isAssessment && <div className="section-ai-options"><label className="checkbox"><input type="checkbox" checked={Boolean(draft.ai_exercises_enabled)} onChange={(event) => setDraft({ ...draft, ai_exercises_enabled: event.target.checked })} /> Generar ejercicios con IA</label>{draft.ai_exercises_enabled ? <label>Instrucciones para la IA<textarea rows="4" placeholder="Ejemplo: genera 5 ejercicios de comparación para primaria, con retroalimentación sencilla." value={draft.ai_prompt || ''} onChange={(event) => setDraft({ ...draft, ai_prompt: event.target.value })} /></label> : <p className="manual-exam-notice">Modo manual: los reactivos creados abajo serán los que responda el estudiante.</p>}</div>}
      </section>

      {isAssessment && !draft.ai_exercises_enabled && <section className="manual-exam-builder">
        <header><div><small>CONSTRUCTOR DE REACTIVOS</small><h2>Preguntas del {draft.section_type === 'exam' ? 'examen' : draft.section_type === 'evaluation' ? 'evaluación' : 'actividad'}</h2><p>Crea preguntas calificables sin utilizar inteligencia artificial.</p></div><button type="button" className="admin-primary" onClick={addQuestion}><Plus /> Agregar pregunta</button></header>
        {exerciseError && <div className="alert error">{exerciseError}</div>}
        {!questions.length && <div className="manual-exam-empty"><p>Todavía no hay preguntas.</p><button type="button" className="admin-secondary" onClick={addQuestion}><Plus /> Crear la primera</button></div>}
        <div className="manual-question-list">{questions.map((item, index) => <article className="manual-question" key={item.id}><header><strong>Pregunta {index + 1}</strong><button type="button" className="danger" onClick={() => setQuestions((current) => current.filter((_, itemIndex) => itemIndex !== index))}><Trash2 /> Eliminar</button></header><div className="manual-question-grid"><label>Tipo de respuesta<select value={item.type} onChange={(event) => updateQuestion(index, { type: event.target.value, answer: '', options: event.target.value === 'multiple_choice' && !item.options.length ? ['', '', '', ''] : item.options })}><option value="multiple_choice">Opción múltiple</option><option value="text">Respuesta escrita</option><option value="number">Resultado numérico</option></select></label><label className="full">Pregunta<textarea rows="2" value={item.question} placeholder="Escribe el enunciado" onChange={(event) => updateQuestion(index, { question: event.target.value })} /></label>{item.type === 'multiple_choice' && <div className="manual-options full"><strong>Opciones y respuesta correcta</strong>{item.options.map((option, optionIndex) => <label key={optionIndex}><input type="radio" name={`correct-${item.id}`} checked={item.answer === option && option !== ''} onChange={() => updateQuestion(index, { answer: option })} aria-label={`Marcar opción ${optionIndex + 1} como correcta`} /><input value={option} placeholder={`Opción ${optionIndex + 1}`} onChange={(event) => { const previous = option; updateOption(index, optionIndex, event.target.value); if (item.answer === previous) updateQuestion(index, { answer: event.target.value }); }} /></label>)}</div>}{item.type !== 'multiple_choice' && <label className="full">Respuesta correcta<input type={item.type === 'number' ? 'number' : 'text'} value={item.answer} placeholder={item.type === 'number' ? 'Ejemplo: 24' : 'Escribe la respuesta esperada'} onChange={(event) => updateQuestion(index, { answer: event.target.value })} /></label>}<label className="full">Retroalimentación (opcional)<textarea rows="2" value={item.explanation} placeholder="Explica por qué esta es la respuesta correcta" onChange={(event) => updateQuestion(index, { explanation: event.target.value })} /></label></div></article>)}</div>
      </section>}

      {draft.section_type !== 'pptx' && <section className="section-html-editor"><header><div><small>CÓDIGO HTML</small><h2>Contenido de {draft.title || 'la sección'}</h2></div><div className="content-composer-tools"><button type="button" onClick={() => insert('<p>', '</p>', 'Texto')}>Párrafo</button><button type="button" onClick={() => insert('<h3>', '</h3>', 'Título')}>Título</button><button type="button" onClick={() => insert('<strong>', '</strong>', 'Texto destacado')}>Negrita</button><button type="button" onClick={() => insert('\\(', '\\)', 'x + y = 10')}>LaTeX</button></div></header><textarea ref={editorRef} rows="22" value={draft.body_html || ''} onChange={(event) => setDraft({ ...draft, body_html: event.target.value })} /><small>Haz clic en un bloque de la vista previa para ir directamente a su código HTML.</small></section>}
      <section className="section-preview-panel"><header><small>PREVISUALIZACIÓN VINCULADA</small><span>{draft.section_type === 'pptx' ? 'presentación seleccionada' : 'clic para ubicar el cursor'}</span></header><Preview data={draft} file={file} onHtmlSelect={focusHtml} /></section>
      <footer><button type="button" className="admin-secondary" onClick={onBack}>Cancelar</button><button className="admin-primary" disabled={saving || (draft.section_type === 'pptx' && !file && !draft.body_html)}><Save /> {saving ? 'Guardando…' : 'Guardar esta sección'}</button></footer>
    </form>
  </main>;
}
