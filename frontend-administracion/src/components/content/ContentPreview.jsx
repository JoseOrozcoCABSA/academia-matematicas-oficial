import { useEffect, useRef, useState } from 'react';
import renderMathInElement from 'katex/contrib/auto-render';
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
    const element = target?.closest('p,h1,h2,h3,h4,h5,h6,li,blockquote,pre,table,figure,img,video,audio');
    if (!preview || !element || !preview.contains(element)) return;
    const source = String(data.body_html);
    const outerHtml = element.outerHTML;
    const visibleText = (element.textContent || '').trim();
    let position = source.indexOf(outerHtml);
    if (position < 0 && visibleText) position = source.indexOf(visibleText);
    if (position < 0) position = source.toLowerCase().indexOf(`<${element.tagName.toLowerCase()}`);
    if (position >= 0) {
      if (onHtmlSelect) onHtmlSelect(position);
      else window.dispatchEvent(new CustomEvent('academia-html-source-select', { detail: { position } }));
    }
  };
  return (
    <div ref={previewRef} className={data?.body_html ? 'content-preview content-preview--editable' : 'content-preview'} onClick={selectSource} title={data?.body_html ? 'Haz clic en un bloque para ubicarlo en el HTML.' : undefined}>
      {html ? <div dangerouslySetInnerHTML={{ __html: html }} /> : <p>{data?.summary || data?.description || data?.hero_expression || 'La vista previa aparecerá aquí.'}</p>}
    </div>
  );
}

