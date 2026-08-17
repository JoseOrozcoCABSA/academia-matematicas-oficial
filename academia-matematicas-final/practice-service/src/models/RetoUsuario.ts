import { DataTypes, Model } from 'sequelize';
import database from '#config/database';

export default class RetoUsuario extends Model {}

RetoUsuario.init({
  "id": { type: DataTypes.BIGINT.UNSIGNED, allowNull: false, primaryKey: true, autoIncrement: true },
  "user_id": { type: DataTypes.BIGINT.UNSIGNED, allowNull: false },
  "challenge_id": { type: DataTypes.BIGINT.UNSIGNED, allowNull: false },
  "progress_count": { type: DataTypes.INTEGER.UNSIGNED, allowNull: false, defaultValue: 0 },
  "completed": { type: DataTypes.BOOLEAN, allowNull: false, defaultValue: 0 },
  "completed_at": { type: DataTypes.DATE, allowNull: true },
  "updated_at": { type: DataTypes.DATE, allowNull: false, defaultValue: DataTypes.NOW },
}, {
  sequelize: database,
  modelName: "RetoUsuario",
  tableName: "practica_retos_usuario",
  timestamps: false,
  freezeTableName: true,
});
