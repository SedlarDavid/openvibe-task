import 'package:app/entities/message.dart';
import 'package:app/exports/widgets.dart';
import 'package:flutter_control/control.dart';

import '../exports/controls.dart';

class MessagePage extends SingleControlWidget<MessageControl> {
  MessagePage({super.key});

  @override
  MessageControl initControl() => MessageControl();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ControlBuilder<Message>(
        control: control.messageDetail,
        noData: (context) => const AppLoader(),
        builder: (context, message) => Column(
          children: [
            Text(
              message.message,
            ),
          ],
        ),
      ),
    );
  }
}
