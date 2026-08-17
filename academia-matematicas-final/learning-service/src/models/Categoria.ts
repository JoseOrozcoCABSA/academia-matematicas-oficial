import { DataTypes, Model } from 'sequelize';
import database from '#config/database';

export default class Categoria extends Model {}

Categoria.init({
  "id": { type: DataTypes.BIGINT.UNSIGNED, allowNull: false, primaryKey: true, autoIncrement: true },
  "name": { type: DataTypes.STRING(120), allowNull: false },
  "slug": { type: DataTypes.STRING(140), allowNull: false },
  "description": { type: DataTypes.TEXT, allowNull: true },
  "education_level": { type: DataTypes.ENUM("primaria", "secundaria", "preparatoria"), allowNull: false, defaultValue: "primaria" },
  "icon": { type: DataTypes.STRING(50), allowNull: true },
  "color": { type: DataTypes.STRING(30), allowNull: false, defaultValue: "purple" },
  "sort_order": { type: DataTypes.INTEGER, allowNull: false, defaultValue: 0 },
  "active": { type: DataTypes.BOOLEAN, allowNull: false, defaultValue: 1 },
  "created_at": { type: DataTypes.DATE, allowNull: false, defaultValue: DataTypes.NOW },
  "updated_at": { type: DataTypes.DATE, allowNull: false, defaultValue: DataTypes.NOW },
}, {
  sequelize: database,
  modelName: "Categoria",
  tableName: "aprendizaje_categorias",
  timestamps: false,
  freezeTableName: true,
});
