import 'package:app/theme.dart';
import 'package:flutter_control/control.dart';

import '../exports/controls.dart';
import '../exports/widgets.dart';

class UserPage extends SingleControlWidget<UserControl>
    with ThemeProvider<UITheme> {
  UserPage({super.key});

  @override
  UserControl initControl() => UserControl();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          UserPageCard<int>(
            control: control.messagesCard,
          ),
        ],
      ),
    );
  }
}
