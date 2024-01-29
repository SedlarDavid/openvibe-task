import 'package:app/services/message_service.dart';
import 'package:control_core/core.dart';

import '../entities/message.dart';

class MessageControl extends BaseControl {
  MessageService get _messageService => Control.get<MessageService>()!;
  late final String _messageId;

  final messageDetail = ActionControl.single<Message?>(null);

  @override
  void onInit(Map args) {
    super.onInit(args);

    _messageId = args.getArg<String>() ?? '';

    _loadMessage();
  }

  void _loadMessage() {
    var loaded = _messageService.get(
      _messageId,
    );
    messageDetail.setValue(loaded);
  }
}
