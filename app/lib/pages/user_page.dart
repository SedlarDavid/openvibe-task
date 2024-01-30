import 'package:flutter_control/control.dart';

import '../exports/controls.dart';

class UserPage extends SingleControlWidget<UserControl> {
  UserPage({super.key});

  @override
  UserControl initControl() => UserControl();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Card(
            child: Column(
              children: [
                Text(
                  localize('reset_messages'),
                ),
                OutlinedButton(
                  onPressed: control.onResetMessages,
                  child: Text(
                    localize('reset_messages'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
