import repository from '#repositories/domain.repository';
import { AppError } from '#utils/errors';

export default {
  catalog: () => repository.catalog(),
  lessons: (filters: Record<string, unknown>) => repository.lessons(filters),
  practiceTopics: () => repository.practiceTopics(),
  lesson: async (slug: string) => {
    const result = await repository.lesson(slug);
    if (!result) throw new AppError('Lección no encontrada', 404, 'LESSON_NOT_FOUND');
    return result;
  },
};
