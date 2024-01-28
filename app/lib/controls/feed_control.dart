import 'package:app/entities/message.dart';
import 'package:control_core/core.dart';

class FeedControl extends BaseControl {
  final messages = ListControl<Message>();

  @override
  void onInit(Map args) {
    super.onInit(args);

    _load();
  }

  Future<void> _load() async {
    await Future.delayed(const Duration(milliseconds: 5000));
    messages.addAll(
      List.generate(
        10,
        (index) => Message(
          id: index.toString(),
          message: 'messsage_$index',
          nickname: 'nickname_$index',
          icon: '$index',
          createdAt: DateTime.now(),
        ),
      ),
    );
  }

  @override
  void dispose() {
    messages.dispose();
    super.dispose();
  }
}
