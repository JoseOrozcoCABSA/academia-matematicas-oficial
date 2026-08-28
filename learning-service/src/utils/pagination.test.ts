import assert from 'node:assert/strict';
import test from 'node:test';
import { MAX_PAGE_SIZE, paginationFrom } from './pagination.js';

test('permite cargar catálogos académicos de hasta 500 registros', () => {
  assert.deepEqual(paginationFrom({ limit: '200' }), { limit: 200, offset: 0 });
  assert.deepEqual(paginationFrom({ limit: '500' }), { limit: 500, offset: 0 });
});

test('mantiene acotado el tamaño máximo solicitado', () => {
  assert.equal(paginationFrom({ limit: '9999' }).limit, MAX_PAGE_SIZE);
});
