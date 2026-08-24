import type { Model, ModelStatic } from 'sequelize';
import Usuario from '#models/Usuario';

export interface ResourceDefinition {
  model: ModelStatic<Model>;
  tableName: string;
  tableType: 'BASE TABLE' | 'VIEW';
  primaryKeys: string[];
}

export type ResourceRegistry = Record<string, ResourceDefinition>;

const resources: ResourceRegistry = {
  "identidad_usuarios": { model: Usuario, tableName: "identidad_usuarios", tableType: 'BASE TABLE', primaryKeys: ["id"] },
};

export default resources;
