import { useEffect, useState } from 'react';
import { BookOpen, ChevronRight, GraduationCap, Image, Layers3, MoveRight, Pencil, Plus, RefreshCw, Search, Shapes, Trash2 } from 'lucide-react';
import { gatewayApi } from '@/api';
import FormEditor from '../../components/forms/FormEditor';
import LessonStructurePage from '../lessons/LessonStructurePage';
import { BOOLEAN_FIELDS, LOOKUP_FIELDS, OPTION_LABELS, SYSTEM_FIELDS, label } from '../../config/resourceFields';
import './lesson-relations.css';

const rowsOf = (result) => result?.rows ?? (Array.isArray(result) ? result : []);

export default function ResourcePage({ config }) {
  const choices = config.resources ?? [{ id: config.resource, label: config.title }];
  const [resource, setResource] = useState(choices[0].id);
  const [definition, setDefinition] = useState(null);
  const [rows, setRows] = useState([]);
  const [total, setTotal] = useState(0);
  const [search, setSearch] = useState('');
  const [filters, setFilters] = useState({ level: '', grade: '', category: '', status: '', difficulty: '' });
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState('');
  const [editor, setEditor] = useState(null);
  const [modelStatuses, setModelStatuses] = useState([]);
  const [lookups, setLookups] = useState({});
  const [lessonWorkspace, setLessonWorkspace] = useState(null);
  const [movingLessonId, setMovingLessonId] = useState(null);
  const [areaLessons, setAreaLessons] = useState([]);
  const [areaPath, setAreaPath] = useState({ level: '', grade: '', category: '' });

  const load = async (next = resource) => {
    setLoading(true); setError('');
    try {
      const [catalog, result, relatedLessons] = await Promise.all([
        gatewayApi.resources(config.service), gatewayApi.list(config.service, next, 200),
        next === 'aprendizaje_categorias' ? gatewayApi.list('learning', 'aprendizaje_lecciones', 500) : Promise.resolve([]),
      ]);
      setDefinition((catalog.resources ?? []).find((item) => item.resource === next));
      setRows(rowsOf(result)); setTotal(result?.count ?? rowsOf(result).length);
      setAreaLessons(next === 'aprendizaje_categorias' ? rowsOf(relatedLessons) : []);
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
        educationLevel: item.education_level,
        slug: item.slug,
        label: `${item[lookup.text] || item[lookup.value]} · #${item[lookup.value]}${field === 'parent_section_id' ? ` · Lección #${item.lesson_id}` : ''}`,
      }))];
    })).then((entries) => { if (!cancelled) setLookups(Object.fromEntries(entries)); })
      .catch(() => { if (!cancelled) setLookups({}); });
    return () => { cancelled = true; };
  }, [columns.join('|')]);
  const primaryKeys = definition?.primaryKeys?.length ? definition.primaryKeys : ['id'];
  const displayColumns = columns.filter((column) => !SYSTEM_FIELDS.has(column) && column !== 'password_hash').slice(0, config.cardView ? 4 : 8);
  const isLessonCatalog = resource === 'aprendizaje_lecciones';
  const isAreaCatalog = resource === 'aprendizaje_categorias';
  const categoryOptions = lookups.category_id || [];
  const categoryFor = (row) => categoryOptions.find((option) => String(option.value) === String(row.category_id));
  const gradeCode = (row) => {
    const source = [row.grade_code, row.grade, row.grado, row.curriculum_key, row.slug, row.title].filter(Boolean).join(' ');
    const match = source.match(/(?:^|[^A-Z0-9])(PRE|P|S)[\s_-]?(\d)(?:[^0-9]|$)/i);
    return match ? `${match[1].toUpperCase()}${match[2]}` : '';
  };
  const gradeLabel = (code) => {
    const match = code.match(/^(PRE|P|S)(\d+)$/);
    if (!match) return code;
    const level = match[1] === 'P' ? 'Primaria' : match[1] === 'S' ? 'Secundaria' : 'Preparatoria';
    return `${level} · ${match[2]}°`;
  };
  const lessonLevels = [...new Set(rows.map((row) => categoryFor(row)?.educationLevel).filter(Boolean))].sort();
  const lessonGrades = [...new Set(rows.map(gradeCode).filter(Boolean))].sort((a, b) => a.localeCompare(b, 'es', { numeric: true }));
  const lessonDifficulties = [...new Set(rows.map((row) => row.difficulty).filter(Boolean))].sort();
  const visibleRows = rows.filter((row) => {
    const category = categoryFor(row);
    const matchesSearch = JSON.stringify(row).toLowerCase().includes(search.toLowerCase())
      || String(category?.plainLabel || '').toLowerCase().includes(search.toLowerCase());
    return matchesSearch
      && (!filters.level || category?.educationLevel === filters.level)
      && (!filters.grade || gradeCode(row) === filters.grade)
      && (!filters.category || String(row.category_id) === filters.category)
      && (!filters.status || (filters.status === 'published' ? Boolean(row.published) : !row.published))
      && (!filters.difficulty || row.difficulty === filters.difficulty);
  });
  const activeFilterCount = Object.values(filters).filter(Boolean).length;
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
    else {
      const created = await gatewayApi.create(config.service, resource, data);
      if (resource === 'aprendizaje_lecciones' && created?.id) {
        await Promise.allSettled([
          ['presentation', 'Lecciones', 1], ['activity', 'Actividad', 2], ['evaluation', 'Evaluación', 3],
        ].map(([sectionType, title, sortOrder]) => gatewayApi.create('learning', 'aprendizaje_secciones_leccion', {
          lesson_id: Number(created.id), parent_section_id: null, section_type: sectionType,
          title, body_html: '', duration_minutes: 0, sort_order: sortOrder,
          published: true, ai_exercises_enabled: false,
        })));
      }
    }
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
  const relocateLesson = async (row, categoryId) => {
    if (!categoryId || String(categoryId) === String(row.category_id)) return;
    const destination = categoryOptions.find((option) => String(option.value) === String(categoryId));
    if (!window.confirm(`¿Mover “${row.title}” a ${destination?.plainLabel || 'la nueva área'}? Sus secciones y actividades permanecerán vinculadas.`)) return;
    setMovingLessonId(row.id); setError('');
    try { await gatewayApi.update('learning', 'aprendizaje_lecciones', row.id, { category_id: Number(categoryId) }); await load(); }
    catch (reason) { setError(reason.message); }
    finally { setMovingLessonId(null); }
  };
  const areaLevels = ['primaria', 'secundaria', 'preparatoria'].filter((level) => rows.some((item) => item.education_level === level));
  const lessonGradeCode = (lesson) => {
    const source = [lesson.grade_code, lesson.grade, lesson.grado, lesson.curriculum_key, lesson.slug, lesson.title, lesson.summary].filter(Boolean).join(' ');
    const match = source.match(/(?:^|[^A-Z0-9])(PRE|P|S)[\s_-]?(\d)(?:[^0-9]|$)/i);
    return match ? `${match[1].toUpperCase()}${match[2]}` : '';
  };
  const gradesForLevel = (level) => {
    const prefix = level === 'primaria' ? 'P' : level === 'secundaria' ? 'S' : 'PRE';
    const maximum = level === 'primaria' ? 6 : 3;
    const found = new Set(areaLessons.filter((lesson) => rows.some((area) => String(area.id) === String(lesson.category_id) && area.education_level === level)).map(lessonGradeCode).filter(Boolean));
    return Array.from({ length: maximum }, (_, index) => `${prefix}${index + 1}`).filter((grade) => found.has(grade));
  };
  const areaCategories = rows.filter((area) => (!areaPath.level || area.education_level === areaPath.level)
    && (!search || JSON.stringify(area).toLowerCase().includes(search.toLowerCase())));
  const selectedCategory = rows.find((area) => String(area.id) === String(areaPath.category));
  const selectedAreaLessons = areaLessons.filter((lesson) => (!areaPath.category || String(lesson.category_id) === String(areaPath.category))
    && (!areaPath.grade || lessonGradeCode(lesson) === areaPath.grade));
  const chooseLevel = (level) => setAreaPath({ level, grade: '', category: '' });
  const chooseGrade = (grade) => setAreaPath((current) => ({ ...current, grade, category: '' }));
  const chooseCategory = (category) => setAreaPath((current) => ({ ...current, category: String(category.id) }));
  if (lessonWorkspace) return <LessonStructurePage lesson={lessonWorkspace} onBack={() => { setLessonWorkspace(null); void load(); }} />;
  return (
    <div className="page-content">
      <div className="page-title"><div><h1>{config.title}</h1><p>{config.description}</p></div>{!config.readMostly && !config.noCreate && <button className="admin-primary" onClick={() => setEditor({})}><Plus /> {newRecordLabel}</button>}</div>
      {config.title === 'Estructura de lecciones' && <section className="lesson-catalog-help"><BookOpen /><div><h2>Selecciona una lección para editarla</h2><p>Usa <strong>Editar contenido</strong> para administrar sus pestañas, lecturas, ejemplos, videos, actividades y evaluaciones. Las opciones avanzadas sirven para revisiones técnicas.</p></div></section>}
      {choices.length > 1 && <div className="resource-tabs">{choices.map((choice) => <button className={resource === choice.id ? 'active' : ''} key={choice.id} onClick={() => setResource(choice.id)}>{choice.label}</button>)}</div>}
      {modelStatuses.length > 0 && <div className="model-status-grid">{modelStatuses.map((item) => <article className={item.available ? 'available' : 'unavailable'} key={item.id}><i /><div><strong>{item.nombre}</strong><small>{item.proveedor} · {item.modelo}</small><span>{item.detail}</span></div></article>)}</div>}
      {isAreaCatalog && <section className="area-organizer">
        <div className="area-flow-heading"><div><span>ORGANIZADOR DE CONTENIDO</span><h2>Ubica y mueve lecciones sin perder su contenido</h2><p>Selecciona en orden: nivel educativo, grado y categoría. Al mover una lección, sus secciones, actividades y archivos permanecen vinculados.</p></div><Shapes /></div>
        <nav className="area-breadcrumb" aria-label="Ubicación actual"><button className={!areaPath.level ? 'active' : ''} onClick={() => chooseLevel('')}>Área general</button><ChevronRight /><span>{areaPath.level ? areaPath.level.charAt(0).toUpperCase() + areaPath.level.slice(1) : 'Nivel educativo'}</span><ChevronRight /><span>{areaPath.grade ? gradeLabel(areaPath.grade) : 'Grado'}</span><ChevronRight /><span>{selectedCategory?.name || 'Categoría'}</span></nav>
        <div className="area-level-grid"><button className={!areaPath.level ? 'active' : ''} onClick={() => chooseLevel('')}><Shapes /><strong>Área general</strong><small>{rows.length} categorías en todos los niveles</small></button>{areaLevels.map((level) => <button key={level} className={areaPath.level === level ? 'active' : ''} onClick={() => chooseLevel(level)}><GraduationCap /><strong>{level.charAt(0).toUpperCase() + level.slice(1)}</strong><small>{rows.filter((area) => area.education_level === level).length} categorías</small></button>)}</div>
        {areaPath.level && <div className="area-step"><div className="area-step-title"><b>2</b><div><strong>Selecciona el grado</strong><small>Después podrás elegir la categoría matemática.</small></div></div><div className="area-grade-tabs"><button className={!areaPath.grade ? 'active' : ''} onClick={() => chooseGrade('')}>Todos los grados</button>{gradesForLevel(areaPath.level).map((grade) => <button className={areaPath.grade === grade ? 'active' : ''} key={grade} onClick={() => chooseGrade(grade)}>{gradeLabel(grade).split(' · ').pop()}</button>)}</div></div>}
        <div className="area-step"><div className="area-step-title"><b>3</b><div><strong>Elige una categoría</strong><small>Edita sus datos o ábrela para revisar y redistribuir lecciones.</small></div></div><div className="area-category-grid">{areaCategories.map((area) => { const lessons = areaLessons.filter((lesson) => String(lesson.category_id) === String(area.id) && (!areaPath.grade || lessonGradeCode(lesson) === areaPath.grade)); return <article className={String(areaPath.category) === String(area.id) ? 'selected' : ''} key={area.id}><button className="area-category-main" onClick={() => chooseCategory(area)}><span data-color={area.color || 'wine'}>{area.icon || '#'}</span><div><strong>{area.name}</strong><small>{area.education_level} · {lessons.length} lecciones{areaPath.grade ? ` en ${gradeLabel(areaPath.grade)}` : ''}</small></div><ChevronRight /></button><button className="area-edit-button" onClick={() => setEditor({ record: area })}><Pencil /> Editar categoría</button></article>; })}</div></div>
        {areaPath.category && <div className="area-step area-lessons-step"><div className="area-step-title"><b>4</b><div><strong>Lecciones de {selectedCategory?.name}</strong><small>Cambia la categoría para intercalar o reorganizar el contenido.</small></div></div>{selectedAreaLessons.length ? <div className="area-lesson-list">{selectedAreaLessons.map((lesson) => <article key={lesson.id}><div><BookOpen /><span><strong>{lesson.title}</strong><small>{gradeLabel(lessonGradeCode(lesson)) || 'Grado no identificado'} · {lesson.slug}</small></span></div><label><span><MoveRight /> Mover a</span><select value={lesson.category_id || ''} disabled={String(movingLessonId) === String(lesson.id)} onChange={(event) => void relocateLesson(lesson, event.target.value)}>{rows.filter((area) => area.education_level === selectedCategory?.education_level).map((area) => <option value={area.id} key={area.id}>{area.name}</option>)}</select></label></article>)}</div> : <div className="table-state">No hay lecciones en esta categoría y grado.</div>}</div>}
      </section>}
      {!isAreaCatalog && <section className="admin-panel">
        <div className="panel-heading"><div><h2>{choices.find((item) => item.id === resource)?.label}</h2><p>{total} registros</p></div><div className="table-tools"><label><Search /><input placeholder="Buscar…" value={search} onChange={(event) => setSearch(event.target.value)} /></label><button className="admin-secondary icon-only" onClick={() => load()}><RefreshCw /></button></div></div>
        {error && <div className="alert error">{error}</div>}
        {isLessonCatalog && <div className="lesson-filter-panel">
          <div className="lesson-filter-heading"><div><strong>Encuentra contenido rápidamente</strong><small>Combina nivel, grado, tema, estado o dificultad.</small></div><span>{visibleRows.length} resultados</span></div>
          <div className="lesson-filter-grid">
            <label><span>Nivel educativo</span><select value={filters.level} onChange={(event) => setFilters({ ...filters, level: event.target.value, category: '' })}><option value="">Todos los niveles</option>{lessonLevels.map((level) => <option key={level} value={level}>{level.charAt(0).toUpperCase() + level.slice(1)}</option>)}</select></label>
            <label><span>Grado</span><select value={filters.grade} onChange={(event) => setFilters({ ...filters, grade: event.target.value })}><option value="">Todos los grados</option>{lessonGrades.map((grade) => <option key={grade} value={grade}>{gradeLabel(grade)}</option>)}</select></label>
            <label><span>Área o tema</span><select value={filters.category} onChange={(event) => setFilters({ ...filters, category: event.target.value })}><option value="">Todas las áreas</option>{categoryOptions.filter((category) => !filters.level || category.educationLevel === filters.level).map((category) => <option key={category.value} value={category.value}>{category.plainLabel}</option>)}</select></label>
            <label><span>Visibilidad</span><select value={filters.status} onChange={(event) => setFilters({ ...filters, status: event.target.value })}><option value="">Cualquier estado</option><option value="published">Visible</option><option value="draft">Borrador</option></select></label>
            <label><span>Dificultad</span><select value={filters.difficulty} onChange={(event) => setFilters({ ...filters, difficulty: event.target.value })}><option value="">Todas</option>{lessonDifficulties.map((difficulty) => <option key={difficulty} value={difficulty}>{difficulty}</option>)}</select></label>
            <button className="admin-secondary lesson-filter-clear" disabled={!activeFilterCount && !search} onClick={() => { setFilters({ level: '', grade: '', category: '', status: '', difficulty: '' }); setSearch(''); }}>Limpiar filtros {activeFilterCount ? `(${activeFilterCount})` : ''}</button>
          </div>
          <p className="lesson-filter-tip"><Search /> La búsqueda libre también revisa título, clave curricular, resumen, tema y subtema.</p>
        </div>}
        {config.cardView ? <div className="media-grid">{visibleRows.map((row) => <article key={row.id}><div className="media-thumb">{row.media_type === 'image' ? <Image /> : row.media_type === 'video' ? '▶' : 'DOC'}</div><strong>{row.title}</strong><small>{row.file_path || row.external_url || 'Sin ruta'}</small><div className="actions"><button onClick={() => setEditor({ record: row })}><Pencil /> Editar</button><button className="danger" onClick={() => remove(row)}><Trash2 /></button></div></article>)}</div> : isLessonCatalog ? <div className="lesson-admin-grid">{visibleRows.map((row) => <article key={row.id} className="lesson-admin-card"><div className="lesson-admin-card-head"><span><BookOpen /></span><i className={row.published ? 'published' : ''}>{row.published ? 'Visible' : 'Borrador'}</i></div><div className="lesson-relation-path"><span>{categoryFor(row)?.educationLevel || 'Sin nivel'}</span><b>›</b><span>{gradeLabel(gradeCode(row)) || 'Sin grado'}</span><b>›</b><strong>{displayValue(row, 'category_id')}</strong><b>›</b><span>Lección</span></div><h3>{row.title || `Lección #${row.id}`}</h3><p>{row.summary || row.description || 'Sin descripción. Puedes agregarla desde los datos generales.'}</p><div className="lesson-admin-meta"><span>Clave: {row.curriculum_key || row.slug || `#${row.id}`}</span>{row.estimated_minutes && <span>{row.estimated_minutes} min</span>}</div><label className="lesson-relocate"><span><MoveRight /> Mover tema a otra área</span><select value={row.category_id || ''} disabled={String(movingLessonId) === String(row.id)} onChange={(event) => void relocateLesson(row, event.target.value)}>{categoryOptions.map((option) => <option value={option.value} key={option.value}>{option.educationLevel} · {option.plainLabel}</option>)}</select></label><div className="lesson-admin-actions"><button className="admin-primary" onClick={() => setLessonWorkspace(row)}><Layers3 /> Editar contenido</button><button className="admin-secondary" onClick={() => setEditor({ record: row })}><Pencil /> Datos</button><button className="danger icon-only" aria-label="Eliminar lección" onClick={() => remove(row)}><Trash2 /></button></div></article>)}</div> : <div className="table-wrap"><table className="admin-table"><thead><tr>{displayColumns.map((column) => <th key={column}>{label(column)}</th>)}{!config.readMostly && <th>Acciones</th>}</tr></thead><tbody>{visibleRows.map((row, index) => <tr key={primaryKeys.map((key) => row[key]).join(':') || index}>{displayColumns.map((column) => <td key={column}>{BOOLEAN_FIELDS.has(column) ? <span className={`status ${row[column] ? 'published' : ''}`}>{row[column] ? 'Sí' : 'No'}</span> : <span title={displayValue(row, column)}>{displayValue(row, column)}</span>}</td>)}{!config.readMostly && <td><div className="actions"><button onClick={() => setEditor({ record: row })}><Pencil /> Editar</button><button className="danger" onClick={() => remove(row)}><Trash2 /></button></div></td>}</tr>)}</tbody></table></div>}
        {loading && <div className="table-state">Cargando información…</div>}
        {!loading && !visibleRows.length && <div className="table-state">No se encontraron registros.</div>}
      </section>}
      {editor && <FormEditor title={choices.find((item) => item.id === resource)?.label || config.title} resource={resource} columns={columns} primaryKeys={primaryKeys} record={editor.record} defaults={{ active: true, published: true, activo: true, sort_order: 0 }} lookups={lookups} onClose={() => setEditor(null)} onSave={save} />}
    </div>
  );
}
