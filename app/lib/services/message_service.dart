import 'dart:convert';

import 'package:app/entities/contract/message_contract_response.dart';
import 'package:app/repositories/message_repository.dart';
import 'package:app/utils/consts.dart';
import 'package:control_core/core.dart';
import 'package:uuid/uuid.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import '../entities/message.dart';
import '../repositories/base_repository.dart';

class MessageService extends BaseControl {
  static int _id = 0;

  MessageRepository get _messageRepository =>
      Control.get<BaseRepository>()!.message;

  static const _messagesCount = 10;

  //TODO SystemService
  late final _clientId = const Uuid().v4();
  late final WebSocketChannel? _channel;

  final messages = ListControl<Message>();

  MessageService() {
    initialize();
  }

  void initialize() {
    final uri = Uri.parse('ws://${Consts.baseUrl}');
    try {
      _channel = WebSocketChannel.connect(uri);
      _channel!.stream.listen(_onMessage);
      _getLatest();
    } catch (exception) {}
  }

  //TODO api
  void _getLatest() {
    messages.setValue(_messageRepository.getAll());
    _id = messages.length;
    if (_channel != null) {
      _channel.sink.add('["get", "$_clientId", $_messagesCount]');
    }
  }

  void _onMessage(event) {
    final dataMessage = MessageContractResponse.fromSink(event);
    if (_mockClientCheck(dataMessage)) return;
    messages.setValue(
      [
        _cacheAndStoreMessage(dataMessage),
        ...messages.value!,
      ],
    );
  }

  bool _mockClientCheck(MessageContractResponse dataMessage) =>
      _clientId != dataMessage.id;

  Message _cacheAndStoreMessage(MessageContractResponse dataMessage) {
    return _messageRepository.set(
      dataMessage.message.copyWith(
        objectId: ++_id,
      ),
    );
  }

  Message get(String messageId) => _messageRepository.get(messageId);

  void clear() => messages.setValue(<Message>[]);

  @override
  void dispose() {
    messages.dispose();
    super.dispose();
  }
}
