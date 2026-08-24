import type { Request, Response } from 'express';
import service from '#services/domain.service';
import { ok } from '#utils/response';
import { AppError } from '#utils/errors';

const body = (request: Request): Record<string, unknown> =>
  request.body as Record<string, unknown>;

export default {
  users: async (_request: Request, response: Response) => {
    ok(response, await service.listUsers());
  },
  login: async (request: Request, response: Response) => {
    const input = body(request);
    ok(
      response,
      await service.login(String(input.email ?? ''), String(input.password ?? '')),
    );
  },
  register: async (request: Request, response: Response) => {
    ok(response, await service.register(body(request)), 201);
  },
  resetPassword: async (request: Request, response: Response) => {
    if (request.auth?.role !== 'admin') throw new AppError('Permisos insuficientes', 403, 'FORBIDDEN');
    const rawId = Array.isArray(request.params.id) ? request.params.id[0] : request.params.id;
    ok(response, await service.resetPassword(Number(rawId), String(body(request).password ?? '')));
  },
};
