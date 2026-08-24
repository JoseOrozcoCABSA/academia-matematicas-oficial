import express from 'express';
import helmet from 'helmet';
import cors from 'cors';
import env from '#config/env';
import corsOptions from '#config/cors';
import resourcesRoutes from '#routes/resources.routes';
import domainRoutes from '#routes/domain.routes';
import auditMiddleware from '#middlewares/audit.middleware';
import notFoundMiddleware from '#middlewares/notFound.middleware';
import errorMiddleware from '#middlewares/error.middleware';
import requireInternalService from '#middlewares/internal-service.middleware';

const app = express();
app.disable('x-powered-by');
app.use(helmet());
app.use(cors(corsOptions));
app.use(express.json({ limit: '5mb' }));
app.use(express.urlencoded({ extended: true }));
app.use(auditMiddleware);

app.get('/health', (_request, response) => {
  response.json({
    service: env.serviceName,
    status: 'ok',
    database: env.database.name,
    domain: 'identidad y acceso',
    timestamp: new Date().toISOString(),
  });
});

app.use(requireInternalService);
app.use('/api', domainRoutes);
app.use('/api', resourcesRoutes);
app.use(notFoundMiddleware);
app.use(errorMiddleware);

export default app;
