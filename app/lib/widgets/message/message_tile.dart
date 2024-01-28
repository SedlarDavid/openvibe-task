import 'package:app/exports/pages.dart';
import 'package:app/models/message_model.dart';
import 'package:app/theme.dart';
import 'package:flutter_control/control.dart';

class MessageTile extends ControllableWidget<MessageModel> with ThemeProvider<UITheme>, RouteControl {
  MessageTile({super.key, required super.control});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        '${control.value!.icon} ${control.value!.message}',
        style: theme.fontAccent.bodyMedium,
      ),
      onTap: () => routeOf<MessagePage>()?.openRoute(
        args: {
          'id': control.value!.id,
        },
      ),
    );
  }
}
