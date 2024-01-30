import 'package:uuid/uuid.dart';

class SystemService {
  late final _clientId = const Uuid().v4();

  String get clientId => _clientId;
}
