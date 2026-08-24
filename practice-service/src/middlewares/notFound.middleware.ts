import type { Request, Response } from 'express';

export default function notFoundMiddleware(
  request: Request,
  response: Response,
): void {
  response.status(404).json({
    success: false,
    error: {
      code: 'ROUTE_NOT_FOUND',
      message: `Ruta no encontrada: ${request.path}`,
    },
  });
}
