import type { Request, Response } from 'express';
import service, { ResourcesService } from '#services/resources.service';
import { ok, paginated } from '#utils/response';
import { paginationFrom } from '#utils/pagination';
import { AppError } from '#utils/errors';

const objectValue = (
  value: unknown,
  name: string,
): Record<string, unknown> => {
  if (!value || typeof value !== 'object' || Array.isArray(value)) {
    throw new AppError(
      `${name} debe ser un objeto JSON`,
      400,
      'INVALID_REQUEST',
    );
  }
  return value as Record<string, unknown>;
};

const routeParam = (request: Request, name: string): string => {
  const value = request.params[name];
  const resolved = Array.isArray(value) ? value[0] : value;
  if (!resolved) {
    throw new AppError(`El parámetro ${name} es obligatorio`, 400, 'ROUTE_PARAM_REQUIRED');
  }
  return resolved;
};

export class ResourcesController {
  private readonly service: ResourcesService;
  private readonly fixedResource: string | null;

  constructor(
    dataService: ResourcesService = service,
    fixedResource: string | null = null,
  ) {
    this.service = dataService;
    this.fixedResource = fixedResource;
  }

  private resource(request: Request): string {
    return this.fixedResource ?? routeParam(request, 'resource');
  }

  catalog = async (_request: Request, response: Response): Promise<void> => {
    const data = this.service.catalog();
    ok(response, { count: data.length, resources: data });
  };

  list = async (request: Request, response: Response): Promise<void> => {
    const pagination = paginationFrom(request.query);
    const reserved = new Set(['limit', 'offset', 'orderBy', 'orderDirection']);
    const where = Object.fromEntries(
      Object.entries(request.query).filter(([key]) => !reserved.has(key)),
    ) as Record<string, unknown>;
    const result = await this.service.list(this.resource(request), {
      ...pagination,
      where,
      orderBy: request.query.orderBy?.toString(),
      orderDirection:
        request.query.orderDirection?.toString().toUpperCase() === 'DESC'
          ? 'DESC'
          : 'ASC',
    });
    paginated(response, result, pagination);
  };

  findOne = async (request: Request, response: Response): Promise<void> => {
    ok(
      response,
      await this.service.findOne(
        this.resource(request),
        request.query as Record<string, unknown>,
      ),
    );
  };

  findById = async (request: Request, response: Response): Promise<void> => {
    ok(
      response,
      await this.service.findById(
        this.resource(request),
        routeParam(request, 'id'),
      ),
    );
  };

  create = async (request: Request, response: Response): Promise<void> => {
    ok(
      response,
      await this.service.create(
        this.resource(request),
        objectValue(request.body, 'body'),
      ),
      201,
    );
  };

  update = async (request: Request, response: Response): Promise<void> => {
    const body = objectValue(request.body, 'body');
    ok(
      response,
      await this.service.update(
        this.resource(request),
        objectValue(body.where, 'where'),
        objectValue(body.data, 'data'),
      ),
    );
  };

  updateById = async (
    request: Request,
    response: Response,
  ): Promise<void> => {
    ok(
      response,
      await this.service.updateById(
        this.resource(request),
        routeParam(request, 'id'),
        objectValue(request.body, 'body'),
      ),
    );
  };

  remove = async (request: Request, response: Response): Promise<void> => {
    const body = objectValue(request.body, 'body');
    ok(
      response,
      await this.service.remove(
        this.resource(request),
        objectValue(body.where, 'where'),
      ),
    );
  };

  removeById = async (
    request: Request,
    response: Response,
  ): Promise<void> => {
    ok(
      response,
      await this.service.removeById(
        this.resource(request),
        routeParam(request, 'id'),
      ),
    );
  };
}

export default new ResourcesController();
