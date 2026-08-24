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
  game: async (request: Request, response: Response) => {
    ok(response, await service.game(param(request, 'slug')));
  },
  exercises: async (request: Request, response: Response) => {
    ok(response, await service.exercises(Number(param(request, 'sectionId'))));
  },
  attempt: async (request: Request, response: Response) => {
    ok(response, await service.attempt(request.body as Record<string, unknown>), 201);
  },
  progress: async (request: Request, response: Response) => {
    ok(response, await service.progress(request.body as Record<string, unknown>));
  },
  dashboard: async (request: Request, response: Response) => {
    ok(response, await service.dashboard(Number(param(request, 'userId'))));
  },
};
