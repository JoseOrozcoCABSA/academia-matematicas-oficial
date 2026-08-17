export const LABELS = {
  id: 'ID', name: 'Nombre', nombre: 'Nombre', title: 'Título', titulo: 'Título', slug: 'Slug',
  description: 'Descripción', summary: 'Resumen', education_level: 'Nivel educativo', icon: 'Icono',
  color: 'Color', sort_order: 'Orden', active: 'Activo', published: 'Publicado', category_id: 'Área',
  lesson_id: 'Pertenece a la lección', parent_section_id: 'Sublección de (opcional)', section_type: 'Tipo de contenido',
  body_html: 'Contenido HTML y LaTeX', ai_prompt: 'Instrucción para IA', ai_exercises_enabled: 'Ejercicios con IA',
  media_id: 'Medio', duration_minutes: 'Duración (minutos)', page_type: 'Tipo de página', icon_type: 'Tipo de icono',
  icon_file: 'Archivo de icono', hero_expression: 'Expresión principal', hero_media_id: 'Imagen principal',
  difficulty: 'Dificultad', media_type: 'Tipo de medio', file_path: 'Ruta del archivo', thumbnail_path: 'Miniatura',
  external_url: 'URL externa', alt_text: 'Texto alternativo', upload_context: 'Contexto', file_size: 'Tamaño',
  resource_type: 'Tipo de recurso', url: 'URL', challenge_type: 'Tipo de reto', target_actions: 'Objetivo',
  start_date: 'Fecha inicial', end_date: 'Fecha final', role: 'Rol', email: 'Correo electrónico',
  password: 'Contraseña temporal', placement: 'Ubicación', section_id: 'Sección', ai_model: 'Modelo IA',
  usuario_id: 'Usuario', leccion_id: 'Lección', seccion_id: 'Sección', conversacion_id: 'Conversación',
  rol: 'Rol del mensaje', tokens: 'Tokens', tipo: 'Tipo',
  user_id: 'Alumno', progress_percent: 'Progreso', status: 'Estado', completed_sections: 'Secciones completadas',
  last_accessed_at: 'Último acceso', score_percent: 'Puntaje', attempted_at: 'Fecha del intento',
  setting_key: 'Ajuste', setting_value: 'Valor', proveedor: 'Proveedor', modelo: 'Modelo', url_base: 'URL base',
  activo: 'Activo', configuracion: 'Configuración', clave: 'Clave', proposito: 'Propósito', contenido: 'Contenido',
  instructions: 'Instrucciones', config_json: 'Configuración del juego', theme_color: 'Color del juego',
};

export const SYSTEM_FIELDS = new Set(['created_at', 'updated_at', 'creado_en', 'actualizado_en', 'generated_at', 'password_hash', 'wp_attachment_id']);
export const BOOLEAN_FIELDS = new Set(['active', 'published', 'ai_exercises_enabled', 'activo', 'completed']);
export const NUMBER_FIELDS = new Set(['id', 'category_id', 'lesson_id', 'parent_section_id', 'media_id', 'hero_media_id', 'section_id', 'sort_order', 'duration_minutes', 'target_actions', 'user_id', 'usuario_id', 'leccion_id', 'seccion_id', 'challenge_id', 'progress_count', 'progress_percent', 'score_percent', 'tokens', 'width', 'height', 'file_size']);
export const LONG_FIELDS = new Set(['description', 'summary', 'body_html', 'ai_prompt', 'json_data', 'answers', 'completed_sections', 'setting_value', 'configuracion', 'contenido', 'instructions', 'config_json', 'entrada', 'resultado', 'error']);
export const JSON_FIELDS = new Set(['json_data', 'answers', 'completed_sections', 'configuracion', 'config_json', 'entrada', 'resultado']);
export const SELECTS = {
  education_level: ['primaria', 'secundaria', 'preparatoria'],
  color: ['purple', 'blue', 'green', 'orange', 'teal', 'yellow'],
  role: ['student', 'editor', 'admin'],
  page_type: ['topic', 'path'],
  icon_type: ['emoji', 'image', 'svg'],
  section_type: ['presentation', 'video', 'example', 'activity', 'evaluation', 'exam', 'mini', 'html', 'pptx'],
  media_type: ['image', 'video', 'document', 'external'],
  upload_context: ['content', 'icon', 'hero', 'gallery', 'general', 'svg', 'wordpress'],
  resource_type: ['pdf', 'link', 'video', 'image', 'download', 'interactive'],
  challenge_type: ['complete_lessons', 'complete_sections', 'score_exercises'],
  proveedor: ['openai', 'ollama'],
  status: ['not_started', 'in_progress', 'completed'],
  estado: ['activa', 'cerrada', 'pendiente', 'completada', 'error'],
  proposito: ['tutor', 'generacion_ejercicios', 'explicacion', 'evaluacion'],
  rol: ['system', 'user', 'assistant'],
  tipo: ['actividad', 'evaluacion', 'explicacion'],
};

export const OPTION_LABELS = {
  topic: 'Tema con pestañas', path: 'Ruta paso a paso',
  presentation: 'Presentación / introducción', video: 'Video', example: 'Ejemplo resuelto',
  activity: 'Actividad práctica', evaluation: 'Evaluación corta', exam: 'Examen',
  mini: 'Contenido breve', html: 'Lectura / contenido HTML', pptx: 'Presentación PowerPoint',
};

export const FIELD_HELP = {
  category_id: 'Área matemática donde aparecerá esta lección principal.',
  lesson_id: 'Lección principal que contendrá esta sección o sublección.',
  parent_section_id: 'Déjalo como sección directa si cuelga de la lección. Selecciona una sección para convertir este contenido en su sublección.',
  page_type: '“Tema con pestañas” agrupa el contenido; “Ruta paso a paso” muestra las secciones en secuencia.',
  section_type: 'Define cómo se presenta y utiliza este contenido dentro de la lección.',
  sort_order: 'Determina la posición dentro de su mismo nivel de la jerarquía.',
};

export const RESOURCE_SELECTS = {
  ia_conversaciones: { estado: ['activa', 'cerrada'] },
  ia_generaciones: { estado: ['pendiente', 'completada', 'error'] },
};

export const LOOKUP_FIELDS = {
  category_id: { service: 'learning', resource: 'aprendizaje_categorias', value: 'id', text: 'name' },
  lesson_id: { service: 'learning', resource: 'aprendizaje_lecciones', value: 'id', text: 'title' },
  leccion_id: { service: 'learning', resource: 'aprendizaje_lecciones', value: 'id', text: 'title' },
  parent_section_id: { service: 'learning', resource: 'aprendizaje_secciones_leccion', value: 'id', text: 'title' },
  section_id: { service: 'learning', resource: 'aprendizaje_secciones_leccion', value: 'id', text: 'title' },
  seccion_id: { service: 'learning', resource: 'aprendizaje_secciones_leccion', value: 'id', text: 'title' },
  media_id: { service: 'learning', resource: 'aprendizaje_medios', value: 'id', text: 'title' },
  hero_media_id: { service: 'learning', resource: 'aprendizaje_medios', value: 'id', text: 'title' },
  user_id: { service: 'identity', resource: 'identidad_usuarios', value: 'id', text: 'name' },
  usuario_id: { service: 'identity', resource: 'identidad_usuarios', value: 'id', text: 'name' },
  challenge_id: { service: 'practice', resource: 'practica_retos', value: 'id', text: 'title' },
  conversacion_id: { service: 'ai', resource: 'ia_conversaciones', value: 'id', text: 'titulo' },
};

export const label = (key) => LABELS[key] ?? String(key).replace(/^(aprendizaje|practica|identidad|ia)_/, '').replaceAll('_', ' ').replace(/\b\w/g, (letter) => letter.toUpperCase());

