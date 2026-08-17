import { createRequire } from 'node:module';
import { mkdir, readdir, unlink, writeFile } from 'node:fs/promises';
import { dirname, join } from 'node:path';
import { fileURLToPath } from 'node:url';

const projectRoot = dirname(dirname(fileURLToPath(import.meta.url)));
const requireFromService = createRequire(
  join(projectRoot, 'identity-service', 'package.json'),
);
const mysql = requireFromService('mysql2/promise');

const required = (name) => {
  const value = process.env[name]?.trim();
  if (!value) throw new Error(`Falta la variable obligatoria ${name}`);
  return value;
};

const databaseName = process.env.DB_NAME ?? 'academia-matematicas-soa';
const connection = await mysql.createConnection({
  host: process.env.DB_HOST ?? '127.0.0.1',
  port: Number(process.env.DB_PORT ?? 3306),
  user: required('DB_USER'),
  password: required('DB_PASSWORD'),
  database: databaseName,
});

const definitions = {
  'identity-service': {
    prefix: 'identidad_',
    models: {
      identidad_usuarios: 'Usuario',
    },
  },
  'learning-service': {
    prefix: 'aprendizaje_',
    models: {
      aprendizaje_categorias: 'Categoria',
      aprendizaje_configuracion_sitio: 'ConfiguracionSitio',
      aprendizaje_lecciones: 'Leccion',
      aprendizaje_medios: 'Medio',
      aprendizaje_medios_leccion: 'MedioLeccion',
      aprendizaje_niveles_educativos: 'NivelEducativo',
      aprendizaje_recursos: 'Recurso',
      aprendizaje_secciones_leccion: 'SeccionLeccion',
    },
  },
  'practice-service': {
    prefix: 'practica_',
    models: {
      practica_ejercicios: 'Ejercicio',
      practica_intentos_ejercicio: 'IntentoEjercicio',
      practica_progreso_usuario: 'ProgresoUsuario',
      practica_retos: 'Reto',
      practica_retos_usuario: 'RetoUsuario',
    },
  },
  'ai-service': {
    prefix: 'ia_',
    models: {
      ia_conversaciones: 'ConversacionIa',
      ia_generaciones: 'GeneracionIa',
      ia_mensajes: 'MensajeIa',
      ia_modelos: 'ModeloIa',
      ia_prompts: 'PromptIa',
    },
  },
};

const quote = (value) => JSON.stringify(value);

const sequelizeType = (columnType) => {
  const type = columnType.toLowerCase();
  const length = type.match(/\((\d+)\)/)?.[1];
  if (type.startsWith('enum(')) {
    const values = [...type.matchAll(/'((?:[^'\\]|\\.)*)'/g)]
      .map((match) => quote(match[1].replaceAll("\\'", "'")));
    return `DataTypes.ENUM(${values.join(', ')})`;
  }
  if (type === 'tinyint(1)') return 'DataTypes.BOOLEAN';
  if (type.startsWith('tinyint')) {
    return type.includes('unsigned') ? 'DataTypes.TINYINT.UNSIGNED' : 'DataTypes.TINYINT';
  }
  if (type.startsWith('smallint')) {
    return type.includes('unsigned') ? 'DataTypes.SMALLINT.UNSIGNED' : 'DataTypes.SMALLINT';
  }
  if (type.startsWith('bigint')) {
    return type.includes('unsigned') ? 'DataTypes.BIGINT.UNSIGNED' : 'DataTypes.BIGINT';
  }
  if (type.startsWith('int')) {
    return type.includes('unsigned') ? 'DataTypes.INTEGER.UNSIGNED' : 'DataTypes.INTEGER';
  }
  if (type.startsWith('decimal')) {
    const precision = type.match(/\((\d+),(\d+)\)/);
    return precision
      ? `DataTypes.DECIMAL(${precision[1]}, ${precision[2]})`
      : 'DataTypes.DECIMAL';
  }
  if (type.startsWith('varchar')) return `DataTypes.STRING(${length})`;
  if (type.startsWith('char')) return `DataTypes.CHAR(${length})`;
  if (type === 'mediumtext') return "DataTypes.TEXT('medium')";
  if (type === 'longtext') return "DataTypes.TEXT('long')";
  if (type.endsWith('text')) return 'DataTypes.TEXT';
  if (type === 'json') return 'DataTypes.JSON';
  if (type === 'date') return 'DataTypes.DATEONLY';
  if (type.includes('datetime') || type.includes('timestamp')) return 'DataTypes.DATE';
  if (type.startsWith('float')) return 'DataTypes.FLOAT';
  if (type.startsWith('double')) return 'DataTypes.DOUBLE';
  return 'DataTypes.STRING';
};

const defaultValue = (column) => {
  if (column.COLUMN_DEFAULT === null) return '';
  const value = String(column.COLUMN_DEFAULT);
  if (value.toUpperCase().includes('CURRENT_TIMESTAMP')) {
    return ', defaultValue: DataTypes.NOW';
  }
  if (/^-?\d+(?:\.\d+)?$/.test(value)) return `, defaultValue: ${value}`;
  return `, defaultValue: ${quote(value)}`;
};

for (const [service, definition] of Object.entries(definitions)) {
  const modelsDirectory = join(projectRoot, service, 'src', 'models');
  await mkdir(modelsDirectory, { recursive: true });

  for (const file of await readdir(modelsDirectory)) {
    if (file.endsWith('.ts')) {
      await unlink(join(modelsDirectory, file));
    }
  }

  const imports = [];
  const resources = [];
  const schemaCatalog = [];

  for (const [tableName, className] of Object.entries(definition.models)) {
    if (!tableName.startsWith(definition.prefix)) {
      throw new Error(`${tableName} no corresponde al prefijo ${definition.prefix}`);
    }

    const [columns] = await connection.execute(
      `SELECT COLUMN_NAME, COLUMN_TYPE, IS_NULLABLE, COLUMN_KEY, EXTRA, COLUMN_DEFAULT
       FROM information_schema.columns
       WHERE table_schema = ? AND table_name = ?
       ORDER BY ORDINAL_POSITION`,
      [databaseName, tableName],
    );
    if (!columns.length) throw new Error(`No existe la tabla ${tableName}`);

    const attributes = columns.map((column) => {
      const options = [
        `type: ${sequelizeType(column.COLUMN_TYPE)}`,
        `allowNull: ${column.IS_NULLABLE === 'YES'}`,
      ];
      if (column.COLUMN_KEY === 'PRI') options.push('primaryKey: true');
      if (String(column.EXTRA).includes('auto_increment')) options.push('autoIncrement: true');
      return `  ${quote(column.COLUMN_NAME)}: { ${options.join(', ')}${defaultValue(column)} },`;
    }).join('\n');

    const modelSource = `import { DataTypes, Model } from 'sequelize';
import database from '#config/database';

export default class ${className} extends Model {}

${className}.init({
${attributes}
}, {
  sequelize: database,
  modelName: ${quote(className)},
  tableName: ${quote(tableName)},
  timestamps: false,
  freezeTableName: true,
});
`;
    await writeFile(join(modelsDirectory, `${className}.ts`), modelSource, 'utf8');

    const primaryKeys = columns
      .filter((column) => column.COLUMN_KEY === 'PRI')
      .map((column) => column.COLUMN_NAME);
    imports.push(`import ${className} from '#models/${className}';`);
    resources.push(
      `  ${quote(tableName)}: { model: ${className}, tableName: ${quote(tableName)}, tableType: 'BASE TABLE', primaryKeys: ${JSON.stringify(primaryKeys)} },`,
    );
    schemaCatalog.push(`-- ${tableName}`);
  }

  const indexSource = `import type { Model, ModelStatic } from 'sequelize';
${imports.join('\n')}

export interface ResourceDefinition {
  model: ModelStatic<Model>;
  tableName: string;
  tableType: 'BASE TABLE' | 'VIEW';
  primaryKeys: string[];
}

export type ResourceRegistry = Record<string, ResourceDefinition>;

const resources: ResourceRegistry = {
${resources.join('\n')}
};

export default resources;
`;
  await writeFile(join(modelsDirectory, 'index.ts'), indexSource, 'utf8');

  const schemaPath = join(projectRoot, service, 'src', 'database', 'schema.sql');
  await writeFile(
    schemaPath,
    `-- Catálogo del esquema vigente de ${service}.\n${schemaCatalog.join('\n')}\n`,
    'utf8',
  );
}

await connection.end();
process.stdout.write('Modelos Sequelize generados correctamente.\n');
