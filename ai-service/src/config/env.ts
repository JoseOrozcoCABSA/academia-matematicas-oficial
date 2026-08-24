import dotenv from 'dotenv';
import path from 'node:path';

dotenv.config({ path: [path.resolve(process.cwd(), '../.env'), path.resolve(process.cwd(), '.env')] });

export interface Environment {
  port: number;
  serviceName: string;
  jwtSecret: string;
  jwtExpiresIn: string;
  internalServiceKey: string;
  ollamaUrl: string;
  openAiApiKey: string;
  database: {
    host: string;
    port: number;
    name: string;
    user: string;
    password: string;
  };
}

const numberValue = (name: string, fallback: number): number =>
  Number(process.env[name] ?? fallback);

const requiredValue = (name: string, minimumLength = 1): string => {
  const value = process.env[name]?.trim();
  if (!value || value.length < minimumLength) {
    throw new Error(`${name} es obligatorio y debe tener al menos ${minimumLength} caracteres`);
  }
  return value;
};

const env: Readonly<Environment> = Object.freeze({
  port: numberValue('PORT', numberValue('AI_PORT', 4603)),
  serviceName: process.env.SERVICE_NAME ?? 'ai-service',
  jwtSecret: requiredValue('JWT_SECRET', 32),
  jwtExpiresIn: process.env.JWT_EXPIRES_IN ?? '8h',
  internalServiceKey: requiredValue('INTERNAL_SERVICE_KEY', 32),
  ollamaUrl: process.env.OLLAMA_URL ?? 'http://127.0.0.1:11434',
  openAiApiKey: process.env.OPENAI_API_KEY ?? '',
  database: {
    host: process.env.DB_HOST ?? '127.0.0.1',
    port: numberValue('DB_PORT', 3306),
    name: process.env.DB_NAME ?? 'academia-matematicas-soa',
    user: requiredValue('DB_USER'),
    password: requiredValue('DB_PASSWORD'),
  },
});

export default env;
