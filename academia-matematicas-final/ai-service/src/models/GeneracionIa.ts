import { DataTypes, Model } from 'sequelize';
import database from '#config/database';

export default class GeneracionIa extends Model {}

GeneracionIa.init({
  "id": { type: DataTypes.BIGINT.UNSIGNED, allowNull: false, primaryKey: true, autoIncrement: true },
  "usuario_id": { type: DataTypes.BIGINT.UNSIGNED, allowNull: true },
  "leccion_id": { type: DataTypes.BIGINT.UNSIGNED, allowNull: true },
  "seccion_id": { type: DataTypes.BIGINT.UNSIGNED, allowNull: true },
  "tipo": { type: DataTypes.ENUM("actividad", "evaluacion", "explicacion"), allowNull: false },
  "modelo": { type: DataTypes.STRING(160), allowNull: true },
  "entrada": { type: DataTypes.JSON, allowNull: true },
  "resultado": { type: DataTypes.JSON, allowNull: true },
  "estado": { type: DataTypes.ENUM("pendiente", "completada", "error"), allowNull: false, defaultValue: "pendiente" },
  "error": { type: DataTypes.TEXT, allowNull: true },
  "creado_en": { type: DataTypes.DATE, allowNull: false, defaultValue: DataTypes.NOW },
}, {
  sequelize: database,
  modelName: "GeneracionIa",
  tableName: "ia_generaciones",
  timestamps: false,
  freezeTableName: true,
});
