import Categoria from '#models/Categoria';
import ConfiguracionSitio from '#models/ConfiguracionSitio';
import Leccion from '#models/Leccion';
import Medio from '#models/Medio';
import MedioLeccion from '#models/MedioLeccion';
import NivelEducativo from '#models/NivelEducativo';
import Recurso from '#models/Recurso';
import SeccionLeccion from '#models/SeccionLeccion';

export class LearningRepository {
  async catalog() {
    const [levels, categories, lessons, settings] = await Promise.all([
      NivelEducativo.findAll({ where: { active: true }, order: [['sort_order', 'ASC']] }),
      Categoria.findAll({ where: { active: true }, order: [['sort_order', 'ASC']] }),
      Leccion.findAll({ order: [['sort_order', 'ASC']] }),
      ConfiguracionSitio.findAll(),
    ]);
    return { levels, categories, lessons, settings };
  }

  lessons(filters: Record<string, unknown>) {
    return Leccion.findAll({
      where: { ...filters },
      order: [['sort_order', 'ASC']],
    });
  }

  async practiceTopics() {
    const sections = await SeccionLeccion.findAll({
      where: { published: true, section_type: ['activity', 'evaluation'] },
      order: [['lesson_id', 'ASC'], ['sort_order', 'ASC']],
    });
    const lessonIds = [...new Set(sections.map((section) => Number(section.get('lesson_id'))))];
    const lessons = lessonIds.length
      ? await Leccion.findAll({ where: { id: lessonIds } })
      : [];
    const lessonById = new Map(lessons.map((lesson) => [
      Number(lesson.get('id')),
      lesson.get({ plain: true }),
    ]));
    return sections
      .map((section) => {
        const plain = section.get({ plain: true });
        const lesson = lessonById.get(Number(plain.lesson_id));
        return lesson ? { ...plain, lesson } : null;
      })
      .filter(Boolean);
  }

  async lesson(slug: string) {
    const lesson = await Leccion.findOne({ where: { slug } });
    if (!lesson) return null;
    const lessonId = Number(lesson.get('id'));
    const [sections, resources, mediaLinks] = await Promise.all([
      SeccionLeccion.findAll({
        where: { lesson_id: lessonId, published: true },
        order: [['sort_order', 'ASC']],
      }),
      Recurso.findAll({
        where: { lesson_id: lessonId, published: true },
        order: [['sort_order', 'ASC']],
      }),
      MedioLeccion.findAll({
        where: { lesson_id: lessonId },
        order: [['sort_order', 'ASC']],
      }),
    ]);
    const mediaIds = mediaLinks.map((item) => Number(item.get('media_id')));
    const media = mediaIds.length
      ? await Medio.findAll({ where: { id: mediaIds } })
      : [];
    return { lesson, sections, resources, media, mediaLinks };
  }
}

export default new LearningRepository();
