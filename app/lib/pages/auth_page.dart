import 'package:flutter_control/control.dart';

import '../exports/controls.dart';
import '../theme.dart';

class AuthPage extends SingleControlWidget<AuthControl>
    with ThemeProvider<UITheme> {
  AuthPage({super.key});

  @override
  AuthControl initControl() => AuthControl();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme.primaryColorDark,
      body: Center(
        child: CircularProgressIndicator(
          color: theme.primaryColor,
        ),
      ),
    );
  }
}
