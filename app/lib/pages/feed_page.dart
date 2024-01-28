import 'package:app/entities/message.dart';
import 'package:app/models/message_model.dart';
import 'package:app/theme.dart';
import 'package:flutter_control/control.dart';

import '../exports/controls.dart';
import '../exports/widgets.dart';
import '../widgets/message/message_tile.dart';

class FeedPage extends SingleControlWidget<FeedControl>
    with ThemeProvider<UITheme> {
  FeedPage({super.key});

  @override
  FeedControl initControl() => FeedControl();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListBuilder(
        control: control.messages,
        noData: (context) => const AppLoader(),
        builder: (BuildContext context, List<MessageModel> messages) =>
            ListView.builder(
          itemBuilder: (context, index) {
            final message = messages[index];
            return MessageTile(
              control: message,
            );
          },
          itemCount: messages.length,
        ),
      ),
    );
  }
}
