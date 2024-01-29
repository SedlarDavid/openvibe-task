import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:objectbox/objectbox.dart';

import '../utils/timestamp_serializer.dart';
import 'id_entity.dart';

part 'message.freezed.dart';

part 'message.g.dart';

@freezed
class Message with IdEntity, _$Message {
  @Entity(realClass: Message)
  const factory Message({
    @Id(assignable: true) @JsonKey(name: '_non_') int? objectId,
    @Index() required String id,
    required String message,
    required String nickname,
    required String icon,
    @TimestampSerializer() required DateTime createdAt,
  }) = _Message;

  factory Message.fromJson(Map<String, Object?> json) =>
      _$MessageFromJson(json);
}
