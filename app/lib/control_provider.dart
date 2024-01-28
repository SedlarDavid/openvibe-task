import 'services/message_service.dart';

//DI
class ControlProvider {
  static Map get entries => {
        MessageService: MessageService(),
      };
}
