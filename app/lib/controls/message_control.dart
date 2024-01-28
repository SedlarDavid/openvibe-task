import 'package:app/services/message_service.dart';
import 'package:control_core/core.dart';

class MessageControl extends BaseControl {
  MessageService get _messageService => Control.get<MessageService>()!;
  late final String _messageId;

  @override
  void onInit(Map args) {
    super.onInit(args);

    _messageId = args.getArg<String>() ?? '';

    _loadMessage();
  }

  void _loadMessage() {
    _messageService.getById(_messageId);
  }
}
