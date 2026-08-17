import bcrypt from 'bcryptjs';
import jwt, { type SignOptions } from 'jsonwebtoken';
import env from '#config/env';
import repository, { IdentityRepository } from '#repositories/domain.repository';
import { AppError } from '#utils/errors';

type UserPayload = {
  id: number;
  name: string;
  email: string;
  role: string;
  active: boolean;
};

const publicUser = (model: { get(options?: { plain?: boolean }): unknown }): UserPayload => {
  const data = model.get({ plain: true }) as Record<string, unknown>;
  return {
    id: Number(data.id),
    name: String(data.name),
    email: String(data.email),
    role: String(data.role),
    active: Boolean(data.active),
  };
};

export class IdentityService {
  constructor(private readonly data: IdentityRepository = repository) {}

  listUsers() {
    return this.data.list();
  }

  async login(email: string, password: string) {
    const normalizedEmail = email.trim().toLowerCase();
    const user = await this.data.findByEmail(normalizedEmail);
    if (!user || !Boolean(user.get('active'))) {
      throw new AppError('Credenciales incorrectas', 401, 'INVALID_CREDENTIALS');
    }
    const storedHash = String(user.get('password_hash')).replace(/^\$2y\$/, '$2a$');
    if (!await bcrypt.compare(password, storedHash)) {
      throw new AppError('Credenciales incorrectas', 401, 'INVALID_CREDENTIALS');
    }
    const safeUser = publicUser(user);
    const options: SignOptions = {
      expiresIn: env.jwtExpiresIn as SignOptions['expiresIn'],
    };
    const token = jwt.sign(
      { sub: String(safeUser.id), role: safeUser.role, email: safeUser.email },
      env.jwtSecret,
      options,
    );
    return { user: safeUser, token };
  }

  async register(input: Record<string, unknown>) {
    const name = String(input.name ?? '').trim();
    const email = String(input.email ?? '').trim().toLowerCase();
    const password = String(input.password ?? '');
    if (!name || !email || password.length < 8) {
      throw new AppError(
        'Nombre, correo y contraseña de al menos 8 caracteres son requeridos',
        400,
        'INVALID_REGISTRATION',
      );
    }
    if (await this.data.findByEmail(email)) {
      throw new AppError('El correo ya está registrado', 409, 'EMAIL_EXISTS');
    }
    const user = await this.data.create({
      name,
      email,
      password_hash: await bcrypt.hash(password, 12),
      role: 'student',
      active: true,
    });
    return publicUser(user);
  }

  async resetPassword(id: number, password: string) {
    if (!Number.isInteger(id) || id <= 0) {
      throw new AppError('Usuario inválido', 400, 'INVALID_USER');
    }
    if (password.length < 8) {
      throw new AppError('La contraseña debe tener al menos 8 caracteres', 400, 'INVALID_PASSWORD');
    }
    const user = await this.data.findById(id);
    if (!user) throw new AppError('Usuario no encontrado', 404, 'USER_NOT_FOUND');
    await user.update({ password_hash: await bcrypt.hash(password, 12) });
    return { id, password_updated: true };
  }
}

export default new IdentityService();
