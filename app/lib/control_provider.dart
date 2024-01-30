import 'package:app/api/api.dart';
import 'package:control_core/core.dart';

import 'repositories/base_repository.dart';
import 'services/base_service.dart';

//DI
class ControlProvider {
  static Map<Type, Initializer> get initializers => {
        BaseRepository: (args) => BaseRepository(),
        BaseService: (args) => BaseService(),
        Api: (args) => Api(),
      };
}
