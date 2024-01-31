import 'package:app/entities/message.dart';
import 'package:app/exports/widgets.dart';
import 'package:app/theme.dart';
import 'package:flutter_control/control.dart';

import '../exports/controls.dart';

class MessagePage extends SingleControlWidget<MessageControl>
    with ThemeProvider<UITheme> {
  MessagePage({super.key});

  @override
  MessageControl initControl() => MessageControl();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ControlBuilder<Message>(
        control: control.messageDetail,
        noData: (context) => const AppLoader(),
        builder: (context, message) => Padding(
          padding: EdgeInsets.all(theme.padding),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                localize('message_details'),
                style: theme.fontAccent.headlineSmall,
              ),
              MessageHeader(
                message: message,
                imageSize: 50,
                fullFormatDate: true,
              ),
              SizedBox(height: theme.paddingSection,),
              Text(
                localize('message_content'),
                style: theme.fontAccent.headlineSmall,
              ),
              Text(
                message.message,
                style: theme.fontAccent.bodyMedium,
              )
            ],
          ),
        ),
      ),
    );
  }
}
