import 'package:app/entities/message.dart';
import 'package:app/services/message_service.dart';
import 'package:control_core/core.dart';

class FeedControl extends BaseControl {
  MessageService get _messageService => Control.get<MessageService>()!;

  ListControl<Message> get messages => _messageService.messages;

  @override
  void onInit(Map args) {
    super.onInit(args);
  }


}
