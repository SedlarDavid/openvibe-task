import 'package:app/services/message_service.dart';

class BaseService {
  static final BaseService _singleton = BaseService._internal();

  factory BaseService() {
    return _singleton;
  }

  BaseService._internal();

  final message = MessageService();
}
