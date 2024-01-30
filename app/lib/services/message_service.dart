import 'dart:convert';

import 'package:app/api/api.dart';
import 'package:app/entities/contract/message_contract_response.dart';
import 'package:app/repositories/message_repository.dart';
import 'package:app/services/base_service.dart';
import 'package:app/services/system_service.dart';
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

  SystemService get _systemService => Control.get<BaseService>()!.system;

  Api get _api => Control.get<Api>()!;

  final messages = ListControl<Message>();

  void initialize() {
    _loadCached();
    if (_api.initialized) {
      _api.stream?.listen(_onMessage);
      reload();
    }
  }

  void _loadCached() {
    messages.setValue(_messageRepository.getAll());
    _id = messages.length;
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

  @override
  Future<void> reload() {
    _api.reload();
    return super.reload();
  }

  bool _mockClientCheck(MessageContractResponse dataMessage) =>
      _systemService.clientId != dataMessage.id;

  Message _cacheAndStoreMessage(MessageContractResponse dataMessage) {
    return _messageRepository.set(
      dataMessage.message.copyWith(
        objectId: ++_id,
      ),
    );
  }

  Message get(String messageId) => _messageRepository.get(messageId);

  void clear() {
    _messageRepository.clear();
    messages.setValue(<Message>[]);
  }

  @override
  void dispose() {
    messages.dispose();
    super.dispose();
  }
}
