import type { CorsOptions } from 'cors';
import env from './env.js';

const corsOptions: CorsOptions = {
  origin(origin, callback) {
    if (!origin || env.corsOrigins.includes(origin)) callback(null, true);
    else callback(new Error('Origen CORS no permitido'));
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
