import { DataTypes, Model } from 'sequelize';
import database from '#config/database';

export default class SeccionLeccion extends Model {}

SeccionLeccion.init({
  "id": { type: DataTypes.BIGINT.UNSIGNED, allowNull: false, primaryKey: true, autoIncrement: true },
  "lesson_id": { type: DataTypes.BIGINT.UNSIGNED, allowNull: false },
  "parent_section_id": { type: DataTypes.BIGINT.UNSIGNED, allowNull: true },
  "section_type": { type: DataTypes.ENUM("presentation", "video", "example", "activity", "evaluation", "exam", "mini", "html", "pptx", "document"), allowNull: false },
  "title": { type: DataTypes.STRING(180), allowNull: false },
  "body_html": { type: DataTypes.TEXT('medium'), allowNull: true },
  "ai_prompt": { type: DataTypes.TEXT, allowNull: true },
  "ai_exercises_enabled": { type: DataTypes.BOOLEAN, allowNull: false, defaultValue: 0 },
  "ai_exercise_type": { type: DataTypes.STRING(40), allowNull: false, defaultValue: 'generic' },
  "ai_difficulty": { type: DataTypes.STRING(20), allowNull: false, defaultValue: 'Básica' },
  "ai_exercise_count": { type: DataTypes.INTEGER.UNSIGNED, allowNull: false, defaultValue: 10 },
  "media_id": { type: DataTypes.BIGINT.UNSIGNED, allowNull: true },
  "duration_minutes": { type: DataTypes.INTEGER.UNSIGNED, allowNull: false, defaultValue: 0 },
  "sort_order": { type: DataTypes.INTEGER, allowNull: false, defaultValue: 0 },
  "published": { type: DataTypes.BOOLEAN, allowNull: false, defaultValue: 1 },
  "created_at": { type: DataTypes.DATE, allowNull: false, defaultValue: DataTypes.NOW },
  "updated_at": { type: DataTypes.DATE, allowNull: false, defaultValue: DataTypes.NOW },
}, {
  sequelize: database,
  modelName: "SeccionLeccion",
  tableName: "aprendizaje_secciones_leccion",
  timestamps: false,
  freezeTableName: true,
});
