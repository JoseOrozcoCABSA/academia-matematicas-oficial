import { timingSafeEqual } from 'node:crypto';
import type { NextFunction, Request, Response } from 'express';
import env from '#config/env';

function matchesInternalKey(candidate: string | undefined): boolean {
  if (!candidate) return false;
  const actual = Buffer.from(candidate);
  const expected = Buffer.from(env.internalServiceKey);
  return actual.length === expected.length && timingSafeEqual(actual, expected);
}

export default function requireInternalService(
  request: Request,
  response: Response,
  next: NextFunction,
): void {
  if (!matchesInternalKey(request.header('x-internal-service-key'))) {
    response.status(401).json({ message: 'Acceso interno no autorizado', code: 'INVALID_INTERNAL_KEY' });
    return;
  }
  next();
}
