import dotenv from 'dotenv';
import path from 'node:path';

dotenv.config({ path: [path.resolve(process.cwd(), '../.env'), path.resolve(process.cwd(), '.env')] });

const numberValue = (name: string, fallback: number): number =>
  Number(process.env[name] ?? fallback);

const requiredValue = (name: string, minimumLength = 1): string => {
  const value = process.env[name]?.trim();
  if (!value || value.length < minimumLength) {
    throw new Error(`${name} es obligatorio y debe tener al menos ${minimumLength} caracteres`);
  }
  return value;
};

const booleanValue = (name: string, fallback: boolean): boolean => {
  const value = process.env[name];
  return value === undefined ? fallback : value.toLowerCase() === 'true';
};

const env = Object.freeze({
  port: numberValue('PORT', numberValue('GATEWAY_PORT', 4600)),
  gatewayName: process.env.GATEWAY_NAME ?? 'academia-matematicas-api-gateway',
  jwtSecret: requiredValue('JWT_SECRET', 32),
  internalServiceKey: requiredValue('INTERNAL_SERVICE_KEY', 32),
  corsOrigins: (process.env.CORS_ORIGINS ?? 'http://localhost:5176,http://localhost:5177,http://localhost:4610,http://localhost:4611')
    .split(',').map((origin) => origin.trim()).filter(Boolean),
  authRequired: booleanValue('AUTH_REQUIRED', true),
  requestTimeoutMs: numberValue('REQUEST_TIMEOUT_MS', 10000),
  rateLimit: {
    windowMs: numberValue('RATE_LIMIT_WINDOW_MS', 60000),
    maxRequests: numberValue('RATE_LIMIT_MAX_REQUESTS', 120),
  },
});

export default env;
