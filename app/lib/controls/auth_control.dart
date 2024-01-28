import 'package:flutter_control/control.dart';

class AuthControl extends InitLoaderControl {
  @override
  Future<dynamic> load() async {
    var state = await _mockAuthCheck();
    return state;
  }

  Future<void> _mockAuthCheck() async => await Future.delayed(
        const Duration(milliseconds: 3000),
        () => AppState.main,
      );
}
