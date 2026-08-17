import type { Model, ModelStatic } from 'sequelize';
import Categoria from '#models/Categoria';
import ConfiguracionSitio from '#models/ConfiguracionSitio';
import Leccion from '#models/Leccion';
import Medio from '#models/Medio';
import MedioLeccion from '#models/MedioLeccion';
import NivelEducativo from '#models/NivelEducativo';
import Recurso from '#models/Recurso';
import SeccionLeccion from '#models/SeccionLeccion';

// Relaciones del dominio. Se declaran una sola vez en el registro de modelos
// para que los repositorios puedan usar `include` sin duplicar configuraciÃ³n.
Categoria.hasMany(Leccion, { foreignKey: 'category_id', as: 'lessons' });
Leccion.belongsTo(Categoria, { foreignKey: 'category_id', as: 'category' });
Leccion.hasMany(SeccionLeccion, { foreignKey: 'lesson_id', as: 'sections' });
SeccionLeccion.belongsTo(Leccion, { foreignKey: 'lesson_id', as: 'lesson' });
SeccionLeccion.hasMany(SeccionLeccion, { foreignKey: 'parent_section_id', as: 'children' });
SeccionLeccion.belongsTo(SeccionLeccion, { foreignKey: 'parent_section_id', as: 'parent' });
Leccion.hasMany(Recurso, { foreignKey: 'lesson_id', as: 'resources' });
Recurso.belongsTo(Leccion, { foreignKey: 'lesson_id', as: 'lesson' });
Leccion.hasMany(MedioLeccion, { foreignKey: 'lesson_id', as: 'mediaLinks' });
MedioLeccion.belongsTo(Leccion, { foreignKey: 'lesson_id', as: 'lesson' });
Medio.hasMany(MedioLeccion, { foreignKey: 'media_id', as: 'lessonLinks' });
MedioLeccion.belongsTo(Medio, { foreignKey: 'media_id', as: 'media' });
Leccion.belongsTo(Medio, { foreignKey: 'hero_media_id', as: 'heroMedia', constraints: false });
SeccionLeccion.belongsTo(Medio, { foreignKey: 'media_id', as: 'media', constraints: false });

export interface ResourceDefinition {
  model: ModelStatic<Model>;
  tableName: string;
  tableType: 'BASE TABLE' | 'VIEW';
  primaryKeys: string[];
}

export type ResourceRegistry = Record<string, ResourceDefinition>;

const resources: ResourceRegistry = {
  "aprendizaje_categorias": { model: Categoria, tableName: "aprendizaje_categorias", tableType: 'BASE TABLE', primaryKeys: ["id"] },
  "aprendizaje_configuracion_sitio": { model: ConfiguracionSitio, tableName: "aprendizaje_configuracion_sitio", tableType: 'BASE TABLE', primaryKeys: ["setting_key"] },
  "aprendizaje_lecciones": { model: Leccion, tableName: "aprendizaje_lecciones", tableType: 'BASE TABLE', primaryKeys: ["id"] },
  "aprendizaje_medios": { model: Medio, tableName: "aprendizaje_medios", tableType: 'BASE TABLE', primaryKeys: ["id"] },
  "aprendizaje_medios_leccion": { model: MedioLeccion, tableName: "aprendizaje_medios_leccion", tableType: 'BASE TABLE', primaryKeys: ["lesson_id","media_id","placement"] },
  "aprendizaje_niveles_educativos": { model: NivelEducativo, tableName: "aprendizaje_niveles_educativos", tableType: 'BASE TABLE', primaryKeys: ["slug"] },
  "aprendizaje_recursos": { model: Recurso, tableName: "aprendizaje_recursos", tableType: 'BASE TABLE', primaryKeys: ["id"] },
  "aprendizaje_secciones_leccion": { model: SeccionLeccion, tableName: "aprendizaje_secciones_leccion", tableType: 'BASE TABLE', primaryKeys: ["id"] },
};

export default resources;
