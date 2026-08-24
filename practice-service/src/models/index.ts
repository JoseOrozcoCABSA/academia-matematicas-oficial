import type { Model, ModelStatic } from 'sequelize';
import Ejercicio from '#models/Ejercicio';
import IntentoEjercicio from '#models/IntentoEjercicio';
import ProgresoUsuario from '#models/ProgresoUsuario';
import Reto from '#models/Reto';
import RetoUsuario from '#models/RetoUsuario';
import Juego from '#models/Juego';

Reto.hasMany(RetoUsuario, { foreignKey: 'challenge_id', as: 'participants' });
RetoUsuario.belongsTo(Reto, { foreignKey: 'challenge_id', as: 'challenge' });

export interface ResourceDefinition {
  model: ModelStatic<Model>;
  tableName: string;
  tableType: 'BASE TABLE' | 'VIEW';
  primaryKeys: string[];
}

export type ResourceRegistry = Record<string, ResourceDefinition>;

const resources: ResourceRegistry = {
  "practica_juegos": { model: Juego, tableName: "practica_juegos", tableType: 'BASE TABLE', primaryKeys: ["id"] },
  "practica_ejercicios": { model: Ejercicio, tableName: "practica_ejercicios", tableType: 'BASE TABLE', primaryKeys: ["id"] },
  "practica_intentos_ejercicio": { model: IntentoEjercicio, tableName: "practica_intentos_ejercicio", tableType: 'BASE TABLE', primaryKeys: ["id"] },
  "practica_progreso_usuario": { model: ProgresoUsuario, tableName: "practica_progreso_usuario", tableType: 'BASE TABLE', primaryKeys: ["id"] },
  "practica_retos": { model: Reto, tableName: "practica_retos", tableType: 'BASE TABLE', primaryKeys: ["id"] },
  "practica_retos_usuario": { model: RetoUsuario, tableName: "practica_retos_usuario", tableType: 'BASE TABLE', primaryKeys: ["id"] },
};

export default resources;
