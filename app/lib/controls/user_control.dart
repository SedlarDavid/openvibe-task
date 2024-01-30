import 'package:app/exports/widgets.dart';
import 'package:app/models/user_page_card_model.dart';
import 'package:app/services/base_service.dart';
import 'package:app/services/message_service.dart';
import 'package:flutter_control/control.dart';

class UserControl extends BaseControl with LocalinoProvider {
  late final messagesCard = UserPageCardModel<int>(
    0,
    cardTitle: 'messages',
    onLabelChanged: (count) => '$count ${localize('messages_count')}',
    onButtonPressed: onClearStorage,
    snackbarContent: Snackbars.messagesDeleted,
  );

  MessageService get _messageService => Control.get<BaseService>()!.message;

  @override
  void onInit(Map args) {
    super.onInit(args);
    _messageService.messages.subscribe(
      (data) => messagesCard.setValue(
        data?.length ?? 0,
      ),
    );
  }

  void onClearStorage() => _messageService.clear();
}
