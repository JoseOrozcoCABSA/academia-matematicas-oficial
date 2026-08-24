import { DataTypes, Model } from 'sequelize';
import database from '#config/database';

export default class IntentoEjercicio extends Model {}

IntentoEjercicio.init({
  "id": { type: DataTypes.BIGINT.UNSIGNED, allowNull: false, primaryKey: true, autoIncrement: true },
  "user_id": { type: DataTypes.BIGINT.UNSIGNED, allowNull: false },
  "section_id": { type: DataTypes.BIGINT.UNSIGNED, allowNull: false },
  "answers": { type: DataTypes.TEXT, allowNull: false },
  "score_percent": { type: DataTypes.TINYINT.UNSIGNED, allowNull: false, defaultValue: 0 },
  "attempted_at": { type: DataTypes.DATE, allowNull: false, defaultValue: DataTypes.NOW },
}, {
  sequelize: database,
  modelName: "IntentoEjercicio",
  tableName: "practica_intentos_ejercicio",
  timestamps: false,
  freezeTableName: true,
});
