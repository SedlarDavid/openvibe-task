import 'package:flutter_control/control.dart';

import '../theme.dart';

class Snackbars {
  static const messagesDeleted = _MessagesDeleted();
}

class _MessagesDeleted extends StatelessWidget with LocalinoProvider {
  const _MessagesDeleted({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = ThemeProvider.of<UITheme>(context);
    return Text(
      localize(
        'storage_cleared',
      ),
      style: theme.fontAccent.bodyMedium?.copyWith(
        color: Colors.white,
      ),
    );
  }
}
