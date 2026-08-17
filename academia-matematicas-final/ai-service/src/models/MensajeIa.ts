import { DataTypes, Model } from 'sequelize';
import database from '#config/database';

export default class MensajeIa extends Model {}

MensajeIa.init({
  "id": { type: DataTypes.BIGINT.UNSIGNED, allowNull: false, primaryKey: true, autoIncrement: true },
  "conversacion_id": { type: DataTypes.CHAR(36), allowNull: false },
  "rol": { type: DataTypes.ENUM("system", "user", "assistant"), allowNull: false },
  "contenido": { type: DataTypes.TEXT('long'), allowNull: false },
  "tokens": { type: DataTypes.INTEGER.UNSIGNED, allowNull: true },
  "creado_en": { type: DataTypes.DATE, allowNull: false, defaultValue: DataTypes.NOW },
}, {
  sequelize: database,
  modelName: "MensajeIa",
  tableName: "ia_mensajes",
  timestamps: false,
  freezeTableName: true,
});
