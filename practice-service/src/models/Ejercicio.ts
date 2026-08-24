import { DataTypes, Model } from 'sequelize';
import database from '#config/database';

export default class Ejercicio extends Model {}

Ejercicio.init({
  "id": { type: DataTypes.BIGINT.UNSIGNED, allowNull: false, primaryKey: true, autoIncrement: true },
  "section_id": { type: DataTypes.BIGINT.UNSIGNED, allowNull: false },
  "json_data": { type: DataTypes.TEXT('medium'), allowNull: false },
  "ai_model": { type: DataTypes.STRING(100), allowNull: true },
  "generated_at": { type: DataTypes.DATE, allowNull: false, defaultValue: DataTypes.NOW },
  "updated_at": { type: DataTypes.DATE, allowNull: false, defaultValue: DataTypes.NOW },
}, {
  sequelize: database,
  modelName: "Ejercicio",
  tableName: "practica_ejercicios",
  timestamps: false,
  freezeTableName: true,
});
