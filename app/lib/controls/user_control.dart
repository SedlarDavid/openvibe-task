import 'package:app/services/base_service.dart';
import 'package:app/services/message_service.dart';
import 'package:control_core/core.dart';

class UserControl extends BaseControl {
  MessageService get _messageService => Control.get<BaseService>()!.message;

  void onResetMessages() => _messageService.clear();
}
