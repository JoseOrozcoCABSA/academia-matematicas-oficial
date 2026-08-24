import type { NextFunction, Request, Response } from 'express';
import { verifyToken } from '#config/jwt';
import { AppError } from '#utils/errors';

export default function authMiddleware(
  request: Request,
  _response: Response,
  next: NextFunction,
): void {
  try {
    const token = request.headers.authorization?.replace(/^Bearer\s+/i, '');
    if (!token) throw new AppError('Token requerido', 401, 'TOKEN_REQUIRED');
    const payload = verifyToken(token);
    request.auth = typeof payload === 'string'
      ? { subject: payload }
      : payload;
    next();
  } catch {
    next(new AppError('Token inválido o vencido', 401, 'INVALID_TOKEN'));
  }
}
