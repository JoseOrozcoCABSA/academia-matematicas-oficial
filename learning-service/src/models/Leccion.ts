import { DataTypes, Model } from 'sequelize';
import database from '#config/database';

export default class Leccion extends Model {}

Leccion.init({
  "id": { type: DataTypes.BIGINT.UNSIGNED, allowNull: false, primaryKey: true, autoIncrement: true },
  "category_id": { type: DataTypes.BIGINT.UNSIGNED, allowNull: false },
  "title": { type: DataTypes.STRING(180), allowNull: false },
  "slug": { type: DataTypes.STRING(190), allowNull: false },
  "summary": { type: DataTypes.TEXT, allowNull: true },
  "page_type": { type: DataTypes.ENUM("topic", "path"), allowNull: false, defaultValue: "topic" },
  "icon": { type: DataTypes.STRING(50), allowNull: true },
  "icon_type": { type: DataTypes.ENUM("emoji", "image", "svg"), allowNull: false, defaultValue: "emoji" },
  "icon_file": { type: DataTypes.STRING(500), allowNull: true },
  "hero_expression": { type: DataTypes.STRING(150), allowNull: true },
  "hero_media_id": { type: DataTypes.BIGINT.UNSIGNED, allowNull: true },
  "difficulty": { type: DataTypes.STRING(40), allowNull: false, defaultValue: "Básica" },
  "duration_minutes": { type: DataTypes.INTEGER.UNSIGNED, allowNull: false, defaultValue: 0 },
  "sort_order": { type: DataTypes.INTEGER, allowNull: false, defaultValue: 0 },
  "quick_lesson_order": { type: DataTypes.INTEGER.UNSIGNED, allowNull: true },
  "published": { type: DataTypes.BOOLEAN, allowNull: false, defaultValue: 0 },
  "created_at": { type: DataTypes.DATE, allowNull: false, defaultValue: DataTypes.NOW },
  "updated_at": { type: DataTypes.DATE, allowNull: false, defaultValue: DataTypes.NOW },
}, {
  sequelize: database,
  modelName: "Leccion",
  tableName: "aprendizaje_lecciones",
  timestamps: false,
  freezeTableName: true,
});
