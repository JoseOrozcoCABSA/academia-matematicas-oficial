import Ejercicio from '#models/Ejercicio';
import IntentoEjercicio from '#models/IntentoEjercicio';
import ProgresoUsuario from '#models/ProgresoUsuario';
import Reto from '#models/Reto';
import RetoUsuario from '#models/RetoUsuario';
import Juego from '#models/Juego';

export class PracticeRepository {
  game(slug: string) {
    return Juego.findOne({ where: { slug, active: true } });
  }

  exercises(sectionId: number) {
    return Ejercicio.findOne({ where: { section_id: sectionId } });
  }

  saveAttempt(data: Record<string, unknown>) {
    return IntentoEjercicio.create(data);
  }

  async saveProgress(
    userId: number,
    lessonId: number,
    data: Record<string, unknown>,
  ) {
    const current = await ProgresoUsuario.findOne({
      where: { user_id: userId, lesson_id: lessonId },
    });
    if (current) {
      await current.update(data);
      return current;
    }
    return ProgresoUsuario.create({ user_id: userId, lesson_id: lessonId, ...data });
  }

  async dashboard(userId: number) {
    const [progress, attempts, challenges, assignedChallenges] = await Promise.all([
      ProgresoUsuario.findAll({
        where: { user_id: userId },
        order: [['updated_at', 'DESC']],
      }),
      IntentoEjercicio.findAll({
        where: { user_id: userId },
        order: [['attempted_at', 'DESC']],
        limit: 20,
      }),
      Reto.findAll({ where: { active: true }, order: [['created_at', 'DESC']] }),
      RetoUsuario.findAll({ where: { user_id: userId } }),
    ]);
    const activityDates = new Set<string>();
    for (const item of attempts) {
      const value = item.get('attempted_at');
      if (value) activityDates.add(new Date(String(value)).toISOString().slice(0, 10));
    }
    for (const item of progress) {
      const value = item.get('last_accessed_at');
      if (value) activityDates.add(new Date(String(value)).toISOString().slice(0, 10));
    }
    const cursor = new Date();
    const today = cursor.toISOString().slice(0, 10);
    if (!activityDates.has(today)) cursor.setUTCDate(cursor.getUTCDate() - 1);
    let streakDays = 0;
    while (activityDates.has(cursor.toISOString().slice(0, 10))) {
      streakDays += 1;
      cursor.setUTCDate(cursor.getUTCDate() - 1);
    }
    return { progress, attempts, challenges, assignedChallenges, streakDays };
  }
}

export default new PracticeRepository();
