import { DataTypes, Model } from 'sequelize';
import database from '#config/database';

export default class Reto extends Model {}

Reto.init({
  "id": { type: DataTypes.BIGINT.UNSIGNED, allowNull: false, primaryKey: true, autoIncrement: true },
  "title": { type: DataTypes.STRING(180), allowNull: false },
  "description": { type: DataTypes.TEXT, allowNull: true },
  "lesson_id": { type: DataTypes.BIGINT.UNSIGNED, allowNull: true },
  "challenge_type": { type: DataTypes.ENUM("complete_lessons", "complete_sections", "score_exercises"), allowNull: false, defaultValue: "complete_lessons" },
  "target_actions": { type: DataTypes.INTEGER.UNSIGNED, allowNull: false, defaultValue: 1 },
  "icon": { type: DataTypes.STRING(50), allowNull: false, defaultValue: "?" },
  "color": { type: DataTypes.STRING(30), allowNull: false, defaultValue: "purple" },
  "start_date": { type: DataTypes.DATEONLY, allowNull: true },
  "end_date": { type: DataTypes.DATEONLY, allowNull: true },
  "active": { type: DataTypes.BOOLEAN, allowNull: false, defaultValue: 1 },
  "created_at": { type: DataTypes.DATE, allowNull: false, defaultValue: DataTypes.NOW },
  "updated_at": { type: DataTypes.DATE, allowNull: false, defaultValue: DataTypes.NOW },
}, {
  sequelize: database,
  modelName: "Reto",
  tableName: "practica_retos",
  timestamps: false,
  freezeTableName: true,
});
