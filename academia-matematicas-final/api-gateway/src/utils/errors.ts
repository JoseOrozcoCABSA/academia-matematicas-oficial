export class GatewayError extends Error {
  readonly status: number;
  readonly code: string;
  readonly details?: unknown;

  constructor(
    message: string,
    status = 500,
    code = 'GATEWAY_ERROR',
    details?: unknown,
  ) {
    super(message);
    this.name = 'GatewayError';
    this.status = status;
    this.code = code;
    this.details = details;
  }
}
