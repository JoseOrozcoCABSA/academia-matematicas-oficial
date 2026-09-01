import { BookOpen, Check, ChevronRight, GraduationCap, Shapes } from 'lucide-react';

const levelName = (level) => level ? level.charAt(0).toUpperCase() + level.slice(1) : 'Sin nivel';

export default function LessonLocationPicker({ options, value, gradeLabel = 'Grado no identificado', onChange, compact = false }) {
  const selected = options.find((option) => String(option.value) === String(value));
  const levels = [...new Set(options.map((option) => option.educationLevel).filter(Boolean))];
  const activeLevel = selected?.educationLevel || levels[0] || '';
  const selectLevel = (level) => {
    const firstOption = options.find((option) => option.educationLevel === level);
    if (firstOption) onChange(firstOption.value);
  };

  return (
    <section className={`lesson-location-picker ${compact ? 'compact' : ''}`}>
      <div className="lesson-location-preview" aria-label="Ubicación seleccionada">
        <span><GraduationCap /><small>Nivel</small><strong>{levelName(selected?.educationLevel)}</strong></span><ChevronRight />
        <span><BookOpen /><small>Grado</small><strong>{gradeLabel}</strong></span><ChevronRight />
        <span><Shapes /><small>Área</small><strong>{selected?.plainLabel || 'Selecciona un área'}</strong></span>
      </div>
      <div className="lesson-location-step">
        <div><b>1</b><span><strong>Nivel educativo</strong><small>Elige dónde se mostrará la lección.</small></span></div>
        <div className="lesson-level-options">
          {levels.map((level) => <button type="button" className={activeLevel === level ? 'selected' : ''} key={level} onClick={() => selectLevel(level)}>{activeLevel === level && <Check />}{levelName(level)}</button>)}
        </div>
      </div>
      <div className="lesson-location-step">
        <div><b>2</b><span><strong>Área matemática</strong><small>Selecciona una tarjeta, no una clave técnica.</small></span></div>
        <div className="lesson-area-options">
          {options.filter((option) => option.educationLevel === activeLevel).map((option) => <button type="button" className={String(option.value) === String(value) ? 'selected' : ''} key={option.value} onClick={() => onChange(option.value)}><span>{option.plainLabel}</span><small>{levelName(option.educationLevel)}</small>{String(option.value) === String(value) && <Check />}</button>)}
        </div>
      </div>
      <p className="lesson-grade-note"><BookOpen /> El grado <strong>{gradeLabel}</strong> se conserva; se obtiene de la clave curricular de la lección.</p>
    </section>
  );
}
