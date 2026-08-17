import type { Request, Response } from 'express';
import Medio from '#models/Medio';
import { ok } from '#utils/response';
import { AppError } from '#utils/errors';

const mediaType = (mimeType: string): 'image' | 'video' | 'document' => {
  if (mimeType.startsWith('image/')) return 'image';
  if (mimeType.startsWith('video/')) return 'video';
  return 'document';
};

export const uploadMedia = async (request: Request, response: Response): Promise<void> => {
  if (!request.file) throw new AppError('Selecciona un archivo para subir', 400, 'FILE_REQUIRED');
  const context = String(request.body.upload_context || 'content');
  const allowedContexts = ['general', 'icon', 'hero', 'content', 'gallery', 'svg'];
  const record = await Medio.create({
    title: String(request.body.title || request.file.originalname).trim(),
    media_type: mediaType(request.file.mimetype),
    file_path: `/api/learning/uploads/${request.file.filename}`,
    thumbnail_path: null,
    external_url: request.body.external_url || null,
    alt_text: String(request.body.alt_text || '').trim(),
    upload_context: allowedContexts.includes(context) ? context : 'content',
    width: null,
    height: null,
    file_size: request.file.size,
  });
  ok(response, record, 201);
};
