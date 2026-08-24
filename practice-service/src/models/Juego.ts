import { DataTypes, Model } from 'sequelize';
import database from '#config/database';

export default class Juego extends Model {}

Juego.init({
  id: { type: DataTypes.BIGINT.UNSIGNED, allowNull: false, primaryKey: true, autoIncrement: true },
  slug: { type: DataTypes.STRING(140), allowNull: false, unique: true },
  title: { type: DataTypes.STRING(180), allowNull: false },
  description: { type: DataTypes.TEXT, allowNull: true },
  instructions: { type: DataTypes.TEXT, allowNull: true },
  config_json: { type: DataTypes.TEXT('medium'), allowNull: false },
  theme_color: { type: DataTypes.STRING(30), allowNull: false, defaultValue: '#8f1d2c' },
  active: { type: DataTypes.BOOLEAN, allowNull: false, defaultValue: true },
  created_at: { type: DataTypes.DATE, allowNull: false, defaultValue: DataTypes.NOW },
  updated_at: { type: DataTypes.DATE, allowNull: false, defaultValue: DataTypes.NOW },
}, {
  sequelize: database,
  modelName: 'Juego',
  tableName: 'practica_juegos',
  timestamps: false,
  freezeTableName: true,
});
