// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_contract_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageContractResponseImpl _$$MessageContractResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$MessageContractResponseImpl(
      id: json['id'] as String,
      message: Message.fromJson(json['message'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MessageContractResponseImplToJson(
        _$MessageContractResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'message': instance.message,
    };
