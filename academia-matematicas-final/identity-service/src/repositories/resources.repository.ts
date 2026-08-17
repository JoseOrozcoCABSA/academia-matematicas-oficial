import type {
  FindOptions,
  Model,
  WhereOptions,
} from 'sequelize';
import resources, { type ResourceDefinition } from '#models';
import { AppError } from '#utils/errors';

export interface ListOptions {
  limit: number;
  offset: number;
  orderBy?: string;
  orderDirection: 'ASC' | 'DESC';
  where: Record<string, unknown>;
}

export class ResourcesRepository {
  private readonly defaultResource: string | null;

  constructor(defaultResource: string | null = null) {
    this.defaultResource = defaultResource;
  }

  private resourceName(resource?: string): string {
    const name = this.defaultResource ?? resource;
    if (!name) {
      throw new AppError('Recurso requerido', 400, 'RESOURCE_REQUIRED');
    }
    return name;
  }

  definition(resource?: string): ResourceDefinition {
    const name = this.resourceName(resource);
    const definition = resources[name];
    if (!definition) {
      throw new AppError(
        `El recurso ${name} no pertenece a este servicio`,
        404,
        'RESOURCE_NOT_FOUND',
      );
    }
    return definition;
  }

  catalog(): Array<Record<string, unknown>> {
    return Object.values(resources).map((definition) => ({
      resource: definition.tableName,
      type: definition.tableType,
      readOnly: definition.tableType === 'VIEW',
      primaryKeys: definition.primaryKeys,
      columns: Object.keys(definition.model.rawAttributes),
    }));
  }

  async list(resource: string | undefined, options: ListOptions) {
    const definition = this.definition(resource);
    const query: FindOptions = {
      limit: options.limit,
      offset: options.offset,
      where: options.where as WhereOptions,
    };
    if (options.orderBy) {
      query.order = [[options.orderBy, options.orderDirection]];
    }
    return definition.model.findAndCountAll(query);
  }

  async findOne(
    resource: string | undefined,
    where: Record<string, unknown>,
  ): Promise<Model> {
    this.requireWhere(where);
    const item = await this.definition(resource).model.findOne({
      where: where as WhereOptions,
    });
    if (!item) {
      throw new AppError('Registro no encontrado', 404, 'RECORD_NOT_FOUND');
    }
    return item;
  }

  async findById(resource: string | undefined, id: string): Promise<Model> {
    const definition = this.definition(resource);
    const [primaryKey] = definition.primaryKeys;
    if (definition.primaryKeys.length !== 1 || !primaryKey) {
      throw new AppError(
        'Use /record con las claves del registro',
        400,
        'COMPOSITE_KEY_REQUIRED',
      );
    }
    return this.findOne(resource, { [primaryKey]: id });
  }

  async create(
    resource: string | undefined,
    data: Record<string, unknown>,
  ): Promise<Model> {
    const definition = this.writable(resource);
    return definition.model.create(this.cleanData(definition, data));
  }

  async update(
    resource: string | undefined,
    where: Record<string, unknown>,
    data: Record<string, unknown>,
  ): Promise<{ affected: number }> {
    const definition = this.writable(resource);
    this.requireWhere(where);
    const matches = await definition.model.count({ where: where as WhereOptions });
    if (!matches) throw new AppError('Registro no encontrado', 404, 'RECORD_NOT_FOUND');
    const [affected] = await definition.model.update(
      this.cleanData(definition, data),
      { where: where as WhereOptions },
    );
    return { affected };
  }

  async updateById(
    resource: string | undefined,
    id: string,
    data: Record<string, unknown>,
  ): Promise<{ affected: number }> {
    const definition = this.definition(resource);
    const [primaryKey] = definition.primaryKeys;
    if (definition.primaryKeys.length !== 1 || !primaryKey) {
      throw new AppError(
        'Use actualización con objeto where',
        400,
        'COMPOSITE_KEY_REQUIRED',
      );
    }
    return this.update(resource, { [primaryKey]: id }, data);
  }

  async remove(
    resource: string | undefined,
    where: Record<string, unknown>,
  ): Promise<{ affected: number }> {
    const definition = this.writable(resource);
    this.requireWhere(where);
    const affected = await definition.model.destroy({
      where: where as WhereOptions,
    });
    if (!affected) {
      throw new AppError('Registro no encontrado', 404, 'RECORD_NOT_FOUND');
    }
    return { affected };
  }

  async removeById(
    resource: string | undefined,
    id: string,
  ): Promise<{ affected: number }> {
    const definition = this.definition(resource);
    const [primaryKey] = definition.primaryKeys;
    if (definition.primaryKeys.length !== 1 || !primaryKey) {
      throw new AppError(
        'Use eliminación con objeto where',
        400,
        'COMPOSITE_KEY_REQUIRED',
      );
    }
    return this.remove(resource, { [primaryKey]: id });
  }

  private writable(resource?: string): ResourceDefinition {
    const definition = this.definition(resource);
    if (definition.tableType === 'VIEW') {
      throw new AppError(
        'Las vistas son de solo lectura',
        405,
        'READ_ONLY_RESOURCE',
      );
    }
    return definition;
  }

  private cleanData(
    definition: ResourceDefinition,
    data: Record<string, unknown>,
  ): Record<string, unknown> {
    const allowed = new Set(Object.keys(definition.model.rawAttributes));
    return Object.fromEntries(
      Object.entries(data).filter(([key]) => allowed.has(key)),
    );
  }

  private requireWhere(where: Record<string, unknown>): void {
    if (!where || !Object.keys(where).length) {
      throw new AppError(
        'Se requiere una condición where no vacía',
        400,
        'WHERE_REQUIRED',
      );
    }
  }
}

export default new ResourcesRepository();
