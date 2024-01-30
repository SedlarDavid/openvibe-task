import 'package:control_core/core.dart';

import 'repositories/base_repository.dart';
import 'services/base_service.dart';

//DI
class ControlProvider {
  static Map<Type, Initializer> get initializers => {
        BaseService: (args) => BaseService(),
        BaseRepository: (args) => BaseRepository(),
      };
}
