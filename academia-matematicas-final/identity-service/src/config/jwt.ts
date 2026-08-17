import jwt, { type JwtPayload, type SignOptions } from 'jsonwebtoken';
import env from '#config/env';

export const signToken = (payload: Record<string, unknown>): string =>
  jwt.sign(payload, env.jwtSecret, {
    expiresIn: env.jwtExpiresIn as SignOptions['expiresIn'],
  });

export const verifyToken = (token: string): string | JwtPayload =>
  jwt.verify(token, env.jwtSecret);
