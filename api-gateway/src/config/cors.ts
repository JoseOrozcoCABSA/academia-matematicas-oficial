import type { CorsOptions } from 'cors';
import env from './env.js';

const corsOptions: CorsOptions = {
  origin(origin, callback) {
    if (!origin || env.corsOrigins.includes(origin)) callback(null, true);
    else {
      const error = new Error('Origen CORS no permitido') as Error & { status?: number; code?: string };
      error.status = 403;
      error.code = 'CORS_ORIGIN_DENIED';
      callback(error);
    }
  },
  credentials: true,
  methods: ['GET', 'POST', 'PUT', 'PATCH', 'DELETE', 'OPTIONS'],
  allowedHeaders: [
    'Authorization',
    'Content-Type',
    'X-Request-Id',
    'X-Correlation-Id',
  ],
  exposedHeaders: ['X-Request-Id', 'X-Gateway-Service'],
};

export default corsOptions;
