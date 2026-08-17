import type { NextFunction, Request, Response } from 'express';
import logger from '#config/logger';
import type { GatewayError } from '#utils/errors';

export default function errorMiddleware(
  error: GatewayError,
  request: Request,
  response: Response,
  _next: NextFunction,
): void {
  const status = error.status ?? 500;
  logger.error(error.message ?? 'Error interno del Gateway', {
    requestId: request.requestId,
    status,
    stack: error.stack,
  });
  response.status(status).json({
    success: false,
    error: {
      code: error.code ?? 'GATEWAY_ERROR',
      message: error.message ?? 'Error interno del Gateway',
      details: error.details,
    },
    requestId: request.requestId,
  });
}
