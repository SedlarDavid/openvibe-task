import 'dart:convert';

import 'package:app/entities/contract/message_contract_response.dart';
import 'package:app/utils/consts.dart';
import 'package:control_core/core.dart';
import 'package:uuid/uuid.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import '../entities/message.dart';

class MessageService extends BaseControl {
  static const _messagesCount = 10;

  //TODO SystemService
  late final _clientId = const Uuid().v4();
  late final WebSocketChannel _channel;

  final messages = ListControl<Message>();

  MessageService() {
    initialize();
  }

  void initialize() {
    final uri = Uri.parse('ws://${Consts.baseUrl}');
    try {
      _channel = WebSocketChannel.connect(uri);
      _channel.stream.listen(_onMessage);
      _getLatest();
    } catch (exception) {}
  }

  void _getLatest() {
    _channel.sink.add('["get", "$_clientId", $_messagesCount]');
  }

  //TODO sync with message repo, cache
  void _onMessage(event) {
    var dataMessage = MessageContractResponse.fromSink(event);
    if (_clientId != dataMessage.id) return;
    messages.add(dataMessage.message);
  }

  @override
  void dispose() {
    messages.dispose();
    super.dispose();
  }
}
