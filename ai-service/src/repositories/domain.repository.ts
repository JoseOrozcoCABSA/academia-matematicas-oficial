import { randomUUID } from 'node:crypto';
import ConversacionIa from '#models/ConversacionIa';
import GeneracionIa from '#models/GeneracionIa';
import MensajeIa from '#models/MensajeIa';
import ModeloIa from '#models/ModeloIa';
import PromptIa from '#models/PromptIa';

export class AiRepository {
  models() {
    return ModeloIa.findAll({ where: { activo: true }, order: [['id', 'ASC']] });
  }

  prompts() {
    return PromptIa.findAll({ where: { activo: true }, order: [['id', 'ASC']] });
  }

  async conversation(input: Record<string, unknown>) {
    const id = String(input.conversation_id ?? randomUUID());
    const [conversation] = await ConversacionIa.findOrCreate({
      where: { id },
      defaults: {
        id,
        usuario_id: input.user_id ?? null,
        leccion_id: input.lesson_id ?? null,
        titulo: input.title ?? 'Tutor matemático',
      },
    });
    return conversation;
  }

  message(conversationId: string, role: string, content: string) {
    return MensajeIa.create({
      conversacion_id: conversationId,
      rol: role,
      contenido: content,
    });
  }

  generation(data: Record<string, unknown>) {
    return GeneracionIa.create(data);
  }
}

export default new AiRepository();
