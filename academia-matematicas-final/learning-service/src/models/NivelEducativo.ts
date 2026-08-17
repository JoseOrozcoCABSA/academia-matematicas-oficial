import { DataTypes, Model } from 'sequelize';
import database from '#config/database';

export default class NivelEducativo extends Model {}

NivelEducativo.init({
  "slug": { type: DataTypes.STRING(60), allowNull: false, primaryKey: true },
  "name": { type: DataTypes.STRING(120), allowNull: false },
  "description": { type: DataTypes.TEXT, allowNull: true },
  "icon": { type: DataTypes.STRING(50), allowNull: true },
  "color": { type: DataTypes.STRING(30), allowNull: false, defaultValue: "purple" },
  "sort_order": { type: DataTypes.INTEGER, allowNull: false, defaultValue: 0 },
  "active": { type: DataTypes.BOOLEAN, allowNull: false, defaultValue: 1 },
  "created_at": { type: DataTypes.DATE, allowNull: false, defaultValue: DataTypes.NOW },
  "updated_at": { type: DataTypes.DATE, allowNull: false, defaultValue: DataTypes.NOW },
}, {
  sequelize: database,
  modelName: "NivelEducativo",
  tableName: "aprendizaje_niveles_educativos",
  timestamps: false,
  freezeTableName: true,
});
