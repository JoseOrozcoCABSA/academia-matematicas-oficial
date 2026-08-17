export type ServiceKey = 'learning' | 'practice' | 'ai' | 'identity';

export interface ServiceDefinition {
  key: ServiceKey;
  name: string;
  baseUrl: string;
  gatewayPath: string;
  description: string;
}

export const services: Record<ServiceKey, ServiceDefinition> = {
  learning: {
    key: 'learning',
    name: 'learning-service',
    baseUrl: process.env.LEARNING_SERVICE_URL ?? 'http://127.0.0.1:4601',
    gatewayPath: '/api/learning',
    description: 'Niveles, categorías, lecciones, secciones, medios y recursos',
  },
  practice: {
    key: 'practice',
    name: 'practice-service',
    baseUrl: process.env.PRACTICE_SERVICE_URL ?? 'http://127.0.0.1:4602',
    gatewayPath: '/api/practice',
    description: 'Ejercicios, intentos, retos y progreso de estudiantes',
  },
  ai: {
    key: 'ai',
    name: 'ai-service',
    baseUrl: process.env.AI_SERVICE_URL ?? 'http://127.0.0.1:4603',
    gatewayPath: '/api/ai',
    description: 'Tutor matemático, modelos, prompts y generación de ejercicios',
  },
  identity: {
    key: 'identity',
    name: 'identity-service',
    baseUrl: process.env.IDENTITY_SERVICE_URL ?? 'http://127.0.0.1:4604',
    gatewayPath: '/api/identity',
    description: 'Registro, inicio de sesión y administración de usuarios',
  },
};
