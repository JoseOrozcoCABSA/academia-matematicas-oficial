import { createRequire } from 'node:module';
import { dirname, join } from 'node:path';
import { fileURLToPath } from 'node:url';

const projectRoot = dirname(dirname(fileURLToPath(import.meta.url)));
const requireFromService = createRequire(join(projectRoot, 'identity-service', 'package.json'));
const mysql = requireFromService('mysql2/promise');
const bcrypt = requireFromService('bcryptjs');

function required(name) {
  const value = process.env[name]?.trim();
  if (!value) throw new Error(`${name} es obligatorio`);
  return value;
}

const candidates = [
  {
    name: process.env.SEED_ADMIN_NAME?.trim() || 'Administrador CABSA',
    email: process.env.SEED_ADMIN_EMAIL?.trim().toLowerCase(),
    password: process.env.SEED_ADMIN_PASSWORD,
    role: 'admin',
  },
  {
    name: process.env.SEED_STUDENT_NAME?.trim() || 'Estudiante CABSA',
    email: process.env.SEED_STUDENT_EMAIL?.trim().toLowerCase(),
    password: process.env.SEED_STUDENT_PASSWORD,
    role: 'student',
  },
];
const users = candidates.filter((candidate) => candidate.email || candidate.password);
if (!users.length) {
  throw new Error('Define SEED_ADMIN_EMAIL/SEED_ADMIN_PASSWORD o SEED_STUDENT_EMAIL/SEED_STUDENT_PASSWORD');
}
for (const user of users) {
  if (!user.email || !user.password || user.password.length < 12) {
    throw new Error(`La cuenta ${user.role} requiere correo y contraseña de al menos 12 caracteres`);
  }
}

const connection = await mysql.createConnection({
  host: process.env.DB_HOST ?? '127.0.0.1',
  port: Number(process.env.DB_PORT ?? 3306),
  user: required('DB_USER'),
  password: required('DB_PASSWORD'),
  database: process.env.DB_NAME ?? 'academia-matematicas-soa',
});

try {
  for (const user of users) {
    const passwordHash = await bcrypt.hash(user.password, 12);
    await connection.execute(
      `INSERT INTO identidad_usuarios (name, email, password_hash, role, active)
       VALUES (?, ?, ?, ?, 1)
       ON DUPLICATE KEY UPDATE name = VALUES(name), password_hash = VALUES(password_hash), role = VALUES(role), active = 1`,
      [user.name, user.email, passwordHash, user.role],
    );
  }
} finally {
  await connection.end();
}

process.stdout.write(`${users.length} cuenta(s) local(es) preparada(s).\n`);
