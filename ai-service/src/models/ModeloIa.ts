import { DataTypes, Model } from 'sequelize';
import database from '#config/database';

export default class ModeloIa extends Model {}

ModeloIa.init({
  "id": { type: DataTypes.BIGINT.UNSIGNED, allowNull: false, primaryKey: true, autoIncrement: true },
  "nombre": { type: DataTypes.STRING(120), allowNull: false },
  "proveedor": { type: DataTypes.STRING(80), allowNull: false },
  "modelo": { type: DataTypes.STRING(160), allowNull: false },
  "url_base": { type: DataTypes.STRING(500), allowNull: true },
  "activo": { type: DataTypes.BOOLEAN, allowNull: false, defaultValue: 1 },
  "configuracion": { type: DataTypes.JSON, allowNull: true },
  "creado_en": { type: DataTypes.DATE, allowNull: false, defaultValue: DataTypes.NOW },
  "actualizado_en": { type: DataTypes.DATE, allowNull: false, defaultValue: DataTypes.NOW },
}, {
  sequelize: database,
  modelName: "ModeloIa",
  tableName: "ia_modelos",
  timestamps: false,
  freezeTableName: true,
});
