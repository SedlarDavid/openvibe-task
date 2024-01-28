// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageImpl _$$MessageImplFromJson(Map<String, dynamic> json) =>
    _$MessageImpl(
      id: json['id'] as String,
      message: json['message'] as String,
      nickname: json['nickname'] as String,
      icon: json['icon'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$MessageImplToJson(_$MessageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'message': instance.message,
      'nickname': instance.nickname,
      'icon': instance.icon,
      'createdAt': instance.createdAt.toIso8601String(),
    };
