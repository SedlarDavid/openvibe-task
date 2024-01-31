import 'package:uuid/uuid.dart';

class SystemService {
  late final _clientId = const Uuid().v4();
  static const _messagesCount = 10;

  String get clientId => _clientId;
  int get messagesCount => _messagesCount;
}
