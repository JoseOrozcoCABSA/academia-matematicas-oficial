import type { NextFunction, Request, Response } from 'express';
import logger from '#config/logger';

interface HttpError extends Error {
  status?: number;
  code?: string;
}

export default function errorMiddleware(
  error: HttpError,
  _request: Request,
  response: Response,
  _next: NextFunction,
): void {
  const status = error.status ?? (error.name?.startsWith('Sequelize') ? 400 : 500);
  logger.error(error.message ?? 'Error interno', {
    status,
    stack: error.stack,
  });
  response.status(status).json({
    success: false,
    error: {
      code: error.code ?? (status === 400 ? 'INVALID_DATA' : 'INTERNAL_ERROR'),
      message: error.message ?? 'Error interno del servicio',
    },
  });
}
