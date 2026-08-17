import { DataTypes, Model } from 'sequelize';
import database from '#config/database';

export default class Medio extends Model {}

Medio.init({
  "id": { type: DataTypes.BIGINT.UNSIGNED, allowNull: false, primaryKey: true, autoIncrement: true },
  "title": { type: DataTypes.STRING(180), allowNull: false },
  "media_type": { type: DataTypes.ENUM("image", "video", "document", "external"), allowNull: false },
  "file_path": { type: DataTypes.STRING(500), allowNull: true },
  "thumbnail_path": { type: DataTypes.STRING(500), allowNull: true },
  "external_url": { type: DataTypes.STRING(1000), allowNull: true },
  "alt_text": { type: DataTypes.STRING(255), allowNull: true },
  "upload_context": { type: DataTypes.ENUM("general", "icon", "hero", "content", "gallery", "svg", "wordpress"), allowNull: false, defaultValue: "general" },
  "wp_attachment_id": { type: DataTypes.INTEGER.UNSIGNED, allowNull: true },
  "width": { type: DataTypes.SMALLINT.UNSIGNED, allowNull: true },
  "height": { type: DataTypes.SMALLINT.UNSIGNED, allowNull: true },
  "file_size": { type: DataTypes.INTEGER.UNSIGNED, allowNull: true },
  "created_at": { type: DataTypes.DATE, allowNull: false, defaultValue: DataTypes.NOW },
}, {
  sequelize: database,
  modelName: "Medio",
  tableName: "aprendizaje_medios",
  timestamps: false,
  freezeTableName: true,
});
