import 'package:flutter_control/control.dart';

import '../exports/controls.dart';
import '../exports/widgets.dart';

class MainPage extends SingleControlWidget<MainControl> {
  MainPage({super.key});

  @override
  MainControl initControl() => MainControl();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppHeader(),
      body: SafeArea(
        child: Builder(builder: (context) {
          ControlScope.root.context = context;
          return NavigatorStack.menu(
            control: control.navigation,
            items: control.menuItems,
          );
        }),
      ),
      bottomNavigationBar: ControlBuilder<int>(
        control: control.navigation.pageIndex,
        builder: (context, index) => BottomNavigationBar(
          onTap: control.navigation.setPageIndex,
          currentIndex: index,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.feed,
              ),
              label: 'Feed',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: 'User',
            ),
          ],
        ),
      ),
    );
  }
}
