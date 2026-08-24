import type { NextFunction, Request, Response } from 'express';
import logger from '#config/logger';

export default function auditMiddleware(
  request: Request,
  response: Response,
  next: NextFunction,
): void {
  const startedAt = Date.now();
  response.on('finish', () => {
    logger.audit('http_request', {
      method: request.method,
      path: request.originalUrl,
      status: response.statusCode,
      durationMs: Date.now() - startedAt,
    });
  });
  next();
}
