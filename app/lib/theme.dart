import 'package:flutter_control/control.dart';

class UITheme extends ControlTheme {
  UITheme([super.context]);

  final fontFamily = null;

  static const _primaryColor = Color(0xFF5B61D9);

  TextTheme get fontAccent => _copyTextTheme(_mainTextTheme(), _primaryColor);

  ThemeData get lightTheme => ThemeData(
      colorScheme: const ColorScheme(
        primary: _primaryColor,
        onPrimary: _primaryColor,
        secondary: Color(0xff4D508C),
        onSecondary: Color(0xff4D508C),
        brightness: Brightness.light,
        error: Color(0xffbc3b26),
        onError: Color(0xffbc3b26),
        background: Color(0xffDCE2F2),
        onBackground: Color(0xffDCE2F2),
        surface: Colors.transparent,
        onSurface: Colors.transparent,
      ),
      drawerTheme: const DrawerThemeData(backgroundColor: Color(0xffDCE2F2)),
      scaffoldBackgroundColor: const Color(0xffDCE2F2));

  TextTheme _mainTextTheme() => TextTheme(
        displayLarge: TextStyle(
            fontSize: 64.0,
            fontFamily: fontFamily,
            fontWeight: FontWeight.w900,
            letterSpacing: 0.5),
        displayMedium: TextStyle(
            fontSize: 48.0,
            fontFamily: fontFamily,
            fontWeight: FontWeight.w900,
            letterSpacing: 0.5),
        displaySmall: TextStyle(
            fontSize: 32.0,
            fontFamily: fontFamily,
            fontWeight: FontWeight.w900),
        headlineLarge: TextStyle(
            fontSize: 28.0,
            fontFamily: fontFamily,
            fontWeight: FontWeight.w700),
        headlineMedium: TextStyle(
            fontSize: 24.0,
            fontFamily: fontFamily,
            fontWeight: FontWeight.w700),
        headlineSmall: TextStyle(
            fontSize: 20.0,
            fontFamily: fontFamily,
            fontWeight: FontWeight.w600),
        titleLarge: TextStyle(
            fontSize: 18.0,
            fontFamily: fontFamily,
            fontWeight: FontWeight.w700),
        titleMedium: TextStyle(
            fontSize: 16.0,
            fontFamily: fontFamily,
            fontWeight: FontWeight.w600),
        titleSmall: TextStyle(
            fontSize: 15.0,
            fontFamily: fontFamily,
            fontWeight: FontWeight.w600),
        bodyLarge: TextStyle(
            fontSize: 15.0,
            fontFamily: fontFamily,
            fontWeight: FontWeight.w400),
        bodyMedium: TextStyle(
            fontSize: 14.0,
            fontFamily: fontFamily,
            fontWeight: FontWeight.w400),
        bodySmall: TextStyle(
            fontSize: 11.0,
            fontFamily: fontFamily,
            fontWeight: FontWeight.w300),
        labelLarge: TextStyle(
            fontSize: 18.0,
            fontFamily: fontFamily,
            fontWeight: FontWeight.w600),
        labelSmall: TextStyle(
            fontSize: 12.0,
            fontFamily: fontFamily,
            fontWeight: FontWeight.w400),
      );

  TextTheme _copyTextTheme(TextTheme theme, Color color) => TextTheme(
        displayLarge: theme.displayLarge?.copyWith(color: color),
        displayMedium: theme.displayMedium?.copyWith(color: color),
        displaySmall: theme.displaySmall?.copyWith(color: color),
        headlineLarge: theme.headlineLarge?.copyWith(color: color),
        headlineMedium: theme.headlineMedium?.copyWith(color: color),
        headlineSmall: theme.headlineSmall?.copyWith(color: color),
        titleLarge: theme.titleLarge?.copyWith(color: color),
        titleMedium: theme.titleMedium?.copyWith(color: color),
        titleSmall: theme.titleSmall?.copyWith(color: color),
        bodyLarge: theme.bodyLarge?.copyWith(color: color),
        bodyMedium: theme.bodyMedium?.copyWith(color: color),
        bodySmall: theme.bodySmall?.copyWith(color: color),
        labelLarge: theme.labelLarge?.copyWith(color: color),
        labelMedium: theme.labelMedium?.copyWith(color: color),
        labelSmall: theme.labelSmall?.copyWith(color: color),
      );
}
