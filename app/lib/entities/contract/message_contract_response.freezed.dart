// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_contract_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MessageContractResponse _$MessageContractResponseFromJson(
    Map<String, dynamic> json) {
  return _MessageContractResponse.fromJson(json);
}

/// @nodoc
mixin _$MessageContractResponse {
  String get id => throw _privateConstructorUsedError;
  Message get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageContractResponseCopyWith<MessageContractResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageContractResponseCopyWith<$Res> {
  factory $MessageContractResponseCopyWith(MessageContractResponse value,
          $Res Function(MessageContractResponse) then) =
      _$MessageContractResponseCopyWithImpl<$Res, MessageContractResponse>;
  @useResult
  $Res call({String id, Message message});

  $MessageCopyWith<$Res> get message;
}

/// @nodoc
class _$MessageContractResponseCopyWithImpl<$Res,
        $Val extends MessageContractResponse>
    implements $MessageContractResponseCopyWith<$Res> {
  _$MessageContractResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MessageCopyWith<$Res> get message {
    return $MessageCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MessageContractResponseImplCopyWith<$Res>
    implements $MessageContractResponseCopyWith<$Res> {
  factory _$$MessageContractResponseImplCopyWith(
          _$MessageContractResponseImpl value,
          $Res Function(_$MessageContractResponseImpl) then) =
      __$$MessageContractResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, Message message});

  @override
  $MessageCopyWith<$Res> get message;
}

/// @nodoc
class __$$MessageContractResponseImplCopyWithImpl<$Res>
    extends _$MessageContractResponseCopyWithImpl<$Res,
        _$MessageContractResponseImpl>
    implements _$$MessageContractResponseImplCopyWith<$Res> {
  __$$MessageContractResponseImplCopyWithImpl(
      _$MessageContractResponseImpl _value,
      $Res Function(_$MessageContractResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? message = null,
  }) {
    return _then(_$MessageContractResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageContractResponseImpl
    with DiagnosticableTreeMixin
    implements _MessageContractResponse {
  const _$MessageContractResponseImpl(
      {required this.id, required this.message});

  factory _$MessageContractResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageContractResponseImplFromJson(json);

  @override
  final String id;
  @override
  final Message message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MessageContractResponse(id: $id, message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MessageContractResponse'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageContractResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageContractResponseImplCopyWith<_$MessageContractResponseImpl>
      get copyWith => __$$MessageContractResponseImplCopyWithImpl<
          _$MessageContractResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageContractResponseImplToJson(
      this,
    );
  }
}

abstract class _MessageContractResponse implements MessageContractResponse {
  const factory _MessageContractResponse(
      {required final String id,
      required final Message message}) = _$MessageContractResponseImpl;

  factory _MessageContractResponse.fromJson(Map<String, dynamic> json) =
      _$MessageContractResponseImpl.fromJson;

  @override
  String get id;
  @override
  Message get message;
  @override
  @JsonKey(ignore: true)
  _$$MessageContractResponseImplCopyWith<_$MessageContractResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
