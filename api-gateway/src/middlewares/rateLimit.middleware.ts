import type { NextFunction, Request, Response } from 'express';
import env from '#config/env';

interface RateEntry {
  count: number;
  resetAt: number;
}

const clients = new Map<string, RateEntry>();

export default function rateLimitMiddleware(
  request: Request,
  response: Response,
  next: NextFunction,
): void {
  const now = Date.now();
  const key = request.ip ?? request.socket.remoteAddress ?? 'unknown';
  const current = clients.get(key);
  const entry = !current || current.resetAt <= now
    ? { count: 0, resetAt: now + env.rateLimit.windowMs }
    : current;
  entry.count += 1;
  clients.set(key, entry);

  response.setHeader('X-RateLimit-Limit', env.rateLimit.maxRequests);
  response.setHeader(
    'X-RateLimit-Remaining',
    Math.max(env.rateLimit.maxRequests - entry.count, 0),
  );
  response.setHeader('X-RateLimit-Reset', Math.ceil(entry.resetAt / 1000));

  if (entry.count > env.rateLimit.maxRequests) {
    response.status(429).json({
      success: false,
      error: {
        code: 'RATE_LIMIT_EXCEEDED',
        message: 'Demasiadas solicitudes. Intente nuevamente más tarde.',
      },
      requestId: request.requestId,
    });
    return;
  }
  next();
}
