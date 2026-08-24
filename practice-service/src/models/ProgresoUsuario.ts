import { DataTypes, Model } from 'sequelize';
import database from '#config/database';

export default class ProgresoUsuario extends Model {}

ProgresoUsuario.init({
  "id": { type: DataTypes.BIGINT.UNSIGNED, allowNull: false, primaryKey: true, autoIncrement: true },
  "user_id": { type: DataTypes.BIGINT.UNSIGNED, allowNull: false },
  "lesson_id": { type: DataTypes.BIGINT.UNSIGNED, allowNull: false },
  "progress_percent": { type: DataTypes.TINYINT.UNSIGNED, allowNull: false, defaultValue: 0 },
  "status": { type: DataTypes.ENUM("not_started", "in_progress", "completed"), allowNull: false, defaultValue: "not_started" },
  "completed_sections": { type: DataTypes.JSON, allowNull: true },
  "last_accessed_at": { type: DataTypes.DATE, allowNull: true },
  "updated_at": { type: DataTypes.DATE, allowNull: false, defaultValue: DataTypes.NOW },
}, {
  sequelize: database,
  modelName: "ProgresoUsuario",
  tableName: "practica_progreso_usuario",
  timestamps: false,
  freezeTableName: true,
});
