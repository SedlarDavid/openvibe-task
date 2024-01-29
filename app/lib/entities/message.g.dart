// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageImpl _$$MessageImplFromJson(Map<String, dynamic> json) =>
    _$MessageImpl(
      objectId: json['_non_'] as int?,
      id: json['id'] as String,
      message: json['message'] as String,
      nickname: json['nickname'] as String,
      icon: json['icon'] as String,
      createdAt: const TimestampSerializer().fromJson(json['createdAt'] as int),
    );

Map<String, dynamic> _$$MessageImplToJson(_$MessageImpl instance) =>
    <String, dynamic>{
      '_non_': instance.objectId,
      'id': instance.id,
      'message': instance.message,
      'nickname': instance.nickname,
      'icon': instance.icon,
      'createdAt': const TimestampSerializer().toJson(instance.createdAt),
    };
