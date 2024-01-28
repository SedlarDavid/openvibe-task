import 'package:app/entities/message.dart';
import 'package:control_core/core.dart';

class MessageModel extends BaseModel with ObservableComponent<Message> {
  MessageModel(Message message) {
    value = message;
  }
}
