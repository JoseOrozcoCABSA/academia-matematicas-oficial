ALTER TABLE `aprendizaje_secciones_leccion`
  ADD COLUMN `ai_exercise_type` varchar(40) NOT NULL DEFAULT 'generic' AFTER `ai_exercises_enabled`,
  ADD COLUMN `ai_difficulty` varchar(20) NOT NULL DEFAULT 'Básica' AFTER `ai_exercise_type`,
  ADD COLUMN `ai_exercise_count` int unsigned NOT NULL DEFAULT 10 AFTER `ai_difficulty`;
