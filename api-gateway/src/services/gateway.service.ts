import type { Request, Response } from 'express';
import env from '#config/env';
import {
  services,
  type ServiceDefinition,
  type ServiceKey,
} from '#config/services';
import { GatewayError } from '#utils/errors';

const skippedRequestHeaders = new Set([
  'host',
  'content-length',
  'connection',
  'transfer-encoding',
  'expect',
  'te',
  'upgrade',
  'proxy-connection',
]);

const forwardedResponseHeaders = new Set([
  'content-type',
  'content-disposition',
  'cache-control',
  'etag',
  'last-modified',
]);

export class GatewayService {
  catalog() {
    return Object.values(services).map((service) => ({
      key: service.key,
      name: service.name,
      gatewayPath: service.gatewayPath,
      target: service.baseUrl,
      description: service.description,
    }));
  }

  async health() {
    const results = await Promise.all(
      Object.values(services).map((service) => this.serviceHealth(service)),
    );
    return {
      status: results.every((result) => result.status === 'ok')
        ? 'ok'
        : 'degraded',
      services: results,
    };
  }

  async proxy(
    key: ServiceKey,
    request: Request,
    response: Response,
  ): Promise<void> {
    const service = services[key];
    const targetUrl = `${service.baseUrl}/api${request.url}`;
    const headers = new Headers();
    for (const [name, value] of Object.entries(request.headers)) {
      if (skippedRequestHeaders.has(name.toLowerCase()) || value === undefined) {
        continue;
      }
      headers.set(name, Array.isArray(value) ? value.join(',') : value);
    }
    headers.set('x-request-id', request.requestId);
    headers.set('x-forwarded-host', request.header('host') ?? 'localhost');
    headers.set('x-forwarded-proto', request.protocol);
    headers.set('x-gateway-service', 'academia-api-gateway');
    headers.set('x-internal-service-key', env.internalServiceKey);

    const hasBody = !['GET', 'HEAD'].includes(request.method)
      && Buffer.isBuffer(request.body)
      && request.body.length > 0;

    let upstream: globalThis.Response;
    try {
      upstream = await fetch(targetUrl, {
        method: request.method,
        headers,
        body: hasBody ? request.body : undefined,
        signal: AbortSignal.timeout(env.requestTimeoutMs),
      });
    } catch (error) {
      const timedOut = error instanceof DOMException && error.name === 'TimeoutError';
      throw new GatewayError(
        timedOut
          ? `Tiempo de espera agotado para ${service.name}`
          : `${service.name} no está disponible`,
        timedOut ? 504 : 503,
        timedOut ? 'UPSTREAM_TIMEOUT' : 'UPSTREAM_UNAVAILABLE',
        {
          service: service.name,
          target: service.baseUrl,
          cause: error instanceof Error ? error.message : String(error),
        },
      );
    }

    for (const [name, value] of upstream.headers.entries()) {
      if (forwardedResponseHeaders.has(name.toLowerCase())) {
        response.setHeader(name, value);
      }
    }
    response.setHeader('X-Request-Id', request.requestId);
    response.setHeader('X-Gateway-Service', service.name);
    response.status(upstream.status);

    if (upstream.status === 204 || request.method === 'HEAD') {
      response.end();
      return;
    }
    response.send(Buffer.from(await upstream.arrayBuffer()));
  }

  private async serviceHealth(service: ServiceDefinition) {
    const startedAt = Date.now();
    try {
      const response = await fetch(`${service.baseUrl}/health`, {
        signal: AbortSignal.timeout(Math.min(env.requestTimeoutMs, 3000)),
      });
      const data = response.ok ? await response.json() : null;
      return {
        key: service.key,
        name: service.name,
        status: response.ok ? 'ok' : 'error',
        httpStatus: response.status,
        latencyMs: Date.now() - startedAt,
        data,
      };
    } catch {
      return {
        key: service.key,
        name: service.name,
        status: 'unavailable',
        httpStatus: null,
        latencyMs: Date.now() - startedAt,
        data: null,
      };
    }
  }
}

export default new GatewayService();
