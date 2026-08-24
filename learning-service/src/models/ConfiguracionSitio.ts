import { DataTypes, Model } from 'sequelize';
import database from '#config/database';

export default class ConfiguracionSitio extends Model {}

ConfiguracionSitio.init({
  "setting_key": { type: DataTypes.STRING(120), allowNull: false, primaryKey: true },
  "setting_value": { type: DataTypes.TEXT, allowNull: true },
  "updated_at": { type: DataTypes.DATE, allowNull: false, defaultValue: DataTypes.NOW },
}, {
  sequelize: database,
  modelName: "ConfiguracionSitio",
  tableName: "aprendizaje_configuracion_sitio",
  timestamps: false,
  freezeTableName: true,
});
