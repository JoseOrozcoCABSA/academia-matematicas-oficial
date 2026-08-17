import type { Model } from 'sequelize';
import repository, {
  ResourcesRepository,
  type ListOptions,
} from '#repositories/resources.repository';

export class ResourcesService {
  private readonly repository: ResourcesRepository;

  constructor(dataRepository: ResourcesRepository = repository) {
    this.repository = dataRepository;
  }

  catalog(): Array<Record<string, unknown>> {
    return this.repository.catalog();
  }

  list(resource: string | undefined, options: ListOptions) {
    return this.repository.list(resource, options);
  }

  findOne(resource: string | undefined, where: Record<string, unknown>) {
    return this.repository.findOne(resource, where);
  }

  findById(resource: string | undefined, id: string): Promise<Model> {
    return this.repository.findById(resource, id);
  }

  create(resource: string | undefined, data: Record<string, unknown>) {
    return this.repository.create(resource, data);
  }

  update(
    resource: string | undefined,
    where: Record<string, unknown>,
    data: Record<string, unknown>,
  ) {
    return this.repository.update(resource, where, data);
  }

  updateById(
    resource: string | undefined,
    id: string,
    data: Record<string, unknown>,
  ) {
    return this.repository.updateById(resource, id, data);
  }

  remove(resource: string | undefined, where: Record<string, unknown>) {
    return this.repository.remove(resource, where);
  }

  removeById(resource: string | undefined, id: string) {
    return this.repository.removeById(resource, id);
  }
}

export default new ResourcesService();
