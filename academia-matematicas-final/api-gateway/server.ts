import app from '#app';
import env from '#config/env';
import logger from '#config/logger';

const host = process.env.HOST ?? '127.0.0.1';
app.listen(env.port, host, () => {
  logger.info(`${env.gatewayName} listo en http://${host}:${env.port}`);
});
