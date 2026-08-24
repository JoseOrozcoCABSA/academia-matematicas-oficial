import Usuario from '#models/Usuario';

export class IdentityRepository {
  findByEmail(email: string) {
    return Usuario.findOne({ where: { email: email.toLowerCase() } });
  }

  findById(id: number) {
    return Usuario.findByPk(id);
  }

  list() {
    return Usuario.findAll({
      attributes: { exclude: ['password_hash'] },
      order: [['name', 'ASC']],
    });
  }

  create(data: Record<string, unknown>) {
    return Usuario.create(data);
  }
}

export default new IdentityRepository();
