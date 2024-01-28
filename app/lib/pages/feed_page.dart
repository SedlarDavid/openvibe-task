import 'package:flutter_control/control.dart';

import '../exports/controls.dart';

class FeedPage extends SingleControlWidget<FeedControl> {
  FeedPage({super.key});

  @override
  FeedControl initControl() => FeedControl();

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
