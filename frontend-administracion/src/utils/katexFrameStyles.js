const isKatexRule = (cssText = '') => /(?:\.katex|KaTeX_|katex-fonts)/i.test(cssText);

/** Copia al iframe únicamente las reglas de KaTeX cargadas por Vite en la página principal. */
export function installKatexFrameStyles(frameDocument) {
  if (!frameDocument?.head || frameDocument.getElementById('katex-frame-styles')) return;
  const rules = [];
  [...document.styleSheets].forEach((styleSheet) => {
    try {
      [...(styleSheet.cssRules || [])].forEach((rule) => {
        if (isKatexRule(rule.cssText)) rules.push(rule.cssText);
      });
    } catch {
      // Una hoja remota puede bloquear cssRules; KaTeX se empaqueta localmente.
    }
  });
  const style = frameDocument.createElement('style');
  style.id = 'katex-frame-styles';
  style.textContent = `.katex{font:normal 1.21em KaTeX_Main,serif;line-height:1.2;white-space:nowrap}.katex-display{display:block;margin:1em 0;text-align:center}.katex-display>.katex{display:block;text-align:center;white-space:nowrap}.katex .katex-mathml{position:absolute;clip:rect(1px,1px,1px,1px);padding:0;border:0;height:1px;width:1px;overflow:hidden}\n${rules.join('\n')}`;
  frameDocument.head.appendChild(style);
}
