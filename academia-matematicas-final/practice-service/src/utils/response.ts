import type { Response } from 'express';

interface PaginatedResult {
  rows: unknown[];
  count: number | unknown[];
}

interface Pagination {
  limit: number;
  offset: number;
}

export const ok = (
  response: Response,
  data: unknown,
  status = 200,
): Response => response.status(status).json({ success: true, data });

export const paginated = (
  response: Response,
  result: PaginatedResult,
  pagination: Pagination,
): Response => response.json({
  success: true,
  data: result.rows,
  pagination: {
    ...pagination,
    total: Array.isArray(result.count) ? result.count.length : result.count,
  },
});
