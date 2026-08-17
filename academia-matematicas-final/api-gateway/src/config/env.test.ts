import assert from 'node:assert/strict';
import { it } from 'node:test';

process.env.JWT_SECRET = 'j'.repeat(64);
process.env.INTERNAL_SERVICE_KEY = 'i'.repeat(64);

it('carga únicamente secretos fuertes', async () => {
  const env = (await import('./env.js')).default;
  assert.equal(env.jwtSecret.length, 64);
  assert.equal(env.internalServiceKey.length, 64);
});
