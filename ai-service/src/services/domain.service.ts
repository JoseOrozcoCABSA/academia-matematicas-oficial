import repository from '#repositories/domain.repository';
import { AppError } from '#utils/errors';
import {
  invokeModel,
  providerStatus,
  type ConfiguredModel,
  type ModelConfiguration,
} from '#services/providers.service';

const normalize = (value: string): string => value
  .normalize('NFD').replace(/[\u0300-\u036f]/g, '').toLowerCase();

const tutorResponse = (message: string): string => {
  const normalized = normalize(message);
  if (normalized.includes('fracci')) return 'Comienza identificando numerador y denominador. Después busca un denominador común y trabaja paso a paso. ¿Qué fracciones necesitas comparar u operar?';
  if (normalized.includes('ecuaci') || normalized.includes('algebra')) return 'Primero reúne los términos semejantes. Luego aplica la misma operación en ambos lados hasta dejar la incógnita sola. Comparte la ecuación y revisamos cada paso.';
  if (normalized.includes('multiplica')) return 'Separa uno de los factores en partes más sencillas, multiplica cada parte y suma los resultados. Comparte la operación y la resolvemos juntos.';
  if (normalized.includes('division') || normalized.includes('dividir')) return 'Identifica el dividendo y el divisor. Estima cuántas veces cabe el divisor, multiplica, resta y continúa con la siguiente cifra.';
  if (normalized.includes('suma') || normalized.includes('resta')) return 'Alinea unidades, decenas y centenas. Resuelve de derecha a izquierda y revisa si necesitas llevar o pedir prestado. ¿Cuál es la operación?';
  return 'Vamos paso a paso: identifica los datos, la operación necesaria y lo que debes encontrar. Cuéntame el ejercicio y tu primer intento.';
};

type Exercise = { id: number; question: string; answer: number | string; explanation: string };

const generatedExercises = (topic: string, count: number): Exercise[] => {
  const normalized = normalize(topic);
  return Array.from({ length: count }, (_, index) => {
    const id = index + 1; const left = index + 2; const right = (index % 5) + 1;
    if (normalized.includes('fracci')) {
      const denominator = (index % 4) + 3; const first = (index % (denominator - 1)) + 1; const second = ((index + 1) % (denominator - 1)) + 1;
      return { id, question: `Suma ${first}/${denominator} + ${second}/${denominator}. Escribe solo el numerador del resultado.`, answer: first + second, explanation: 'Como los denominadores son iguales, se suman los numeradores y se conserva el denominador.' };
    }
    if (normalized.includes('ecuaci') || normalized.includes('algebra')) {
      const coefficient = (index % 4) + 2; const solution = (index % 6) + 1; const constant = right; const result = coefficient * solution + constant;
      return { id, question: `Resuelve ${coefficient}x + ${constant} = ${result}.`, answer: solution, explanation: `Resta ${constant} en ambos lados y divide el resultado entre ${coefficient}.` };
    }
    return { id, question: `Resuelve ${left * 3} + ${right * 2}.`, answer: left * 3 + right * 2, explanation: 'Suma las cantidades y comprueba el resultado.' };
  });
};

const configuration = (value: unknown): ModelConfiguration => {
  if (!value) return {};
  if (typeof value === 'string') {
    try { return JSON.parse(value) as ModelConfiguration; } catch { return {}; }
  }
  return value as ModelConfiguration;
};

const configuredModel = (model: any): ConfiguredModel => {
  const plain = model.get({ plain: true }) as Record<string, unknown>;
  return {
    id: Number(plain.id), nombre: String(plain.nombre), proveedor: String(plain.proveedor),
    modelo: String(plain.modelo), url_base: plain.url_base ? String(plain.url_base) : null,
    configuracion: configuration(plain.configuracion),
  };
};

const selectModel = (models: any[], purpose: string, requestedId?: unknown): ConfiguredModel | null => {
  const configured = models.map(configuredModel);
  if (requestedId) return configured.find((item) => item.id === Number(requestedId)) ?? null;
  return configured.find((item) => item.configuracion.purposes?.includes(purpose))
    ?? configured.find((item) => purpose === 'tutor' ? item.proveedor === 'ollama' : item.proveedor === 'openai')
    ?? configured[0]
    ?? null;
};

const promptFor = (prompts: any[], purpose: string, fallback: string): string => {
  const item = prompts.find((candidate) => String(candidate.get('proposito')) === purpose);
  return item ? String(item.get('contenido')) : fallback;
};

const parseExercises = (content: string, count: number): Exercise[] => {
  const cleaned = content.trim().replace(/^```(?:json)?\s*/i, '').replace(/\s*```$/, '');
  const parsed = JSON.parse(cleaned) as Record<string, unknown> | unknown[];
  const rows = Array.isArray(parsed) ? parsed : (parsed.exercises ?? parsed.ejercicios);
  if (!Array.isArray(rows) || !rows.length) throw new Error('El modelo no devolvió una lista válida de ejercicios');
  return rows.slice(0, count).map((row: any, index) => ({
    id: Number(row.id ?? index + 1),
    question: String(row.question ?? row.ejercicio ?? ''),
    answer: row.answer ?? row.resultado ?? '',
    explanation: String(row.explanation ?? row.explicacion ?? ''),
  })).filter((row) => row.question && String(row.answer).length > 0);
};

const modelInfo = (model: ConfiguredModel | null, fallback: boolean, warning?: string) => ({
  id: model?.id ?? null,
  name: model?.nombre ?? 'Generador local integrado',
  provider: fallback ? 'local' : model?.proveedor ?? 'local',
  model: fallback ? 'generador-local-determinista' : model?.modelo ?? 'generador-local-determinista',
  fallback,
  warning: warning ?? null,
});

export default {
  models: () => repository.models(),
  prompts: () => repository.prompts(),
  modelStatus: async () => {
    const models = await repository.models();
    return Promise.all(models.map(async (item) => {
      const model = configuredModel(item);
      return { ...model, ...(await providerStatus(model)) };
    }));
  },
  tutor: async (input: Record<string, unknown>) => {
    const message = String(input.message ?? '').trim();
    if (!message) throw new AppError('Escribe una pregunta', 400, 'MESSAGE_REQUIRED');
    const [models, prompts] = await Promise.all([repository.models(), repository.prompts()]);
    const model = selectModel(models, 'tutor', input.model_id);
    const system = promptFor(prompts, 'tutor', 'Actúa como tutor matemático y explica paso a paso.');
    let answer: string; let fallback = false; let warning: string | undefined;
    try {
      if (!model) throw new Error('No hay un modelo activo configurado para tutoría');
      answer = await invokeModel(model, system, message);
    } catch (reason) {
      warning = reason instanceof Error ? reason.message : String(reason);
      if (model?.configuracion.fallback_local === false) throw new AppError(`El proveedor de IA no está disponible: ${warning}`, 503, 'AI_PROVIDER_UNAVAILABLE');
      fallback = true; answer = tutorResponse(message);
    }
    const conversation = await repository.conversation(input); const conversationId = String(conversation.get('id'));
    await repository.message(conversationId, 'user', message); await repository.message(conversationId, 'assistant', answer);
    return { conversation_id: conversationId, answer, model: modelInfo(model, fallback, warning) };
  },
  generate: async (input: Record<string, unknown>) => {
    const topic = String(input.topic ?? 'Práctica matemática'); const count = Math.max(1, Math.min(10, Number(input.count ?? 10)));
    const purpose = String(input.type) === 'evaluation' ? 'evaluacion' : 'generacion_ejercicios';
    const [models, prompts] = await Promise.all([repository.models(), repository.prompts()]);
    const model = selectModel(models, purpose, input.model_id);
    const system = `${promptFor(prompts, purpose, 'Genera ejercicios matemáticos.')}
Devuelve exclusivamente JSON válido con la forma {"exercises":[{"id":1,"question":"...","answer":"...","explanation":"..."}]}.`;
    let exercises: Exercise[]; let fallback = false; let warning: string | undefined;
    try {
      if (!model) throw new Error(`No hay un modelo activo configurado para ${purpose}`);
      const content = await invokeModel(model, system, `Tema: ${topic}. Cantidad: ${count}. Tipo: ${purpose}.`);
      exercises = parseExercises(content, count);
      if (!exercises.length) throw new Error('El proveedor devolvió ejercicios vacíos');
    } catch (reason) {
      warning = reason instanceof Error ? reason.message : String(reason);
      if (model?.configuracion.fallback_local === false) {
        await repository.generation({ usuario_id: input.user_id ?? null, leccion_id: input.lesson_id ?? null, seccion_id: input.section_id ?? null, tipo: purpose === 'evaluacion' ? 'evaluacion' : 'actividad', modelo: model.modelo, entrada: input, resultado: null, estado: 'error', error: warning });
        throw new AppError(`El proveedor de IA no está disponible: ${warning}`, 503, 'AI_PROVIDER_UNAVAILABLE');
      }
      fallback = true; exercises = generatedExercises(topic, count);
    }
    const info = modelInfo(model, fallback, warning);
    const generation = await repository.generation({ usuario_id: input.user_id ?? null, leccion_id: input.lesson_id ?? null, seccion_id: input.section_id ?? null, tipo: purpose === 'evaluacion' ? 'evaluacion' : 'actividad', modelo: `${info.provider}:${info.model}`, entrada: { ...input, selected_model_id: model?.id ?? null }, resultado: { exercises, model: info }, estado: 'completada', error: warning ?? null });
    return { generation_id: generation.get('id'), exercises, model: info };
  },
};
