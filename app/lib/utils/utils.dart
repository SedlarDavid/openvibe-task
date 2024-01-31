import 'package:flutter_control/control.dart';
import 'package:intl/intl.dart';

class Utils with LocalinoProvider {
  static String formatMessageDate(DateTime createdAt,
      {bool fullFormatDate = false}) {
    var diff = DateTime.now().difference(createdAt);

    if (fullFormatDate) {
      return DateFormat.yMd(
              LocalinoProvider.instance.currentLocale.languageCode)
          .format(createdAt);
    }

    switch (diff) {
      case <= const Duration(minutes: 60):
        return '${diff.inMinutes}m';
      case > const Duration(minutes: 60) && <= const Duration(days: 7):
        return '${diff.inDays}d';
      default:
        return DateFormat.yMd(
                LocalinoProvider.instance.currentLocale.languageCode)
            .format(createdAt);
    }
  }
}
