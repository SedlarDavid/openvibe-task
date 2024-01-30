import 'package:app/exports/pages.dart';
import 'package:app/models/message_model.dart';
import 'package:app/theme.dart';
import 'package:app/utils/utils.dart';
import 'package:flutter_control/control.dart';

class MessageTile extends ControllableWidget<MessageModel>
    with ThemeProvider<UITheme>, RouteControl {
  MessageTile({super.key, required super.control});

  @override
  Widget build(BuildContext context) {
    final previewText = control.value!.message.substring(
      0,
      control.value!.message.length ~/ 2,
    );
    return Container(
      margin: EdgeInsets.only(
        left: theme.padding,
        right: theme.padding,
        bottom: theme.padding,
      ),
      decoration: BoxDecoration(
          color: theme.backgroundColor,
          borderRadius: BorderRadius.circular(
            theme.borderRadiusSmall,
          ),
          boxShadow: [
            BoxShadow(
              color: theme.primaryColor.withOpacity(0.15),
              spreadRadius: 1,
              blurRadius: 5,
              offset: Offset(0, 1),
            ),
          ]),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(theme.borderRadiusSmall),
          splashColor: theme.primaryColor.withOpacity(.2),
          onTap: () => routeOf<MessagePage>()?.openRoute(
            args: {
              'id': control.value!.id,
            },
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: theme.paddingHalf,
                    top: theme.paddingHalf,
                    right: theme.paddingHalf),
                child: Row(
                  children: [
                    Text(
                      control.value!.icon,
                      style: theme.fontAccent.bodyMedium?.copyWith(fontSize: 20),
                    ),
                    SizedBox(
                      width: theme.padding,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          control.value!.nickname,
                          style: theme.fontAccent.bodyMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          Utils.formatMessageDate(control.value!.createdAt),
                          style: theme.fontAccent.bodyMedium,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: theme.paddingHalf,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: theme.paddingHalf),
                child: Text(
                  '$previewText...',
                  style: theme.fontAccent.bodyMedium,
                ),
              ),
              const _ActionRow(),
            ],
          ),
        ),
      ),
    );
  }
}

class _ActionRow extends StatelessWidget {
  const _ActionRow({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = ThemeProvider.of<UITheme>(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: theme.paddingHalf),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(theme.borderRadiusSmall),
          bottomRight: Radius.circular(theme.borderRadiusSmall),
        ),
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: <Color>[
            theme.backgroundColor.withOpacity(.6),
            theme.backgroundColor.withOpacity(.2),
            theme.primaryColor.withOpacity(.2),
            theme.primaryColor.withOpacity(.4),
            theme.primaryColor.withOpacity(.6),
          ],
          tileMode: TileMode.mirror,
        ),
      ),
      height: theme.paddingExtended,
      child: Align(
        alignment: Alignment.centerRight,
        child: Icon(
          Icons.keyboard_double_arrow_right,
          color: theme.backgroundColor,
        ),
      ),
    );
  }
}
