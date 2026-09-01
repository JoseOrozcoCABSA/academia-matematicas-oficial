import { useEffect, useMemo, useRef, useState } from 'react';
import renderMathInElement from 'katex/contrib/auto-render';
import { gatewayApi } from '@/api';
import { sanitizeContentHtml } from '@/utils/sanitizeContentHtml';

const MATH_OPTIONS = {
  delimiters: [
    { left: '$$', right: '$$', display: true },
    { left: '\\[', right: '\\]', display: true },
    { left: '\\(', right: '\\)', display: false },
  ],
  throwOnError: false,
  strict: false,
};

export function PresentationPreview({ path, file }) {
  const containerRef = useRef(null);
  const [status, setStatus] = useState('loading');
  const [error, setError] = useState('');
  useEffect(() => {
    let cancelled = false;
    let viewer;
    const render = async () => {
      setStatus('loading'); setError('');
      try {
        const buffer = file ? await file.arrayBuffer() : await gatewayApi.presentation(path);
        if (cancelled || !containerRef.current) return;
        const { PptxViewer, RECOMMENDED_ZIP_LIMITS } = await import('@aiden0z/pptx-renderer');
        viewer = await PptxViewer.open(buffer, containerRef.current, {
          renderMode: 'list', fitMode: 'contain', zipLimits: RECOMMENDED_ZIP_LIMITS,
          lazySlides: true, lazyMedia: true,
          listOptions: { windowed: false, initialSlides: 5, batchSize: 5 },
          pdfjs: false,
        });
        if (!cancelled) setStatus('ready');
      } catch (reason) {
        if (!cancelled) { setError(reason.message); setStatus('error'); }
      }
    };
    void render();
    return () => { cancelled = true; viewer?.destroy(); };
  }, [path, file]);
  return <div className="admin-presentation-preview">{status === 'loading' && <p>Preparando diapositivas…</p>}{status === 'error' && <div className="alert error">{error}</div>}<div ref={containerRef} className={status === 'ready' ? 'admin-pptx-canvas ready' : 'admin-pptx-canvas'} /></div>;
}

function LessonPreview({ data }) {
  const previewRef = useRef(null);
  const [sections, setSections] = useState([]);
  const [loading, setLoading] = useState(Boolean(data?.id));
  useEffect(() => {
    let cancelled = false;
    if (!data?.id) { setSections([]); setLoading(false); return undefined; }
    setLoading(true);
    gatewayApi.list('learning', 'aprendizaje_secciones_leccion', 500)
      .then((result) => {
        if (cancelled) return;
        const rows = result?.rows ?? (Array.isArray(result) ? result : []);
        setSections(rows.filter((section) => String(section.lesson_id) === String(data.id) && section.published !== false)
          .sort((a, b) => Number(a.sort_order) - Number(b.sort_order) || Number(a.id) - Number(b.id)));
      })
      .catch(() => { if (!cancelled) setSections([]); })
      .finally(() => { if (!cancelled) setLoading(false); });
    return () => { cancelled = true; };
  }, [data?.id]);
  useEffect(() => {
    if (previewRef.current) renderMathInElement(previewRef.current, MATH_OPTIONS);
  }, [data, sections]);
  const cleanTitle = String(data?.title || 'Nueva lección').replace(/^\s*(?:PRE\d|P\d|S\d)\s*-\s*/i, '');
  const grade = String(data?.title || data?.slug || data?.summary || '').match(/(?:PRE|P|S)\d/i)?.[0]?.toUpperCase() || 'Grado por definir';
  return <article ref={previewRef} className="admin-lesson-experience">
    <header><div className="admin-lesson-badge">📘 {data?.slug || 'clave-de-lección'} · {grade}</div><h1>{cleanTitle}</h1><p>{data?.summary || 'Agrega un resumen para explicar claramente qué aprenderá el estudiante.'}</p><div className="admin-lesson-stats"><span><strong>{data?.quick_lesson_order || '—'}</strong>Lección rápida</span><span><strong>{data?.difficulty || 'Básica'}</strong>Dificultad</span><span><strong>{data?.duration_minutes || 20} min</strong>Duración</span></div></header>
    <main><div className="admin-lesson-intro"><div><strong>Objetivo</strong><p>{data?.summary || 'Objetivo pendiente de captura.'}</p></div><div><strong>Ruta de aprendizaje</strong><p>{sections.length} bloques organizados para aprender, practicar y evaluar.</p></div></div>
      {loading && <div className="admin-preview-empty">Cargando contenido completo…</div>}
      {!loading && sections.map((section, index) => <section className={`admin-preview-section type-${section.section_type}`} key={section.id}><div className="admin-preview-section-title"><b>{index + 1}</b><div><small>{section.section_type || 'contenido'}</small><h2>{section.title}</h2></div></div>{section.body_html ? <div className="admin-preview-rich-content" dangerouslySetInnerHTML={{ __html: sanitizeContentHtml(section.body_html) }} /> : <p className="admin-preview-empty">Esta sección todavía no tiene contenido visible.</p>}</section>)}
      {!loading && !sections.length && <div className="admin-preview-section"><div className="admin-preview-section-title"><b>1</b><div><small>CONTENIDO</small><h2>La lección está lista para estructurarse</h2></div></div><p className="admin-preview-empty">Guarda la lección y utiliza “Editar contenido” para agregar lecturas, ejemplos, prácticas y evaluaciones.</p></div>}
      <footer><strong>⭐ Recuerda</strong><span>La vista final conserva fórmulas, imágenes, tablas y actividades adaptadas a cualquier pantalla.</span></footer>
    </main>
  </article>;
}

export function MathPreview({ data, file, onHtmlSelect }) {
  const previewRef = useRef(null);
  const [selectedBlock, setSelectedBlock] = useState('');
  const html = useMemo(() => sanitizeContentHtml(data?.body_html || ''), [data?.body_html]);
  useEffect(() => {
    if (previewRef.current) renderMathInElement(previewRef.current, MATH_OPTIONS);
  }, [html, data]);
  if (data?.title && !data?.section_type && !data?.body_html) return <LessonPreview data={data} />;
  if (data?.section_type === 'pptx') {
    return file || data?.body_html
      ? <PresentationPreview path={data.body_html} file={file} />
      : <div className="content-preview"><p>Selecciona un archivo .pptx para previsualizarlo.</p></div>;
  }
  const selectSource = (event) => {
    if (!data?.body_html) return;
    const preview = previewRef.current;
    const target = event.target instanceof Element ? event.target : null;
    const element = target?.closest('p,h1,h2,h3,h4,h5,h6,li,ul,ol,blockquote,pre,table,figure,img,video,audio,iframe,aside,section,div');
    if (!preview || !element || !preview.contains(element)) return;
    preview.querySelector('.content-preview-selected')?.classList.remove('content-preview-selected');
    element.classList.add('content-preview-selected');
    const source = String(data.body_html);
    const outerHtml = element.outerHTML;
    const visibleText = (element.textContent || '').trim();
    let position = source.indexOf(outerHtml);
    if (position < 0 && visibleText) position = source.indexOf(visibleText);
    if (position < 0) position = source.toLowerCase().indexOf(`<${element.tagName.toLowerCase()}`);
    if (position >= 0) {
      const tag = element.tagName.toLowerCase();
      let start = source.lastIndexOf('<', position);
      if (start < 0) start = position;
      let end;
      if (!['img', 'video', 'audio', 'iframe'].includes(tag)) {
        const closing = source.toLowerCase().indexOf(`</${tag}>`, Math.max(start, position));
        end = closing >= 0 ? closing + tag.length + 3 : position + visibleText.length;
      } else {
        const closing = source.indexOf('>', Math.max(start, position));
        end = closing >= 0 ? closing + 1 : start;
      }
      const detail = { position: start, start, end, tag, label: visibleText.slice(0, 80) };
      setSelectedBlock(`<${tag}>${visibleText ? ` · ${visibleText.slice(0, 48)}` : ''}`);
      if (onHtmlSelect) onHtmlSelect(detail);
      else window.dispatchEvent(new CustomEvent('academia-html-source-select', { detail }));
    }
  };
  return (
    <div ref={previewRef} className={data?.body_html ? 'content-preview content-preview--editable' : 'content-preview'} onClick={selectSource} title={data?.body_html ? 'Haz clic en un bloque para seleccionar su HTML completo.' : undefined}>
      {selectedBlock && <span className="content-preview-selection-label">Seleccionado: {selectedBlock}</span>}
      {html ? <div dangerouslySetInnerHTML={{ __html: html }} /> : <p>{data?.summary || data?.description || data?.hero_expression || 'La vista previa aparecerá aquí.'}</p>}
    </div>
  );
}
