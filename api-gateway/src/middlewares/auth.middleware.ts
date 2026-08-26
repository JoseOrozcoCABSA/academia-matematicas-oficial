import type { NextFunction, Request, Response } from 'express';
import jwt, { type JwtPayload } from 'jsonwebtoken';
import env from '#config/env';

const publicRoutes = new Set([
  '/api/identity/auth/login',
  '/api/identity/auth/register',
]);

const isPublicReadRoute = (requestPath: string): boolean => [
  /^\/api\/learning\/catalog$/,
  /^\/api\/learning\/lessons(?:\/[^/]+)?$/,
  /^\/api\/learning\/practice-topics$/,
  /^\/api\/practice\/games\/[^/]+$/,
  /^\/api\/practice\/exercises\/\d+$/,
  /^\/api\/ai\/models$/,
].some((pattern) => pattern.test(requestPath));

const isManagementRoute = (requestPath: string): boolean => (
  /^\/api\/(learning|practice|ai|identity)\/(resources|data)(?:\/|$)/.test(requestPath)
  || requestPath === '/api/learning/media/upload'
);

const isIdentityManagementRoute = (requestPath: string): boolean => (
  /^\/api\/identity\/(?:resources|data)(?:\/|$)/.test(requestPath)
  || /^\/api\/identity\/users\/\d+\/password$/.test(requestPath)
);

export default function authMiddleware(
  request: Request,
  response: Response,
  next: NextFunction,
): void {
  const requestPath = request.originalUrl.split('?', 1)[0] ?? request.originalUrl;
  const isPublicRead = request.method === 'GET' && isPublicReadRoute(requestPath);

  if (
    !env.authRequired
    || request.method === 'OPTIONS'
    || publicRoutes.has(requestPath)
    || isPublicRead
  ) {
    next();
    return;
  }

  const token = request.header('authorization')?.replace(/^Bearer\s+/i, '');
  if (!token) {
    response.status(401).json({
      success: false,
      error: { code: 'TOKEN_REQUIRED', message: 'Token JWT requerido' },
      requestId: request.requestId,
    });
    return;
  }
  try {
    const payload = jwt.verify(token, env.jwtSecret);
    request.auth = typeof payload === 'string'
      ? { subject: payload }
      : payload as JwtPayload;
    const role = String(request.auth.role || '');
    if (isManagementRoute(requestPath) && !['admin', 'editor'].includes(role)) {
      response.status(403).json({
        success: false,
        error: { code: 'MANAGEMENT_REQUIRED', message: 'Se requieren permisos de administración o edición' },
        requestId: request.requestId,
      });
      return;
    }
    if (isIdentityManagementRoute(requestPath) && role !== 'admin') {
      response.status(403).json({
        success: false,
        error: { code: 'ADMIN_REQUIRED', message: 'La gestión de usuarios corresponde al administrador' },
        requestId: request.requestId,
      });
      return;
    }
    if (isManagementRoute(requestPath) && request.method !== 'GET' && !isIdentityManagementRoute(requestPath) && role !== 'editor') {
      response.status(403).json({
        success: false,
        error: { code: 'EDITOR_REQUIRED', message: 'La edición de contenido corresponde al editor' },
        requestId: request.requestId,
      });
      return;
    }
    next();
  } catch {
    response.status(401).json({
      success: false,
      error: { code: 'INVALID_TOKEN', message: 'Token inválido o vencido' },
      requestId: request.requestId,
    });
  }
}
