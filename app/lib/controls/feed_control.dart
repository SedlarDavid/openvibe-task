import 'package:app/entities/message.dart';
import 'package:app/models/message_model.dart';
import 'package:app/services/base_service.dart';
import 'package:app/services/message_service.dart';
import 'package:control_core/core.dart';

class FeedControl extends BaseControl {
  MessageService get _messageService => Control.get<BaseService>()!.message;

  final messageModels = ListControl<MessageModel>();

  @override
  void onInit(Map args) {
    super.onInit(args);

    _messageService.messages.subscribe(
      (data) {
        if (data!.isNotEmpty) {
          messageModels.setValue(
            data.map(
              (message) => MessageModel(message),
            ),
          );
        } else {
          messageModels.clear();
        }
      },
    );
  }
}
