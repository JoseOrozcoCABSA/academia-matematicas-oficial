import { DataTypes, Model } from 'sequelize';
import database from '#config/database';

export default class MedioLeccion extends Model {}

MedioLeccion.init({
  "lesson_id": { type: DataTypes.BIGINT.UNSIGNED, allowNull: false, primaryKey: true },
  "media_id": { type: DataTypes.BIGINT.UNSIGNED, allowNull: false, primaryKey: true },
  "placement": { type: DataTypes.STRING(50), allowNull: false, primaryKey: true, defaultValue: "content" },
  "sort_order": { type: DataTypes.INTEGER, allowNull: false, defaultValue: 0 },
}, {
  sequelize: database,
  modelName: "MedioLeccion",
  tableName: "aprendizaje_medios_leccion",
  timestamps: false,
  freezeTableName: true,
});
