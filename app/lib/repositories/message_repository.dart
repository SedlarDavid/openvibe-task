import 'package:app/objectbox.g.dart';

import '../entities/message.dart';
import 'repository.dart';

class MessageRepository extends Repository<Message> {
  MessageRepository(super.box);

  @override
  Query<Message> createQuery(String id) =>
      box.query(Message_.id.equals(id)).build();
}
