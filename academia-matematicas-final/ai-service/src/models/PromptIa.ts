import { DataTypes, Model } from 'sequelize';
import database from '#config/database';

export default class PromptIa extends Model {}

PromptIa.init({
  "id": { type: DataTypes.BIGINT.UNSIGNED, allowNull: false, primaryKey: true, autoIncrement: true },
  "clave": { type: DataTypes.STRING(100), allowNull: false },
  "nombre": { type: DataTypes.STRING(160), allowNull: false },
  "proposito": { type: DataTypes.ENUM("tutor", "generacion_ejercicios", "explicacion", "evaluacion"), allowNull: false },
  "contenido": { type: DataTypes.TEXT('long'), allowNull: false },
  "activo": { type: DataTypes.BOOLEAN, allowNull: false, defaultValue: 1 },
  "creado_en": { type: DataTypes.DATE, allowNull: false, defaultValue: DataTypes.NOW },
  "actualizado_en": { type: DataTypes.DATE, allowNull: false, defaultValue: DataTypes.NOW },
}, {
  sequelize: database,
  modelName: "PromptIa",
  tableName: "ia_prompts",
  timestamps: false,
  freezeTableName: true,
});
