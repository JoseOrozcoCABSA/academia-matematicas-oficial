import { useEffect, useMemo, useRef, useState } from 'react';
import { Plus, Save, Trash2, X } from 'lucide-react';
import { MathPreview } from '../content/ContentPreview';
import { BOOLEAN_FIELDS, FIELD_HELP, JSON_FIELDS, LONG_FIELDS, LOOKUP_FIELDS, NUMBER_FIELDS, OPTION_LABELS, RESOURCE_SELECTS, SELECTS, SYSTEM_FIELDS, label } from '../../config/resourceFields';

function validateGameConfiguration(value) {
  const config = typeof value === 'string' ? JSON.parse(value || '{}') : value;
  const challenges = config?.challenges;
  if (!Array.isArray(challenges) || !challenges.length) throw new Error('Agrega al menos una ecuación al juego.');
  challenges.forEach((challenge, index) => {
    const a = Number(challenge.a); const b = Number(challenge.b); const c = Number(challenge.c);
    if (![a, b, c].every(Number.isInteger) || a <= 0 || b < 0 || c <= b || (c - b) % a !== 0) {
      throw new Error(`La ecuación ${index + 1} debe usar enteros positivos y producir una solución entera para x.`);
    }
  });
  return config;
}

function GameFields({ data, update }) {
  let config;
  try { config = typeof data.config_json === 'string' ? JSON.parse(data.config_json || '{}') : (data.config_json || {}); }
  catch { config = { points_per_challenge: 100, challenges: [] }; }
  const challenges = Array.isArray(config.challenges) ? config.challenges : [];
  const setConfig = (next) => update('config_json', JSON.stringify(next, null, 2));
  return (
    <section className="game-builder full">
      <div className="panel-heading"><div><h3>Editor de ecuaciones</h3><p>Configura los retos de la balanza sin editar JSON manualmente.</p></div><button type="button" className="admin-secondary" onClick={() => setConfig({ ...config, challenges: [...challenges, { a: 2, b: 3, c: 9 }] })}><Plus /> Agregar ecuación</button></div>
      <label>Puntos por ecuación<input type="number" value={config.points_per_challenge ?? 100} onChange={(event) => setConfig({ ...config, points_per_challenge: Number(event.target.value), challenges })} /></label>
      <div className="equation-list">{challenges.map((challenge, index) => { const solution = (Number(challenge.c) - Number(challenge.b)) / Number(challenge.a); const valid = Number.isInteger(solution) && solution > 0 && Number(challenge.a) > 0 && Number(challenge.b) >= 0; return <div className={valid ? '' : 'invalid-equation'} key={index}><b>{index + 1}</b><input type="number" min="1" step="1" required value={challenge.a} onChange={(event) => setConfig({ ...config, challenges: challenges.map((item, i) => i === index ? { ...item, a: Number(event.target.value) } : item) })} /><span>x +</span><input type="number" min="0" step="1" required value={challenge.b} onChange={(event) => setConfig({ ...config, challenges: challenges.map((item, i) => i === index ? { ...item, b: Number(event.target.value) } : item) })} /><span>=</span><input type="number" min="1" step="1" required value={challenge.c} onChange={(event) => setConfig({ ...config, challenges: challenges.map((item, i) => i === index ? { ...item, c: Number(event.target.value) } : item) })} /><em>{valid ? `x = ${solution}` : 'Solución no entera'}</em><button type="button" onClick={() => setConfig({ ...config, challenges: challenges.filter((_, i) => i !== index) })}><Trash2 /></button></div>; })}</div>
    </section>
  );
}

function ExerciseFields({ value, update }) {
  const normalizedValue = typeof value === 'string' ? value : JSON.stringify(value || {}, null, 2);
  const [raw, setRaw] = useState(normalizedValue);
  const [rawError, setRawError] = useState('');
  useEffect(() => { setRaw(normalizedValue); }, [normalizedValue]);
  let payload;
  try { payload = typeof value === 'string' ? JSON.parse(value || '{}') : (value || {}); }
  catch { payload = {}; }
  const listKey = Array.isArray(payload.exercises) ? 'exercises' : 'ejercicios';
  const exercises = Array.isArray(payload[listKey]) ? payload[listKey] : [];
  const setPayload = (next) => update('json_data', JSON.stringify(next, null, 2));
  const change = (index, key, nextValue) => setPayload({
    ...payload,
    [listKey]: exercises.map((item, itemIndex) => itemIndex === index ? { ...item, [key]: nextValue } : item),
  });
  const applyRaw = () => {
    try { const next = JSON.parse(raw || '{}'); setRawError(''); update('json_data', JSON.stringify(next, null, 2)); }
    catch { setRawError('El JSON avanzado no es válido. Corrígelo antes de guardar.'); }
  };
  return <section className="exercise-builder full"><div className="panel-heading"><div><h3>Editor de ejercicios</h3><p>Administra preguntas y respuestas sin editar JSON manualmente.</p></div><button type="button" className="admin-secondary" onClick={() => setPayload({ ...payload, [listKey]: [...exercises, { id: exercises.length + 1, ejercicio: '', resultado: '' }] })}><Plus /> Agregar pregunta</button></div><label>Tipo de ejercicio<input value={payload.exercise_type || ''} onChange={(event) => setPayload({ ...payload, exercise_type: event.target.value })} placeholder="Ej. vertical_addition" /></label><div className="exercise-editor-list">{exercises.map((exercise, index) => { const questionKey = Object.hasOwn(exercise, 'question') ? 'question' : 'ejercicio'; const answerKey = Object.hasOwn(exercise, 'answer') ? 'answer' : 'resultado'; const operandsKey = Object.hasOwn(exercise, 'operands') ? 'operands' : 'operandos'; return <article key={exercise.id ?? index}><b>{index + 1}</b><label>Pregunta<textarea rows="2" value={exercise[questionKey] ?? ''} onChange={(event) => change(index, questionKey, event.target.value)} /></label><label>Respuesta<input value={exercise[answerKey] ?? ''} onChange={(event) => change(index, answerKey, event.target.value)} /></label><label>Operandos<input value={Array.isArray(exercise[operandsKey]) ? exercise[operandsKey].join(', ') : ''} placeholder="3, 5" onChange={(event) => change(index, operandsKey, event.target.value.split(',').map((item) => item.trim()).filter(Boolean).map((item) => Number.isNaN(Number(item)) ? item : Number(item)))} /></label><button type="button" className="danger" title="Eliminar pregunta" onClick={() => setPayload({ ...payload, [listKey]: exercises.filter((_, itemIndex) => itemIndex !== index) })}><Trash2 /></button></article>; })}</div>{!exercises.length && <p className="muted">Agrega la primera pregunta del ejercicio.</p>}<details className="advanced-json"><summary>Configuración JSON avanzada</summary><textarea rows="10" value={raw} onChange={(event) => setRaw(event.target.value)} onBlur={applyRaw} />{rawError && <small>{rawError}</small>}</details></section>;
}

function ModelConfigurationFields({ value, update }) {
  let config;
  try { config = typeof value === 'string' ? JSON.parse(value || '{}') : (value || {}); }
  catch { config = {}; }
  const purposes = ['tutor', 'generacion_ejercicios', 'evaluacion'];
  const set = (field, next) => update('configuracion', { ...config, [field]: next });
  return <section className="game-builder full"><div className="panel-heading"><div><h3>Uso centralizado del modelo</h3><p>Define qué funciones de la plataforma deben utilizar este proveedor.</p></div></div><div className="model-purpose-grid">{purposes.map((purpose) => <label className="checkbox" key={purpose}><input type="checkbox" checked={(config.purposes || []).includes(purpose)} onChange={(event) => set('purposes', event.target.checked ? [...new Set([...(config.purposes || []), purpose])] : (config.purposes || []).filter((item) => item !== purpose))} />{purpose === 'tutor' ? 'Tutor' : purpose === 'evaluacion' ? 'Evaluaciones' : 'Actividades y ejercicios'}</label>)}</div><div className="model-config-grid"><label>Temperatura<input type="number" min="0" max="2" step="0.1" value={config.temperature ?? 0.2} onChange={(event) => set('temperature', Number(event.target.value))} /></label><label>Tiempo máximo (ms)<input type="number" min="1000" max="180000" value={config.timeout_ms ?? 45000} onChange={(event) => set('timeout_ms', Number(event.target.value))} /></label><label className="checkbox"><input type="checkbox" checked={config.fallback_local !== false} onChange={(event) => set('fallback_local', event.target.checked)} />Usar respaldo local si falla el proveedor</label></div></section>;
}

function RelationGuide({ resource, data, lookups }) {
  if (!['aprendizaje_lecciones', 'aprendizaje_secciones_leccion', 'aprendizaje_medios_leccion'].includes(resource)) return null;
  const find = (field, value) => (lookups[field] || []).find((option) => String(option.value) === String(value))?.plainLabel;
  if (resource === 'aprendizaje_lecciones') {
    return <div className="relation-guide full"><small>UBICACIÓN DEL REGISTRO</small><strong>Área matemática <span>→</span> Lección principal</strong><p>Esta es la página base. Después podrás agregarle secciones y sublecciones desde la segunda pestaña.</p></div>;
  }
  if (resource === 'aprendizaje_secciones_leccion') {
    const lesson = find('lesson_id', data.lesson_id) || 'Selecciona una lección';
    const parent = find('parent_section_id', data.parent_section_id);
    return <div className="relation-guide full"><small>UBICACIÓN DEL REGISTRO</small><strong>{lesson} <span>→</span> {parent ? `${parent} → Sublección` : 'Sección directa'}</strong><p>{parent ? 'Este contenido quedará dentro de la sección seleccionada.' : 'Este contenido quedará directamente dentro de la lección principal.'}</p></div>;
  }
  return <div className="relation-guide full"><small>UBICACIÓN DEL REGISTRO</small><strong>Lección principal <span>→</span> Archivo vinculado</strong><p>El archivo se asociará a la lección seleccionada y a la ubicación indicada.</p></div>;
}

export default function FormEditor({ title, resource, columns, primaryKeys, record, defaults, lookups, onClose, onSave }) {
  const editable = columns.filter((column) => !SYSTEM_FIELDS.has(column) && (column !== 'id' || (!record && resource === 'ia_conversaciones')) && (!record || !primaryKeys.includes(column)));
  if (resource === 'identidad_usuarios') editable.push('password');
  const initial = useMemo(() => ({ ...defaults, ...(!record && resource === 'ia_conversaciones' ? { id: crypto.randomUUID() } : {}), ...(record ?? {}) }), [defaults, record, resource]);
  const [data, setData] = useState(initial);
  const [saving, setSaving] = useState(false);
  const [error, setError] = useState('');
  const [file, setFile] = useState(null);
  const htmlEditorRef = useRef(null);
  const invalidParentIds = useMemo(() => {
    const invalid = new Set(record?.id == null ? [] : [String(record.id)]);
    let changed = true;
    while (changed) {
      changed = false;
      (lookups.parent_section_id || []).forEach((option) => {
        if (option.parentSectionId != null && invalid.has(String(option.parentSectionId)) && !invalid.has(String(option.value))) {
          invalid.add(String(option.value)); changed = true;
        }
      });
    }
    return invalid;
  }, [lookups.parent_section_id, record?.id]);
  const update = (field, value) => setData((current) => ({ ...current, [field]: value }));
  const focusHtml = (position) => {
    const field = htmlEditorRef.current;
    if (!field) return;
    window.requestAnimationFrame(() => {
      const offset = Math.max(0, Math.min(Number(position) || 0, field.value.length));
      const line = field.value.slice(0, offset).split('\n').length - 1;
      field.focus(); field.setSelectionRange(offset, offset);
      field.scrollTop = Math.max(0, (line - 2) * 18);
    });
  };
  const submit = async (event) => {
    event.preventDefault(); setSaving(true); setError('');
    try {
      const clean = {};
      editable.forEach((key) => {
        let value = data[key];
        if (JSON_FIELDS.has(key) && typeof value === 'string' && value.trim()) value = JSON.parse(value);
        if (NUMBER_FIELDS.has(key)) value = value === '' || value == null ? null : Number(value);
        if (value === '' && (key.endsWith('_id') || key.endsWith('_date'))) value = null;
        clean[key] = value;
      });
      if (resource === 'practica_juegos') clean.config_json = validateGameConfiguration(clean.config_json);
      if (resource === 'practica_ejercicios') {
        const payload = typeof clean.json_data === 'string' ? JSON.parse(clean.json_data || '{}') : clean.json_data;
        const exercises = payload?.ejercicios ?? payload?.exercises;
        if (!Array.isArray(exercises) || !exercises.length) throw new Error('Agrega al menos una pregunta al ejercicio.');
      }
      if (resource === 'aprendizaje_secciones_leccion' && clean.section_type === 'pptx') {
        if (file && !file.name.toLowerCase().endsWith('.pptx')) throw new Error('El archivo debe tener extensión .pptx.');
        if (!file && !clean.body_html) throw new Error('Selecciona un archivo PowerPoint para esta sección.');
      }
      if (resource === 'aprendizaje_secciones_leccion') {
        if (!clean.lesson_id) throw new Error('Selecciona la lección principal a la que pertenece este contenido.');
        if (clean.parent_section_id) {
          const parent = (lookups.parent_section_id || []).find((option) => String(option.value) === String(clean.parent_section_id));
          if (!parent || String(parent.lessonId) !== String(clean.lesson_id)) throw new Error('La sección padre debe pertenecer a la misma lección principal.');
          if (record && String(parent.value) === String(record.id)) throw new Error('Una sección no puede ser sublección de sí misma.');
        }
      }
      await onSave(clean, file);
    } catch (reason) { setError(reason.message || 'No fue posible guardar el registro.'); }
    finally { setSaving(false); }
  };
  return (
    <div className="modal-backdrop">
      <section className="legacy-modal">
        <header><div><small>{record ? 'EDITAR REGISTRO' : 'NUEVO REGISTRO'}</small><h2>{title}</h2></div><button type="button" onClick={onClose}><X /></button></header>
        <form onSubmit={submit} className="form-grid">
          <RelationGuide resource={resource} data={data} lookups={lookups} />
          {((resource === 'aprendizaje_medios') || (resource === 'aprendizaje_secciones_leccion' && data.section_type === 'pptx')) && <label className="full file-drop">Archivo<input type="file" accept={resource === 'aprendizaje_secciones_leccion' ? '.pptx,application/vnd.openxmlformats-officedocument.presentationml.presentation' : undefined} onChange={(event) => setFile(event.target.files?.[0] ?? null)} /><small>{resource === 'aprendizaje_secciones_leccion' ? 'Carga o reemplaza la presentación PowerPoint de esta sección.' : record ? 'Selecciona un archivo sólo si deseas reemplazar el actual.' : 'Imágenes, videos, PDF, PowerPoint, Word o Excel · máximo 25 MB.'}</small></label>}
          {editable.map((key) => {
            if (resource === 'practica_juegos' && key === 'config_json') return <GameFields key={key} data={data} update={update} />;
            if (resource === 'practica_ejercicios' && key === 'json_data') return <ExerciseFields key={key} value={data[key]} update={update} />;
            if (resource === 'ia_modelos' && key === 'configuracion') return <ModelConfigurationFields key={key} value={data[key]} update={update} />;
            if (BOOLEAN_FIELDS.has(key)) return <label className="checkbox full" key={key}><input type="checkbox" checked={Boolean(data[key])} onChange={(event) => update(key, event.target.checked)} />{label(key)}</label>;
            if (LOOKUP_FIELDS[key]) {
              const options = key === 'parent_section_id'
                ? (lookups[key] || []).filter((option) => String(option.lessonId) === String(data.lesson_id) && !invalidParentIds.has(String(option.value)))
                : (lookups[key] || []);
              const emptyLabel = key === 'parent_section_id' ? 'Sección directa de la lección (sin padre)' : 'Sin asignar';
              const changeLookup = (event) => setData((current) => ({ ...current, [key]: event.target.value, ...(key === 'lesson_id' ? { parent_section_id: '' } : {}) }));
              return <label key={key}>{label(key)}<select value={data[key] ?? ''} onChange={changeLookup}><option value="">{emptyLabel}</option>{options.map((option) => <option value={option.value} key={option.value}>{option.label}</option>)}</select>{FIELD_HELP[key] && <small className="field-help">{FIELD_HELP[key]}</small>}</label>;
            }
            const selectOptions = RESOURCE_SELECTS[resource]?.[key] ?? SELECTS[key];
            if (selectOptions) return <label key={key}>{label(key)}<select value={data[key] ?? ''} onChange={(event) => update(key, event.target.value)}><option value="">Selecciona</option>{selectOptions.map((option) => <option key={option} value={option}>{OPTION_LABELS[option] || option}</option>)}</select>{FIELD_HELP[key] && <small className="field-help">{FIELD_HELP[key]}</small>}</label>;
            if (LONG_FIELDS.has(key)) return <label className="full" key={key}>{label(key)}<textarea ref={key === 'body_html' ? htmlEditorRef : undefined} rows={key === 'body_html' ? 13 : 4} value={typeof data[key] === 'object' ? JSON.stringify(data[key], null, 2) : (data[key] ?? '')} onChange={(event) => update(key, event.target.value)} />{key === 'body_html' && <small className="field-help">Haz clic en un bloque de la previsualización para ir a ese punto del HTML.</small>}</label>;
            const type = key === 'password' ? 'password' : NUMBER_FIELDS.has(key) ? 'number' : key.includes('date') ? 'date' : key.includes('url') ? 'url' : key === 'email' ? 'email' : key.includes('color') ? 'color' : 'text';
            return <label key={key}>{label(key)}<input type={type} value={data[key] ?? ''} onChange={(event) => update(key, event.target.value)} />{FIELD_HELP[key] && <small className="field-help">{FIELD_HELP[key]}</small>}</label>;
          })}
          {(resource === 'aprendizaje_secciones_leccion' || resource === 'aprendizaje_lecciones') && <div className="full"><h3>Previsualización</h3><MathPreview data={data} file={file} onHtmlSelect={resource === 'aprendizaje_secciones_leccion' ? focusHtml : undefined} /></div>}
          {error && <div className="alert error full">{error}</div>}
          <div className="form-actions full"><button type="button" className="admin-secondary" onClick={onClose}>Cancelar</button><button className="admin-primary" disabled={saving}><Save /> {saving ? 'Guardando…' : 'Guardar información'}</button></div>
        </form>
      </section>
    </div>
  );
}
