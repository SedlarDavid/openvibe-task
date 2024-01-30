import 'package:app/models/user_page_card_model.dart';
import 'package:app/theme.dart';
import 'package:flutter_control/control.dart';

class UserPageCard<T> extends ControllableWidget<UserPageCardModel<T>>
    with ThemeProvider<UITheme>, LocalinoProvider {
  UserPageCard({super.key, required super.control});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: theme.padding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            localize(control.cardTitle),
            style: theme.fontAccent.headlineSmall,
          ),
          SizedBox(
            height: theme.paddingQuad,
          ),
          DecoratedBox(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  theme.borderRadiusSmall,
                ),
                border: Border.all(
                  color: theme.primaryColor,
                )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  control.onLabelChanged(control.value!),
                  style: theme.fontAccent.bodyMedium,
                ),
                OutlinedButton(
                  onPressed: () {
                    control.onButtonPressed();
                    if (control.snackbarContent != null) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor: theme.primaryColor,
                          content: control.snackbarContent!,
                        ),
                      );
                    }
                  },
                  child: Text(
                    localize(
                      'clear_storage',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
