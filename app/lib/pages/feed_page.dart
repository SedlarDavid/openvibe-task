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
      body: RefreshIndicator(
        onRefresh: () async => control.onRefresh(),
        child: ListBuilder(
          control: control.messageModels,
          noData: (context) => SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: SizedBox(
              height: _screenSize,
              child: Center(
                child: Text(
                  localize(
                    'no_messages',
                  ),
                  style: theme.fontAccent.labelLarge,
                ),
              ),
            ),
          ),
          builder: (BuildContext context, List<MessageModel> messages) =>
              ListView.builder(
            physics: const AlwaysScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              final message = messages[index];
              return MessageTile(
                control: message,
              );
            },
            itemCount: messages.length,
          ),
        ),
      ),
    );
  }

  double get _screenSize {
    return theme.device.height -
        UITheme.headerSize -
        (theme.data.navigationBarTheme.height ?? 80);
  }
}
