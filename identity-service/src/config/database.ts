import { Sequelize } from 'sequelize';
import env from '#config/env';

const database = new Sequelize(
  env.database.name,
  env.database.user,
  env.database.password,
  {
    host: env.database.host,
    port: env.database.port,
    dialect: 'mysql',
    logging: false,
    define: { freezeTableName: true, timestamps: false },
    pool: { max: 10, min: 0, acquire: 30000, idle: 10000 },
  },
);

export default database;
