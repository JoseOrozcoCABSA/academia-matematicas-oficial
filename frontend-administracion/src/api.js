const gatewayPort = import.meta.env.VITE_GATEWAY_PORT || '4600';
const browserGatewayUrl = `${window.location.protocol}//${window.location.hostname}:${gatewayPort}`;
const BASE_URL = import.meta.env.VITE_ADMIN_API_URL || import.meta.env.VITE_API_URL || browserGatewayUrl;
const GATEWAY_ORIGIN = new URL(BASE_URL, window.location.origin).origin;

const authorizationHeaders = () => {
  const token = localStorage.getItem('cabsa_access_token') ?? localStorage.getItem('math-token');
  return token ? { Authorization: `Bearer ${token}` } : {};
};

async function multipartRequest(path, body) {
  const response = await fetch(`${BASE_URL}${path}`, {
    method: 'POST', body, headers: authorizationHeaders(),
  });
  const payload = await response.json().catch(() => ({}));
  if (!response.ok || payload.success === false) throw new Error(payload.error?.message ?? 'No fue posible subir el archivo');
  return payload.data ?? payload;
}

async function binaryRequest(path) {
  const normalized = String(path || '').trim();
  if (!normalized) throw new Error('La presentación no tiene un archivo asociado.');
  const url = normalized.startsWith('http')
    ? normalized
    : normalized.startsWith('/api/')
      ? `${GATEWAY_ORIGIN}${normalized}`
      : `${GATEWAY_ORIGIN}/api/learning/uploads/${normalized.split('/').pop()}`;
  const response = await fetch(url, { headers: authorizationHeaders() });
  if (!response.ok) throw new Error(response.status === 404
    ? 'El archivo no existe; vuelve a cargar la presentación.'
    : 'No fue posible descargar la presentación para previsualizarla.');
  return response.arrayBuffer();
}

export async function request(path, options = {}) {
  const response = await fetch(`${BASE_URL}${path}`, {
    ...options,
    headers: {
      'Content-Type': 'application/json',
      ...authorizationHeaders(),
      ...(options.headers ?? {}),
    },
  });
  const payload = await response.json().catch(() => ({}));
  if (!response.ok || payload.success === false) {
    throw new Error(payload.error?.message ?? 'Error al consultar el servicio');
  }
  if (payload.pagination && Array.isArray(payload.data)) {
    return { rows: payload.data, count: payload.pagination.total, pagination: payload.pagination };
  }
  return payload.data ?? payload;
}

export const gatewayApi = {
  login: (data) => request('/api/identity/auth/login', {
    method: 'POST', body: JSON.stringify(data),
  }),
  health: () => request('/services/health'),
  aiStatus: () => request('/api/ai/models/status'),
  services: () => request('/services'),
  resources: (service) => request(`/api/${service}/resources`),
  list: (service, resource, limit = 50) =>
    request(`/api/${service}/data/${resource}?limit=${limit}&orderDirection=DESC`),
  create: (service, resource, data) => request(`/api/${service}/data/${resource}`, {
    method: 'POST',
    body: JSON.stringify(data),
  }),
  update: (service, resource, id, data) => request(`/api/${service}/data/${resource}/${id}`, {
    method: 'PATCH',
    body: JSON.stringify(data),
  }),
  updateWhere: (service, resource, where, data) => request(`/api/${service}/data/${resource}`, {
    method: 'PATCH',
    body: JSON.stringify({ where, data }),
  }),
  remove: (service, resource, id) => request(`/api/${service}/data/${resource}/${id}`, {
    method: 'DELETE',
  }),
  removeWhere: (service, resource, where) => request(`/api/${service}/data/${resource}`, {
    method: 'DELETE',
    body: JSON.stringify({ where }),
  }),
  registerStudent: (data) => request('/api/identity/auth/register', {
    method: 'POST',
    body: JSON.stringify(data),
  }),
  resetUserPassword: (id, password) => request(`/api/identity/users/${id}/password`, {
    method: 'PATCH', body: JSON.stringify({ password }),
  }),
  uploadMedia: (data) => multipartRequest('/api/learning/media/upload', data),
  presentation: (path) => binaryRequest(path),
};
