import env from '#config/env';

export type ModelConfiguration = {
  purposes?: string[];
  temperature?: number;
  timeout_ms?: number;
  fallback_local?: boolean;
  api_key_env?: string;
};

export type ConfiguredModel = {
  id: number;
  nombre: string;
  proveedor: string;
  modelo: string;
  url_base?: string | null;
  configuracion: ModelConfiguration;
};

const timeout = (model: ConfiguredModel) => Math.max(1000, Math.min(180000, Number(model.configuracion.timeout_ms ?? 45000)));

const requestJson = async (url: string, init: RequestInit, timeoutMs: number) => {
  const response = await fetch(url, { ...init, signal: AbortSignal.timeout(timeoutMs) });
  const payload = await response.json().catch(() => ({})) as Record<string, any>;
  if (!response.ok) throw new Error(String(payload.error?.message ?? payload.error ?? `HTTP ${response.status}`));
  return payload;
};

export async function invokeModel(model: ConfiguredModel, system: string, user: string): Promise<string> {
  const provider = model.proveedor.toLowerCase();
  const temperature = Number(model.configuracion.temperature ?? 0.2);
  if (provider === 'ollama') {
    const base = String(model.url_base || env.ollamaUrl).replace(/\/$/, '');
    const payload = await requestJson(`${base}/api/chat`, {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ model: model.modelo, stream: false, messages: [{ role: 'system', content: system }, { role: 'user', content: user }], options: { temperature } }),
    }, timeout(model));
    const content = payload.message?.content;
    if (!content) throw new Error('Ollama no devolvió contenido');
    return String(content);
  }
  if (provider === 'openai') {
    if (!env.openAiApiKey) throw new Error('OPENAI_API_KEY no está configurada');
    const base = String(model.url_base || 'https://api.openai.com/v1').replace(/\/$/, '');
    const payload = await requestJson(`${base}/chat/completions`, {
      method: 'POST',
      headers: { 'Content-Type': 'application/json', Authorization: `Bearer ${env.openAiApiKey}` },
      body: JSON.stringify({ model: model.modelo, temperature, messages: [{ role: 'system', content: system }, { role: 'user', content: user }] }),
    }, timeout(model));
    const content = payload.choices?.[0]?.message?.content;
    if (!content) throw new Error('OpenAI no devolvió contenido');
    return String(content);
  }
  throw new Error(`Proveedor de IA no compatible: ${model.proveedor}`);
}

export async function providerStatus(model: ConfiguredModel) {
  try {
    if (model.proveedor.toLowerCase() === 'openai') {
      return { available: Boolean(env.openAiApiKey), detail: env.openAiApiKey ? 'API configurada' : 'Falta OPENAI_API_KEY' };
    }
    if (model.proveedor.toLowerCase() === 'ollama') {
      const base = String(model.url_base || env.ollamaUrl).replace(/\/$/, '');
      const payload = await requestJson(`${base}/api/tags`, { method: 'GET' }, Math.min(timeout(model), 5000));
      const installed = (payload.models ?? []).some((item: Record<string, unknown>) => String(item.name) === model.modelo || String(item.model) === model.modelo);
      return { available: installed, detail: installed ? 'Modelo instalado' : 'Servidor activo, modelo no instalado' };
    }
    return { available: false, detail: 'Proveedor no compatible' };
  } catch (reason) {
    return { available: false, detail: reason instanceof Error ? reason.message : String(reason) };
  }
}
