import type { Model, ModelStatic } from 'sequelize';
import ConversacionIa from '#models/ConversacionIa';
import GeneracionIa from '#models/GeneracionIa';
import MensajeIa from '#models/MensajeIa';
import ModeloIa from '#models/ModeloIa';
import PromptIa from '#models/PromptIa';

ConversacionIa.hasMany(MensajeIa, { foreignKey: 'conversacion_id', as: 'messages' });
MensajeIa.belongsTo(ConversacionIa, { foreignKey: 'conversacion_id', as: 'conversation' });

export interface ResourceDefinition {
  model: ModelStatic<Model>;
  tableName: string;
  tableType: 'BASE TABLE' | 'VIEW';
  primaryKeys: string[];
}

export type ResourceRegistry = Record<string, ResourceDefinition>;

const resources: ResourceRegistry = {
  "ia_conversaciones": { model: ConversacionIa, tableName: "ia_conversaciones", tableType: 'BASE TABLE', primaryKeys: ["id"] },
  "ia_generaciones": { model: GeneracionIa, tableName: "ia_generaciones", tableType: 'BASE TABLE', primaryKeys: ["id"] },
  "ia_mensajes": { model: MensajeIa, tableName: "ia_mensajes", tableType: 'BASE TABLE', primaryKeys: ["id"] },
  "ia_modelos": { model: ModeloIa, tableName: "ia_modelos", tableType: 'BASE TABLE', primaryKeys: ["id"] },
  "ia_prompts": { model: PromptIa, tableName: "ia_prompts", tableType: 'BASE TABLE', primaryKeys: ["id"] },
};

export default resources;
