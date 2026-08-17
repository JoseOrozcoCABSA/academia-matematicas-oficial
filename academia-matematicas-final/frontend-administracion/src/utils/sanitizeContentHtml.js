const allowedTags = new Set([
  'A', 'BLOCKQUOTE', 'BR', 'DIV', 'EM', 'FIGCAPTION', 'FIGURE',
  'H1', 'H2', 'H3', 'H4', 'H5', 'H6', 'HR', 'IFRAME', 'IMG', 'LI', 'OL', 'P',
  'PRE', 'SOURCE', 'SPAN', 'STRONG', 'TABLE', 'TBODY', 'TD',
  'TH', 'THEAD', 'TR', 'UL', 'VIDEO',
]);

const removableTags = new Set([
  'BASE', 'BUTTON', 'EMBED', 'FORM', 'INPUT', 'LINK', 'META',
  'OBJECT', 'SCRIPT', 'STYLE', 'TEXTAREA',
]);

const globalAttributes = new Set(['class', 'title', 'style']);
const attributesByTag = {
  A: new Set(['href', 'target', 'rel']),
  IFRAME: new Set(['src', 'title', 'allow', 'allowfullscreen', 'loading']),
  IMG: new Set(['src', 'alt', 'width', 'height', 'loading', 'srcset', 'sizes']),
  SOURCE: new Set(['src', 'type']),
  TD: new Set(['colspan', 'rowspan']),
  TH: new Set(['colspan', 'rowspan', 'scope']),
  VIDEO: new Set(['src', 'controls', 'poster', 'preload']),
};

const safeUrl = (value, tagName) => {
  if (!value) return false;
  if (value.startsWith('/') || value.startsWith('#')) return true;
  if (!/^https?:\/\//i.test(value)) return false;
  if (tagName !== 'IFRAME') return true;
  try {
    const host = new URL(value).hostname.replace(/^www\./, '');
    return ['youtube.com', 'youtube-nocookie.com', 'youtu.be', 'vimeo.com', 'player.vimeo.com'].includes(host);
  } catch {
    return false;
  }
};

const safeInlineStyle = (value = '') => value
  .split(';')
  .map((declaration) => declaration.trim())
  .filter(Boolean)
  .filter((declaration) => declaration.includes(':')
    && !/(expression\s*\(|javascript\s*:|vbscript\s*:|behavior\s*:|-moz-binding|@import|url\s*\()/i.test(declaration))
  .join('; ');

export const sanitizeContentHtml = (html = '') => {
  if (!html || typeof window === 'undefined') return '';
  const documentNode = new DOMParser().parseFromString(html, 'text/html');

  [...documentNode.body.querySelectorAll('*')].forEach((element) => {
    if (removableTags.has(element.tagName)) {
      element.remove();
      return;
    }
    if (!allowedTags.has(element.tagName)) {
      element.replaceWith(...element.childNodes);
      return;
    }
    [...element.attributes].forEach((attribute) => {
      const name = attribute.name.toLowerCase();
      const allowed = globalAttributes.has(name) || attributesByTag[element.tagName]?.has(name);
      if (!allowed || name.startsWith('on')) {
        element.removeAttribute(attribute.name);
      } else if (name === 'style') {
        const style = safeInlineStyle(attribute.value);
        if (style) element.setAttribute('style', style);
        else element.removeAttribute('style');
      } else if (['href', 'src'].includes(name) && !safeUrl(attribute.value, element.tagName)) {
        element.removeAttribute(attribute.name);
      }
    });
    if (element.tagName === 'A') element.setAttribute('rel', 'noopener noreferrer');
    if (['IMG', 'IFRAME'].includes(element.tagName)) element.setAttribute('loading', 'lazy');
  });
  return documentNode.body.innerHTML;
};
