import type { Request, Response } from 'express';
import service from '#services/domain.service';
import { ok } from '#utils/response';
import { AppError } from '#utils/errors';

const param = (request: Request, key: string): string => {
  const value = request.params[key];
  const resolved = Array.isArray(value) ? value[0] : value;
  if (!resolved) throw new AppError(`El parámetro ${key} es obligatorio`, 400, 'ROUTE_PARAM_REQUIRED');
  return resolved;
};

export default {
  catalog: async (_request: Request, response: Response) => {
    ok(response, await service.catalog());
  },
  lessons: async (request: Request, response: Response) => {
    const filters: Record<string, unknown> = {};
    if (request.query.category_id) filters.category_id = request.query.category_id;
    ok(response, await service.lessons(filters));
  },
  practiceTopics: async (_request: Request, response: Response) => {
    ok(response, await service.practiceTopics());
  },
  lesson: async (request: Request, response: Response) => {
    ok(response, await service.lesson(param(request, 'slug')));
  },
};
