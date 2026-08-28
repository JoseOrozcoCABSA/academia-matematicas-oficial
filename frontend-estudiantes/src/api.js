const API_URL = import.meta.env.VITE_STUDENT_API_URL || import.meta.env.VITE_API_URL || `${window.location.origin}/api`;
const GATEWAY_ORIGIN = new URL(API_URL, window.location.origin).origin;

const authorizationHeaders = () => {
  const token = localStorage.getItem('math-token');
  return token ? { Authorization: `Bearer ${token}` } : {};
};

export async function api(path, options = {}) {
  const response = await fetch(`${API_URL}${path}`, {
    ...options,
    headers: {
      'Content-Type': 'application/json',
      ...authorizationHeaders(),
      ...(options.headers ?? {}),
    },
  });
  const payload = await response.json().catch(() => ({}));
  if (!response.ok || payload.success === false) {
    throw new Error(payload.error?.message ?? 'No fue posible completar la solicitud');
  }
  return payload.data ?? payload;
}

async function binary(path) {
  const normalized = String(path || '').trim();
  const url = normalized.startsWith('http')
    ? normalized
    : normalized.startsWith('/api/')
      ? `${GATEWAY_ORIGIN}${normalized}`
      : `${GATEWAY_ORIGIN}/api/learning/uploads/${normalized.split('/').pop()}`;
  const response = await fetch(url, { headers: authorizationHeaders() });
  if (!response.ok) throw new Error(response.status === 404
    ? 'El archivo de la presentación no existe. Un administrador debe volver a cargarlo.'
    : 'No fue posible abrir la presentación.');
  return response.arrayBuffer();
}

export const learningApi = {
  catalog: () => api('/learning/catalog'),
  practiceTopics: () => api('/learning/practice-topics'),
  lessons: () => api('/learning/lessons'),
  lesson: (slug) => api(`/learning/lessons/${encodeURIComponent(slug)}`),
  presentation: (path) => binary(path),
};

export const practiceApi = {
  game: (slug) => api(`/practice/games/${encodeURIComponent(slug)}`),
  dashboard: (userId) => api(`/practice/dashboard/${userId}`),
  exercises: (sectionId) => api(`/practice/exercises/${sectionId}`),
  progress: (data) => api('/practice/progress', {
    method: 'PUT',
    body: JSON.stringify(data),
  }),
  attempt: (data) => api('/practice/attempts', {
    method: 'POST',
    body: JSON.stringify(data),
  }),
};

export const aiApi = {
  tutor: (data) => api('/ai/tutor', {
    method: 'POST',
    body: JSON.stringify(data),
  }),
  generate: (data) => api('/ai/generate-exercises', {
    method: 'POST',
    body: JSON.stringify(data),
  }),
};

export const identityApi = {
  login: (data) => api('/identity/auth/login', {
    method: 'POST',
    body: JSON.stringify(data),
  }),
};
