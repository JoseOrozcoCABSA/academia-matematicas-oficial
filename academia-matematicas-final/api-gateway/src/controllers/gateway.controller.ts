import type { Request, RequestHandler, Response } from 'express';
import gatewayService from '#services/gateway.service';
import type { ServiceKey } from '#config/services';
import env from '#config/env';

export class GatewayController {
  health = async (_request: Request, response: Response): Promise<void> => {
    response.json({
      service: env.gatewayName,
      status: 'ok',
      timestamp: new Date().toISOString(),
    });
  };

  catalog = async (_request: Request, response: Response): Promise<void> => {
    response.json({
      success: true,
      data: gatewayService.catalog(),
    });
  };

  servicesHealth = async (
    _request: Request,
    response: Response,
  ): Promise<void> => {
    const result = await gatewayService.health();
    response.status(result.status === 'ok' ? 200 : 207).json({
      success: result.status === 'ok',
      data: result,
    });
  };

  forward = (service: ServiceKey): RequestHandler =>
    async (request, response): Promise<void> => {
      await gatewayService.proxy(service, request, response);
    };
}

export default new GatewayController();
