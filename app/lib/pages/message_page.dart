import 'package:flutter_control/control.dart';

import '../exports/controls.dart';

class MessagePage extends SingleControlWidget<MessageControl> {
  MessagePage({super.key});

  @override
  MessageControl initControl() => MessageControl();

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
