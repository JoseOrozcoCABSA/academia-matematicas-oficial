import { DataTypes, Model } from 'sequelize';
import database from '#config/database';

export default class Usuario extends Model {}

Usuario.init({
  "id": { type: DataTypes.BIGINT.UNSIGNED, allowNull: false, primaryKey: true, autoIncrement: true },
  "name": { type: DataTypes.STRING(120), allowNull: false },
  "email": { type: DataTypes.STRING(190), allowNull: false },
  "password_hash": { type: DataTypes.STRING(255), allowNull: false },
  "role": { type: DataTypes.ENUM("student", "admin", "editor"), allowNull: false, defaultValue: "student" },
  "active": { type: DataTypes.BOOLEAN, allowNull: false, defaultValue: 1 },
  "created_at": { type: DataTypes.DATE, allowNull: false, defaultValue: DataTypes.NOW },
  "updated_at": { type: DataTypes.DATE, allowNull: false, defaultValue: DataTypes.NOW },
}, {
  sequelize: database,
  modelName: "Usuario",
  tableName: "identidad_usuarios",
  timestamps: false,
  freezeTableName: true,
});
