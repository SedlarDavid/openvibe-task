import 'package:app/theme.dart';
import 'package:flutter_control/control.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'control_provider.dart';
import 'exports/pages.dart';

const appName = "Example App";

Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ControlRoot.initControl(
      localization: LocalinoOptions(
        config: LocalinoConfig(
          locales: LocalinoAsset.map(locales: [
            'en',
            'cs',
          ]),
        ),
      ),
      entries: {
        ...ControlProvider.entries,
      },
      routes: const [],
    );

    return ControlRoot(
      theme: ThemeConfig<UITheme>(
        builder: (context) => UITheme(context is BuildContext ? context : null),
        themes: {
          Brightness.light: (theme) => theme.lightTheme,
        },
      ),
      states: [
        AppState.init.build((context) => AuthPage()),
        AppState.main.build((context) => MainPage()),
      ],
      app: (setup, home) => MaterialApp(
        key: setup.key,
        home: home,
        title: setup.title('app_name', appName),
        theme: setup.theme,
        builder: (context, child) => MediaQuery(
          data: MediaQuery.of(context).copyWith(
            textScaler: TextScaler.noScaling,
          ),
          child: child!,
        ),
        locale: setup.locale,
        supportedLocales: setup.supportedLocales,
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
