import assert from 'node:assert/strict';
import { before, describe, it } from 'node:test';
import type { NextFunction, Request, Response } from 'express';

process.env.JWT_SECRET = 'j'.repeat(64);
process.env.INTERNAL_SERVICE_KEY = 'i'.repeat(64);
process.env.DB_USER = 'test-user';
process.env.DB_PASSWORD = 'test-password';

let middleware: (request: Request, response: Response, next: NextFunction) => void;
before(async () => {
  middleware = (await import('./internal-service.middleware.js')).default;
});

function invoke(key?: string) {
  let status = 200;
  let nextCalled = false;
  const request = { header: () => key } as unknown as Request;
  const response = {
    status(code: number) { status = code; return this; },
    json() { return this; },
  } as unknown as Response;
  middleware(request, response, (() => { nextCalled = true; }) as NextFunction);
  return { status, nextCalled };
}

describe('autenticación interna', () => {
  it('rechaza una clave ausente o incorrecta', () => {
    assert.deepEqual(invoke(), { status: 401, nextCalled: false });
    assert.deepEqual(invoke('incorrecta'), { status: 401, nextCalled: false });
  });

  it('acepta exclusivamente la clave configurada', () => {
    assert.deepEqual(invoke('i'.repeat(64)), { status: 200, nextCalled: true });
  });
});
