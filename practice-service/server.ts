import app from '#app';
import env from '#config/env';
import database from '#config/database';
import logger from '#config/logger';

await database.authenticate();
const host = process.env.HOST ?? '127.0.0.1';
app.listen(env.port, host, () => {
  logger.info(`${env.serviceName} listo en http://${host}:${env.port}`);
});
