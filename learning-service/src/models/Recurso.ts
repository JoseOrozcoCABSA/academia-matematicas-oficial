import { DataTypes, Model } from 'sequelize';
import database from '#config/database';

export default class Recurso extends Model {}

Recurso.init({
  "id": { type: DataTypes.BIGINT.UNSIGNED, allowNull: false, primaryKey: true, autoIncrement: true },
  "lesson_id": { type: DataTypes.BIGINT.UNSIGNED, allowNull: false },
  "title": { type: DataTypes.STRING(180), allowNull: false },
  "description": { type: DataTypes.TEXT, allowNull: true },
  "resource_type": { type: DataTypes.ENUM("pdf", "link", "video", "image", "download", "interactive"), allowNull: false, defaultValue: "link" },
  "url": { type: DataTypes.STRING(1000), allowNull: false },
  "sort_order": { type: DataTypes.INTEGER, allowNull: false, defaultValue: 0 },
  "published": { type: DataTypes.BOOLEAN, allowNull: false, defaultValue: 1 },
  "created_at": { type: DataTypes.DATE, allowNull: false, defaultValue: DataTypes.NOW },
}, {
  sequelize: database,
  modelName: "Recurso",
  tableName: "aprendizaje_recursos",
  timestamps: false,
  freezeTableName: true,
});
