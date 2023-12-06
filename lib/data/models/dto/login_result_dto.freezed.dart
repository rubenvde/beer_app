// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_result_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginResultDTO _$LoginResultDTOFromJson(Map<String, dynamic> json) {
  return _LoginResultDTO.fromJson(json);
}

/// @nodoc
mixin _$LoginResultDTO {
  LoginResultDataDTO get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginResultDTOCopyWith<LoginResultDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginResultDTOCopyWith<$Res> {
  factory $LoginResultDTOCopyWith(
          LoginResultDTO value, $Res Function(LoginResultDTO) then) =
      _$LoginResultDTOCopyWithImpl<$Res, LoginResultDTO>;
  @useResult
  $Res call({LoginResultDataDTO data});

  $LoginResultDataDTOCopyWith<$Res> get data;
}

/// @nodoc
class _$LoginResultDTOCopyWithImpl<$Res, $Val extends LoginResultDTO>
    implements $LoginResultDTOCopyWith<$Res> {
  _$LoginResultDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as LoginResultDataDTO,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LoginResultDataDTOCopyWith<$Res> get data {
    return $LoginResultDataDTOCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoginResultDTOImplCopyWith<$Res>
    implements $LoginResultDTOCopyWith<$Res> {
  factory _$$LoginResultDTOImplCopyWith(_$LoginResultDTOImpl value,
          $Res Function(_$LoginResultDTOImpl) then) =
      __$$LoginResultDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LoginResultDataDTO data});

  @override
  $LoginResultDataDTOCopyWith<$Res> get data;
}

/// @nodoc
class __$$LoginResultDTOImplCopyWithImpl<$Res>
    extends _$LoginResultDTOCopyWithImpl<$Res, _$LoginResultDTOImpl>
    implements _$$LoginResultDTOImplCopyWith<$Res> {
  __$$LoginResultDTOImplCopyWithImpl(
      _$LoginResultDTOImpl _value, $Res Function(_$LoginResultDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$LoginResultDTOImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as LoginResultDataDTO,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginResultDTOImpl implements _LoginResultDTO {
  const _$LoginResultDTOImpl({required this.data});

  factory _$LoginResultDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginResultDTOImplFromJson(json);

  @override
  final LoginResultDataDTO data;

  @override
  String toString() {
    return 'LoginResultDTO(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginResultDTOImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginResultDTOImplCopyWith<_$LoginResultDTOImpl> get copyWith =>
      __$$LoginResultDTOImplCopyWithImpl<_$LoginResultDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginResultDTOImplToJson(
      this,
    );
  }
}

abstract class _LoginResultDTO implements LoginResultDTO {
  const factory _LoginResultDTO({required final LoginResultDataDTO data}) =
      _$LoginResultDTOImpl;

  factory _LoginResultDTO.fromJson(Map<String, dynamic> json) =
      _$LoginResultDTOImpl.fromJson;

  @override
  LoginResultDataDTO get data;
  @override
  @JsonKey(ignore: true)
  _$$LoginResultDTOImplCopyWith<_$LoginResultDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LoginResultDataDTO _$LoginResultDataDTOFromJson(Map<String, dynamic> json) {
  return _LoginResultDataDTO.fromJson(json);
}

/// @nodoc
mixin _$LoginResultDataDTO {
  String get accessToken => throw _privateConstructorUsedError;
  String get refreshToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginResultDataDTOCopyWith<LoginResultDataDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginResultDataDTOCopyWith<$Res> {
  factory $LoginResultDataDTOCopyWith(
          LoginResultDataDTO value, $Res Function(LoginResultDataDTO) then) =
      _$LoginResultDataDTOCopyWithImpl<$Res, LoginResultDataDTO>;
  @useResult
  $Res call({String accessToken, String refreshToken});
}

/// @nodoc
class _$LoginResultDataDTOCopyWithImpl<$Res, $Val extends LoginResultDataDTO>
    implements $LoginResultDataDTOCopyWith<$Res> {
  _$LoginResultDataDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
  }) {
    return _then(_value.copyWith(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginResultDataDTOImplCopyWith<$Res>
    implements $LoginResultDataDTOCopyWith<$Res> {
  factory _$$LoginResultDataDTOImplCopyWith(_$LoginResultDataDTOImpl value,
          $Res Function(_$LoginResultDataDTOImpl) then) =
      __$$LoginResultDataDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String accessToken, String refreshToken});
}

/// @nodoc
class __$$LoginResultDataDTOImplCopyWithImpl<$Res>
    extends _$LoginResultDataDTOCopyWithImpl<$Res, _$LoginResultDataDTOImpl>
    implements _$$LoginResultDataDTOImplCopyWith<$Res> {
  __$$LoginResultDataDTOImplCopyWithImpl(_$LoginResultDataDTOImpl _value,
      $Res Function(_$LoginResultDataDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
  }) {
    return _then(_$LoginResultDataDTOImpl(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginResultDataDTOImpl implements _LoginResultDataDTO {
  const _$LoginResultDataDTOImpl(
      {required this.accessToken, required this.refreshToken});

  factory _$LoginResultDataDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginResultDataDTOImplFromJson(json);

  @override
  final String accessToken;
  @override
  final String refreshToken;

  @override
  String toString() {
    return 'LoginResultDataDTO(accessToken: $accessToken, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginResultDataDTOImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken, refreshToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginResultDataDTOImplCopyWith<_$LoginResultDataDTOImpl> get copyWith =>
      __$$LoginResultDataDTOImplCopyWithImpl<_$LoginResultDataDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginResultDataDTOImplToJson(
      this,
    );
  }
}

abstract class _LoginResultDataDTO implements LoginResultDataDTO {
  const factory _LoginResultDataDTO(
      {required final String accessToken,
      required final String refreshToken}) = _$LoginResultDataDTOImpl;

  factory _LoginResultDataDTO.fromJson(Map<String, dynamic> json) =
      _$LoginResultDataDTOImpl.fromJson;

  @override
  String get accessToken;
  @override
  String get refreshToken;
  @override
  @JsonKey(ignore: true)
  _$$LoginResultDataDTOImplCopyWith<_$LoginResultDataDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
