USE `academia-matematicas-soa`;

-- Décimo tipo de contenido disponible dentro de las pestañas de una lección.
ALTER TABLE `aprendizaje_secciones_leccion`
  MODIFY COLUMN `section_type`
  ENUM('presentation','video','example','activity','evaluation','exam','mini','html','pptx','document')
  NOT NULL;
