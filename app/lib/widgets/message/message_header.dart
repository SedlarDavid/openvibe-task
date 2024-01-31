import 'package:app/entities/message.dart';
import 'package:app/theme.dart';
import 'package:flutter_control/control.dart';

import '../../utils/utils.dart';

class MessageHeader extends StatelessWidget {
  final Message message;
  final double imageSize;
  final bool fullFormatDate;

  const MessageHeader({
    super.key,
    required this.message,
    this.imageSize = 20.0,
    this.fullFormatDate = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = ThemeProvider.of<UITheme>(context);
    return Row(
      children: [
        Text(
          message.icon,
          style: theme.fontAccent.bodyMedium?.copyWith(
            fontSize: imageSize,
          ),
        ),
        SizedBox(
          width: theme.padding,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              message.nickname,
              style: theme.fontAccent.bodyMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              Utils.formatMessageDate(
                message.createdAt,
                fullFormatDate: fullFormatDate,
              ),
              style: theme.fontAccent.bodyMedium,
            ),
          ],
        ),
      ],
    );
  }
}
