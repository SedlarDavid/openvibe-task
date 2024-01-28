import 'package:app/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_control/control.dart';

class AppHeader extends StatelessWidget implements PreferredSize {
  const AppHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return child;
  }

  @override
  Widget get child => Builder(builder: (context) {
        final theme = ThemeProvider.of<UITheme>(context);
        return SizedBox(
          width: preferredSize.width,
          height: preferredSize.height,
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Viberrr',
                  style: theme.fontAccent.headlineLarge,
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        );
      });

  @override
  Size get preferredSize => const Size.fromHeight(150);
}
