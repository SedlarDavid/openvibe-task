import 'package:control_core/core.dart';

import 'repositories/base_repository.dart';
import 'services/message_service.dart';

//DI
class ControlProvider {
  static Map<Type, Initializer> get initializers => {
        MessageService: (args) => MessageService(),
        BaseRepository: (args) => BaseRepository(),
      };
}
