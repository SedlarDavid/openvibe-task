import 'package:app/utils/consts.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class MessageService {
  late final WebSocketChannel _channel;

  MessageService() {
    initialize();
  }

  void initialize() {
    final uri = Uri.parse('ws://${Consts.baseUrl}');
    try {
      _channel = WebSocketChannel.connect(uri);
    } catch (exception) {}
  }

  void sendMessage(String message) {
    _channel.sink.add('hello');
  }
}
