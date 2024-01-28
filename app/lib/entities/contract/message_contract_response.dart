import 'dart:convert';

import 'package:app/entities/message.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'message_contract_response.freezed.dart';

part 'message_contract_response.g.dart';

@freezed
class MessageContractResponse with _$MessageContractResponse {
  const factory MessageContractResponse({
    required String id,
    required Message message,
  }) = _MessageContractResponse;

  factory MessageContractResponse.fromJson(Map<String, Object?> json) =>
      _$MessageContractResponseFromJson(json);

  factory MessageContractResponse.fromSink(String data) {
    var decoded = jsonDecode(data) as List<dynamic>;
    return MessageContractResponse(
      id: decoded.first as String,
      message: Message.fromJson(
        decoded.last,
      ),
    );
  }
}
