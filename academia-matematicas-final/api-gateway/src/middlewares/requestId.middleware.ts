import { randomUUID } from 'node:crypto';
import type { NextFunction, Request, Response } from 'express';

export default function requestIdMiddleware(
  request: Request,
  response: Response,
  next: NextFunction,
): void {
  request.requestId =
    request.header('x-request-id')
    ?? request.header('x-correlation-id')
    ?? randomUUID();
  response.setHeader('X-Request-Id', request.requestId);
  next();
}
