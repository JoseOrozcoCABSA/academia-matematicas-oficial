import { useEffect, useState } from 'react';
import { Image, Layers3, Pencil, Plus, RefreshCw, Search, Trash2 } from 'lucide-react';
import { gatewayApi } from '@/api';
import FormEditor from '../../components/forms/FormEditor';
import LessonStructurePage from '../lessons/LessonStructurePage';
import { BOOLEAN_FIELDS, LOOKUP_FIELDS, OPTION_LABELS, SYSTEM_FIELDS, label } from '../../config/resourceFields';

const rowsOf = (result) => result?.rows ?? (Array.isArray(result) ? result : []);

export default function ResourcePage({ config }) {
  const choices = config.resources ?? [{ id: config.resource, label: config.title }];
  const [resource, setResource] = useState(choices[0].id);
  const [definition, setDefinition] = useState(null);
  const [rows, setRows] = useState([]);
  const [total, setTotal] = useState(0);
  const [search, setSearch] = useState('');
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState('');
  const [editor, setEditor] = useState(null);
  const [modelStatuses, setModelStatuses] = useState([]);
  const [lookups, setLookups] = useState({});
  const [lessonWorkspace, setLessonWorkspace] = useState(null);

  const load = async (next = resource) => {
    setLoading(true); setError('');
    try {
      const [catalog, result] = await Promise.all([gatewayApi.resources(config.service), gatewayApi.list(config.service, next, 200)]);
      setDefinition((catalog.resources ?? []).find((item) => item.resource === next));
      setRows(rowsOf(result)); setTotal(result?.count ?? rowsOf(result).length);
      if (config.service === 'ai' && next === 'ia_modelos') setModelStatuses(await gatewayApi.aiStatus());
      else setModelStatuses([]);
    } catch (reason) { setError(reason.message); setRows([]); }
    finally { setLoading(false); }
  };
  useEffect(() => { void load(resource); }, [config.service, resource]);
  const columns = definition?.columns ?? Object.keys(rows[0] ?? {});
  useEffect(() => {
    const fields = columns.filter((column) => LOOKUP_FIELDS[column]);
    if (!fields.length) { setLookups({}); return; }
    let cancelled = false;
    Promise.all(fields.map(async (field) => {
      const lookup = LOOKUP_FIELDS[field];
      const result = await gatewayApi.list(lookup.service, lookup.resource, 500);
      return [field, rowsOf(result).map((item) => ({
        value: item[lookup.value],
        plainLabel: item[lookup.text] || item[lookup.value],
        lessonId: item.lesson_id,
        parentSectionId: item.parent_section_id,
        label: `${item[lookup.text] || item[lookup.value]} · #${item[lookup.value]}${field === 'parent_section_id' ? ` · Lección #${item.lesson_id}` : ''}`,
      }))];
    })).then((entries) => { if (!cancelled) setLookups(Object.fromEntries(entries)); })
      .catch(() => { if (!cancelled) setLookups({}); });
    return () => { cancelled = true; };
  }, [columns.join('|')]);
  const primaryKeys = definition?.primaryKeys?.length ? definition.primaryKeys : ['id'];
  const displayColumns = columns.filter((column) => !SYSTEM_FIELDS.has(column) && column !== 'password_hash').slice(0, config.cardView ? 4 : 8);
  const visibleRows = rows.filter((row) => JSON.stringify(row).toLowerCase().includes(search.toLowerCase()));
  const displayValue = (row, column) => {
    if (column === 'parent_section_id' && !row[column]) return 'Sección directa';
    const related = (lookups[column] || []).find((option) => String(option.value) === String(row[column]));
    if (related) return related.plainLabel;
    if (column === 'section_type' || column === 'page_type') return OPTION_LABELS[row[column]] || row[column] || '—';
    return typeof row[column] === 'object' ? JSON.stringify(row[column]) : String(row[column] ?? '—');
  };
  const newRecordLabel = resource === 'aprendizaje_lecciones'
    ? 'Nueva lección principal'
    : resource === 'aprendizaje_secciones_leccion'
      ? 'Nueva sección o sublección'
      : 'Nuevo registro';
  const save = async (data, file) => {
    let uploadedMedia = null;
    if (resource === 'aprendizaje_secciones_leccion' && data.section_type === 'pptx' && file) {
      const form = new FormData();
      form.append('file', file);
      form.append('title', data.title || file.name);
      form.append('upload_context', 'content');
      const media = await gatewayApi.uploadMedia(form);
      data.body_html = media.file_path;
      data.media_id = media.id;
    } else if (resource === 'aprendizaje_medios' && file) {
      const form = new FormData(); form.append('file', file);
      ['title', 'upload_context', 'external_url', 'alt_text'].forEach((key) => form.append(key, data[key] ?? ''));
      uploadedMedia = await gatewayApi.uploadMedia(form);
      ['title', 'media_type', 'file_path', 'thumbnail_path', 'external_url', 'alt_text', 'upload_context', 'width', 'height', 'file_size']
        .forEach((key) => { data[key] = uploadedMedia[key]; });
    }
    if (editor.record) {
      const newPassword = data.password;
      delete data.password;
      const where = Object.fromEntries(primaryKeys.map((key) => [key, editor.record[key]]));
      if (primaryKeys.length === 1) await gatewayApi.update(config.service, resource, where[primaryKeys[0]], data);
      else await gatewayApi.updateWhere(config.service, resource, where, data);
      if (resource === 'identidad_usuarios' && newPassword) await gatewayApi.resetUserPassword(editor.record.id, newPassword);
      if (resource === 'aprendizaje_medios' && uploadedMedia?.id) await gatewayApi.remove('learning', 'aprendizaje_medios', uploadedMedia.id);
    } else if (resource === 'aprendizaje_medios' && file) {
      // La carga ya creó el registro de medio y dejó el archivo disponible.
    } else if (resource === 'identidad_usuarios') {
      const created = await gatewayApi.registerStudent(data);
      if ((data.role && data.role !== 'student') || data.active === false) {
        await gatewayApi.update('identity', 'identidad_usuarios', created.id, { role: data.role || 'student', active: data.active !== false });
      }
    }
    else await gatewayApi.create(config.service, resource, data);
    setEditor(null); await load();
  };
  const remove = async (row) => {
    if (!window.confirm(`¿Eliminar “${row.title || row.name || row.nombre || row.id}”? Esta acción no se puede deshacer.`)) return;
    try {
      const where = Object.fromEntries(primaryKeys.map((key) => [key, row[key]]));
      if (primaryKeys.length === 1) await gatewayApi.remove(config.service, resource, where[primaryKeys[0]]);
      else await gatewayApi.removeWhere(config.service, resource, where);
      await load();
    } catch (reason) { setError(reason.message); }
  };
  if (lessonWorkspace) return <LessonStructurePage lesson={lessonWorkspace} onBack={() => { setLessonWorkspace(null); void load(); }} />;
  return (
    <div className="page-content">
      <div className="page-title"><div><h1>{config.title}</h1><p>{config.description}</p></div>{!config.readMostly && !config.noCreate && <button className="admin-primary" onClick={() => setEditor({})}><Plus /> {newRecordLabel}</button>}</div>
      {config.title === 'Estructura de lecciones' && <section className="hierarchy-map" aria-label="Jerarquía del contenido"><div><small>NIVEL 1</small><strong>Área matemática</strong><span>Ej. Álgebra</span></div><b>→</b><div><small>NIVEL 2</small><strong>Lección principal</strong><span>La página que abre el alumno</span></div><b>→</b><div><small>NIVEL 3</small><strong>Sección</strong><span>Contenido directo de la lección</span></div><b>→</b><div><small>NIVEL 4 · OPCIONAL</small><strong>Sublección</strong><span>Contenido dentro de una sección</span></div></section>}
      {choices.length > 1 && <div className="resource-tabs">{choices.map((choice) => <button className={resource === choice.id ? 'active' : ''} key={choice.id} onClick={() => setResource(choice.id)}>{choice.label}</button>)}</div>}
      {modelStatuses.length > 0 && <div className="model-status-grid">{modelStatuses.map((item) => <article className={item.available ? 'available' : 'unavailable'} key={item.id}><i /><div><strong>{item.nombre}</strong><small>{item.proveedor} · {item.modelo}</small><span>{item.detail}</span></div></article>)}</div>}
      <section className="admin-panel">
        <div className="panel-heading"><div><h2>{choices.find((item) => item.id === resource)?.label}</h2><p>{total} registros</p></div><div className="table-tools"><label><Search /><input placeholder="Buscar…" value={search} onChange={(event) => setSearch(event.target.value)} /></label><button className="admin-secondary icon-only" onClick={() => load()}><RefreshCw /></button></div></div>
        {error && <div className="alert error">{error}</div>}
        {config.cardView ? <div className="media-grid">{visibleRows.map((row) => <article key={row.id}><div className="media-thumb">{row.media_type === 'image' ? <Image /> : row.media_type === 'video' ? '▶' : 'DOC'}</div><strong>{row.title}</strong><small>{row.file_path || row.external_url || 'Sin ruta'}</small><div className="actions"><button onClick={() => setEditor({ record: row })}><Pencil /> Editar</button><button className="danger" onClick={() => remove(row)}><Trash2 /></button></div></article>)}</div> : <div className="table-wrap"><table className="admin-table"><thead><tr>{displayColumns.map((column) => <th key={column}>{label(column)}</th>)}{!config.readMostly && <th>Acciones</th>}</tr></thead><tbody>{visibleRows.map((row, index) => <tr key={primaryKeys.map((key) => row[key]).join(':') || index}>{displayColumns.map((column) => <td key={column}>{BOOLEAN_FIELDS.has(column) ? <span className={`status ${row[column] ? 'published' : ''}`}>{row[column] ? 'Sí' : 'No'}</span> : <span title={displayValue(row, column)}>{displayValue(row, column)}</span>}</td>)}{!config.readMostly && <td><div className="actions">{resource === 'aprendizaje_lecciones' ? <button onClick={() => setLessonWorkspace(row)}><Layers3 /> Abrir estructura</button> : <button onClick={() => setEditor({ record: row })}><Pencil /> Editar</button>}<button className="danger" onClick={() => remove(row)}><Trash2 /></button></div></td>}</tr>)}</tbody></table></div>}
        {loading && <div className="table-state">Cargando información…</div>}
        {!loading && !visibleRows.length && <div className="table-state">No se encontraron registros.</div>}
      </section>
      {editor && <FormEditor title={choices.find((item) => item.id === resource)?.label || config.title} resource={resource} columns={columns} primaryKeys={primaryKeys} record={editor.record} defaults={{ active: true, published: true, activo: true, sort_order: 0 }} lookups={lookups} onClose={() => setEditor(null)} onSave={save} />}
    </div>
  );
}

