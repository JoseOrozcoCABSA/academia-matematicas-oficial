import type { Request, Response } from 'express';
import service from '#services/domain.service';
import { ok } from '#utils/response';

export default {
  models: async (_request: Request, response: Response) => {
    ok(response, await service.models());
  },
  modelStatus: async (_request: Request, response: Response) => {
    ok(response, await service.modelStatus());
  },
  prompts: async (_request: Request, response: Response) => {
    ok(response, await service.prompts());
  },
  tutor: async (request: Request, response: Response) => {
    ok(response, await service.tutor(request.body as Record<string, unknown>));
  },
  generate: async (request: Request, response: Response) => {
    ok(response, await service.generate(request.body as Record<string, unknown>), 201);
  },
};
