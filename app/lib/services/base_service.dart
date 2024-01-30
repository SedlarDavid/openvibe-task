import 'package:app/services/message_service.dart';
import 'package:app/services/system_service.dart';

class BaseService {
  static final BaseService _singleton = BaseService._internal();

  factory BaseService() {
    return _singleton;
  }

  BaseService._internal();

  final system = SystemService();
  final message = MessageService();

  //Init services if needed
  void initialize() {
    message.initialize();
  }
}
