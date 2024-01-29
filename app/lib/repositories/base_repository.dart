import '../entities/message.dart';
import '../object_box.dart';
import '../objectbox.g.dart';
import 'message_repository.dart';

class BaseRepository {
  static late final ObjectBox _objectBox;

  MessageRepository? _message;

  //TODO load without sockets

  MessageRepository get message => _message ??= MessageRepository(
        _createBox<Message>(),
      );

  Future<void> initialize() async {
    _objectBox = await ObjectBox.create();
  }

  Box<T> _createBox<T>() => _objectBox.store.box<T>();
}
