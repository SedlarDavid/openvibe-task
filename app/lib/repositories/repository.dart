import '../entities/id_entity.dart';
import '../objectbox.g.dart';

abstract class Repository<T extends IdEntity> {
  final Box<T> box;

  final Map<String, T> _cache = <String, T>{};

  Query<T> createQuery(String id);

  Repository(this.box);

  T set(T entity) {
    box.put(entity);
    return _cache[entity.id] = entity;
  }

  T get(String id) {
    if (_cache.containsKey(id)) {
      return _cache[id]!;
    } else {
      final query = createQuery(id);
      final data = query.find();
      query.close();
      return _cache[id] = data.first;
    }
  }

  List<T> getAll() {
    if (_cache.isNotEmpty) {
      return _cache.values.toList(
        growable: false,
      );
    } else {
      return box.getAll();
    }
  }
}
