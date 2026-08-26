export const GRADES_BY_LEVEL = {
  primaria: Array.from({ length: 6 }, (_, index) => ({ code: `P${index + 1}`, number: index + 1, name: `${index + 1}.º de primaria` })),
  secundaria: Array.from({ length: 3 }, (_, index) => ({ code: `S${index + 1}`, number: index + 1, name: `${index + 1}.º de secundaria` })),
  preparatoria: Array.from({ length: 3 }, (_, index) => ({ code: `PRE${index + 1}`, number: index + 1, name: `${index + 1}.º de preparatoria` })),
};

const normalizeGrade = (value = '') => String(value).trim().toUpperCase().replace(/^PREP/, 'PRE');

export function lessonGrade(lesson = {}, category = {}) {
  if (lesson.grade_code) return normalizeGrade(lesson.grade_code);
  const source = `${lesson.slug || ''} ${lesson.title || ''} ${lesson.summary || ''}`;
  const match = source.match(/(?:^|[^a-z0-9])(PRE[1-3]|P[1-6]|S[1-3])(?:[^a-z0-9]|$)/i);
  if (match) return normalizeGrade(match[1]);
  if (category.education_level === 'secundaria') return 'S1';
  if (category.education_level === 'preparatoria') return 'PRE1';
  return 'P1';
}

export function lessonArea(lesson = {}) {
  if (lesson.topic_area) return String(lesson.topic_area).trim();
  const match = String(lesson.summary || '').match(/(?:Área|Area):\s*([^.]*)/i);
  return match?.[1]?.trim() || 'Contenido general';
}

export function lessonsForGrade(catalog, levelSlug, gradeCode) {
  const categories = catalog?.categories ?? [];
  const categoryById = new Map(categories.map((category) => [Number(category.id), category]));
  return (catalog?.lessons ?? []).filter((lesson) => {
    const category = categoryById.get(Number(lesson.category_id));
    return category?.education_level === levelSlug && lessonGrade(lesson, category) === normalizeGrade(gradeCode);
  });
}

export function findGrade(levelSlug, gradeCode) {
  return (GRADES_BY_LEVEL[levelSlug] ?? []).find((grade) => grade.code === normalizeGrade(gradeCode));
}
