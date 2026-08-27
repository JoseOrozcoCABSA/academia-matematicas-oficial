import repository from '#repositories/domain.repository';
import { AppError } from '#utils/errors';

const number = (value: unknown, name: string): number => {
  const result = Number(value);
  if (!Number.isFinite(result) || result <= 0) {
    throw new AppError(`${name} inválido`, 400, 'INVALID_NUMBER');
  }
  return result;
};

const normalizeAnswer = (value: unknown): string => String(value ?? '')
  .normalize('NFD').replace(/[\u0300-\u036f]/g, '').trim().toLowerCase();

const exerciseRows = (raw: string): Record<string, unknown>[] => {
  const parsed = JSON.parse(raw) as Record<string, unknown> | unknown[];
  const rows = Array.isArray(parsed) ? parsed : (parsed.exercises ?? parsed.ejercicios);
  if (!Array.isArray(rows)) throw new AppError('Los ejercicios guardados no tienen un formato válido', 500, 'INVALID_EXERCISES');
  return rows.filter((item): item is Record<string, unknown> => Boolean(item) && typeof item === 'object');
};

export default {
  game: async (slug: string) => {
    const result = await repository.game(slug);
    if (!result) throw new AppError('Juego no encontrado', 404, 'GAME_NOT_FOUND');
    const plain = result.get({ plain: true }) as Record<string, unknown>;
    try {
      return { ...plain, config: JSON.parse(String(plain.config_json ?? '{}')) };
    } catch {
      throw new AppError('La configuración del juego no es JSON válido', 500, 'INVALID_GAME_CONFIG');
    }
  },
  exercises: async (sectionId: number) => {
    const result = await repository.exercises(sectionId);
    if (!result) throw new AppError('No hay ejercicios para esta sección', 404, 'EXERCISES_NOT_FOUND');
    const exercises = exerciseRows(String(result.get('json_data'))).map((item, index) => {
      const { answer: _answer, resultado: _resultado, ...publicItem } = item;
      return { ...publicItem, id: item.id ?? index + 1 };
    });
    const { json_data: _jsonData, ...record } = result.get({ plain: true }) as Record<string, unknown>;
    return { ...record, exercises };
  },
  attempt: async (input: Record<string, unknown>) => {
    const userId = number(input.user_id, 'user_id');
    const sectionId = number(input.section_id, 'section_id');
    const submitted = input.answers && typeof input.answers === 'object' ? input.answers as Record<string, unknown> : {};
    const exercise = await repository.exercises(sectionId);
    if (!exercise || input.grading_mode === 'client_generated') {
      const score = Math.max(0, Math.min(100, Number(input.score_percent ?? 0)));
      await repository.saveAttempt({ user_id: userId, section_id: sectionId, answers: JSON.stringify(submitted), score_percent: score });
      return { score, client_generated: true };
    }
    const rows = exerciseRows(String(exercise.get('json_data')));
    const results = rows.map((item, index) => {
      const id = String(item.id ?? index + 1);
      const expected = item.answer ?? item.resultado ?? '';
      return { id: item.id ?? index + 1, correct: normalizeAnswer(submitted[id]) === normalizeAnswer(expected), answer: expected, explanation: item.explanation ?? item.explicacion ?? '' };
    });
    const correct = results.filter((item) => item.correct).length;
    const score = rows.length ? Math.round((correct / rows.length) * 100) : 0;
    await repository.saveAttempt({ user_id: userId, section_id: sectionId, answers: JSON.stringify(submitted), score_percent: score });
    return { score, correct, total: rows.length, results };
  },
  progress: (input: Record<string, unknown>) => repository.saveProgress(
    number(input.user_id, 'user_id'),
    number(input.lesson_id, 'lesson_id'),
    {
      progress_percent: Math.max(0, Math.min(100, Number(input.progress_percent ?? 0))),
      status: input.status ?? 'in_progress',
      completed_sections: input.completed_sections ?? [],
      last_accessed_at: new Date(),
    },
  ),
  dashboard: (userId: number) => repository.dashboard(number(userId, 'user_id')),
};
