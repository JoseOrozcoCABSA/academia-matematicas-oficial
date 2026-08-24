import repository from '#repositories/domain.repository';
import { AppError } from '#utils/errors';

const number = (value: unknown, name: string): number => {
  const result = Number(value);
  if (!Number.isFinite(result) || result <= 0) {
    throw new AppError(`${name} inválido`, 400, 'INVALID_NUMBER');
  }
  return result;
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
    const raw = String(result.get('json_data'));
    return { ...result.get({ plain: true }), exercises: JSON.parse(raw) };
  },
  attempt: (input: Record<string, unknown>) => repository.saveAttempt({
    user_id: number(input.user_id, 'user_id'),
    section_id: number(input.section_id, 'section_id'),
    answers: JSON.stringify(input.answers ?? []),
    score_percent: Math.max(0, Math.min(100, Number(input.score_percent ?? 0))),
  }),
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
