import 'package:flutter_control/control.dart';

import 'exports/pages.dart';

class RouteProvider {
  static List<ControlRoute> get routes => [
        ControlRoute.build<MessagePage>(builder: (_) => MessagePage()),
      ];
}
