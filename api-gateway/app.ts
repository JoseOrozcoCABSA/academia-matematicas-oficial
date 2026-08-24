import express from 'express';
import helmet from 'helmet';
import cors from 'cors';
import corsOptions from '#config/cors';
import gatewayRoutes from '#routes/gateway.routes';
import gatewayController from '#controllers/gateway.controller';
import requestIdMiddleware from '#middlewares/requestId.middleware';
import rateLimitMiddleware from '#middlewares/rateLimit.middleware';
import authMiddleware from '#middlewares/auth.middleware';
import auditMiddleware from '#middlewares/audit.middleware';
import notFoundMiddleware from '#middlewares/notFound.middleware';
import errorMiddleware from '#middlewares/error.middleware';

const app = express();
app.disable('x-powered-by');
app.use(helmet());
app.use(cors(corsOptions));
app.use(requestIdMiddleware);
app.use(auditMiddleware);
app.use(express.raw({ type: () => true, limit: '25mb' }));

app.get('/health', gatewayController.health);
app.get('/services', gatewayController.catalog);
app.get('/services/health', gatewayController.servicesHealth);

app.use('/api', rateLimitMiddleware, authMiddleware, gatewayRoutes);

app.use(notFoundMiddleware);
app.use(errorMiddleware);

export default app;
