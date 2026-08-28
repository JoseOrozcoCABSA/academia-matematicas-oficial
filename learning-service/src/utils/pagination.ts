import type { Request } from 'express';

export interface Pagination {
  limit: number;
  offset: number;
}

export const MAX_PAGE_SIZE = 500;

export const paginationFrom = (query: Request['query']): Pagination => ({
  limit: Math.min(Math.max(Number(query.limit ?? 25), 1), MAX_PAGE_SIZE),
  offset: Math.max(Number(query.offset ?? 0), 0),
});
