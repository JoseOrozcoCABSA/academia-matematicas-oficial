import { DataTypes, Model } from 'sequelize';
import database from '#config/database';

export default class ConversacionIa extends Model {}

ConversacionIa.init({
  "id": { type: DataTypes.CHAR(36), allowNull: false, primaryKey: true },
  "usuario_id": { type: DataTypes.BIGINT.UNSIGNED, allowNull: true },
  "leccion_id": { type: DataTypes.BIGINT.UNSIGNED, allowNull: true },
  "titulo": { type: DataTypes.STRING(255), allowNull: true },
  "estado": { type: DataTypes.ENUM("activa", "cerrada"), allowNull: false, defaultValue: "activa" },
  "creado_en": { type: DataTypes.DATE, allowNull: false, defaultValue: DataTypes.NOW },
  "actualizado_en": { type: DataTypes.DATE, allowNull: false, defaultValue: DataTypes.NOW },
}, {
  sequelize: database,
  modelName: "ConversacionIa",
  tableName: "ia_conversaciones",
  timestamps: false,
  freezeTableName: true,
});
