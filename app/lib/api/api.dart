import 'package:app/services/base_service.dart';
import 'package:app/services/message_service.dart';
import 'package:app/services/system_service.dart';
import 'package:control_core/core.dart';
import 'package:uuid/uuid.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import '../utils/consts.dart';

class Api extends BaseControl {
  static final Api _singleton = Api._internal();

  factory Api() {
    return _singleton;
  }

  Api._internal();

  SystemService get _system => Control.get<BaseService>()!.system;

  static const _messagesCount = 10;

  late final WebSocketChannel? _channel;

  Stream? get stream => _channel?.stream;

  bool initialized = false;

  void initialize() {
    if (initialized) return;
    final uri = Uri.parse('ws://${Consts.baseUrl}');
    try {
      _channel = WebSocketChannel.connect(uri);
      initialized = true;
    } catch (exception) {
      //TODO retry policy
    }
  }

  void _getLatest() {
    if (_channel != null) {
      _channel.sink.add('["get", "${_system.clientId}", $_messagesCount]');
    }
  }

  @override
  Future<void> reload() {
    _getLatest();
    return super.reload();
  }
}
