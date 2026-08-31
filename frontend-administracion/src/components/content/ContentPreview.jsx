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

export function MathPreview({ data, file, onHtmlSelect }) {
  const previewRef = useRef(null);
  const [selectedBlock, setSelectedBlock] = useState('');
  const html = useMemo(() => sanitizeContentHtml(data?.body_html || ''), [data?.body_html]);
  useEffect(() => {
    if (previewRef.current) renderMathInElement(previewRef.current, MATH_OPTIONS);
  }, [html, data]);
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
