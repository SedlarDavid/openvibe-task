import 'package:flutter_control/control.dart';

class UserPageCardModel<T> extends BaseModel with ObservableComponent<T> {
  final String cardTitle;
  final String Function(T value) onLabelChanged;
  final VoidCallback onButtonPressed;
  final Widget? snackbarContent;

  UserPageCardModel(
    T initial, {
    required this.cardTitle,
    required this.onLabelChanged,
    required this.onButtonPressed,
    required this.snackbarContent,
  }) {
    value = initial;
  }
}
