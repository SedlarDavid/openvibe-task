import 'package:flutter_control/control.dart';

import '../exports/pages.dart';

class MainControl extends BaseControl {
  final navigation = NavigatorStackControl(initialPageIndex: 0);

  late final Map<NavItem, WidgetBuilder> menuItems = {
    NavItem(
      key: 'feed',
      titleBuilder: (_) => 'feed',
      iconBuilder: (selected) => 'feed',
    ): (context) => FeedPage(),
    NavItem(
      key: 'user',
      titleBuilder: (_) => 'user',
      iconBuilder: (selected) => 'user',
    ): (context) => UserPage(),
  };

  @override
  void dispose() {
    navigation.dispose();
    super.dispose();
  }
}
