import 'package:app/theme.dart';
import 'package:flutter_control/control.dart';

class AppLoader extends StatelessWidget {
  const AppLoader({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = ThemeProvider.of<UITheme>(context);
    return Center(
      child: CircularProgressIndicator(
        color: theme.primaryColor,
      ),
    );
  }
}
