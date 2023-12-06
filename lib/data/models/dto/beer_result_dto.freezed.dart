// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'beer_result_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BeerResultDTO _$BeerResultDTOFromJson(Map<String, dynamic> json) {
  return _BeerResultDTO.fromJson(json);
}

/// @nodoc
mixin _$BeerResultDTO {
  BeerResultMetaDTO get meta => throw _privateConstructorUsedError;
  BeerDTO get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BeerResultDTOCopyWith<BeerResultDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BeerResultDTOCopyWith<$Res> {
  factory $BeerResultDTOCopyWith(
          BeerResultDTO value, $Res Function(BeerResultDTO) then) =
      _$BeerResultDTOCopyWithImpl<$Res, BeerResultDTO>;
  @useResult
  $Res call({BeerResultMetaDTO meta, BeerDTO data});

  $BeerResultMetaDTOCopyWith<$Res> get meta;
  $BeerDTOCopyWith<$Res> get data;
}

/// @nodoc
class _$BeerResultDTOCopyWithImpl<$Res, $Val extends BeerResultDTO>
    implements $BeerResultDTOCopyWith<$Res> {
  _$BeerResultDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meta = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as BeerResultMetaDTO,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as BeerDTO,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BeerResultMetaDTOCopyWith<$Res> get meta {
    return $BeerResultMetaDTOCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BeerDTOCopyWith<$Res> get data {
    return $BeerDTOCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BeerResultDTOImplCopyWith<$Res>
    implements $BeerResultDTOCopyWith<$Res> {
  factory _$$BeerResultDTOImplCopyWith(
          _$BeerResultDTOImpl value, $Res Function(_$BeerResultDTOImpl) then) =
      __$$BeerResultDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BeerResultMetaDTO meta, BeerDTO data});

  @override
  $BeerResultMetaDTOCopyWith<$Res> get meta;
  @override
  $BeerDTOCopyWith<$Res> get data;
}

/// @nodoc
class __$$BeerResultDTOImplCopyWithImpl<$Res>
    extends _$BeerResultDTOCopyWithImpl<$Res, _$BeerResultDTOImpl>
    implements _$$BeerResultDTOImplCopyWith<$Res> {
  __$$BeerResultDTOImplCopyWithImpl(
      _$BeerResultDTOImpl _value, $Res Function(_$BeerResultDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meta = null,
    Object? data = null,
  }) {
    return _then(_$BeerResultDTOImpl(
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as BeerResultMetaDTO,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as BeerDTO,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BeerResultDTOImpl implements _BeerResultDTO {
  const _$BeerResultDTOImpl({required this.meta, required this.data});

  factory _$BeerResultDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$BeerResultDTOImplFromJson(json);

  @override
  final BeerResultMetaDTO meta;
  @override
  final BeerDTO data;

  @override
  String toString() {
    return 'BeerResultDTO(meta: $meta, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BeerResultDTOImpl &&
            (identical(other.meta, meta) || other.meta == meta) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, meta, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BeerResultDTOImplCopyWith<_$BeerResultDTOImpl> get copyWith =>
      __$$BeerResultDTOImplCopyWithImpl<_$BeerResultDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BeerResultDTOImplToJson(
      this,
    );
  }
}

abstract class _BeerResultDTO implements BeerResultDTO {
  const factory _BeerResultDTO(
      {required final BeerResultMetaDTO meta,
      required final BeerDTO data}) = _$BeerResultDTOImpl;

  factory _BeerResultDTO.fromJson(Map<String, dynamic> json) =
      _$BeerResultDTOImpl.fromJson;

  @override
  BeerResultMetaDTO get meta;
  @override
  BeerDTO get data;
  @override
  @JsonKey(ignore: true)
  _$$BeerResultDTOImplCopyWith<_$BeerResultDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BeerResultMetaDTO _$BeerResultMetaDTOFromJson(Map<String, dynamic> json) {
  return _BeerResultMetaDTO.fromJson(json);
}

/// @nodoc
mixin _$BeerResultMetaDTO {
  String get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BeerResultMetaDTOCopyWith<BeerResultMetaDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BeerResultMetaDTOCopyWith<$Res> {
  factory $BeerResultMetaDTOCopyWith(
          BeerResultMetaDTO value, $Res Function(BeerResultMetaDTO) then) =
      _$BeerResultMetaDTOCopyWithImpl<$Res, BeerResultMetaDTO>;
  @useResult
  $Res call({String type});
}

/// @nodoc
class _$BeerResultMetaDTOCopyWithImpl<$Res, $Val extends BeerResultMetaDTO>
    implements $BeerResultMetaDTOCopyWith<$Res> {
  _$BeerResultMetaDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BeerResultMetaDTOImplCopyWith<$Res>
    implements $BeerResultMetaDTOCopyWith<$Res> {
  factory _$$BeerResultMetaDTOImplCopyWith(_$BeerResultMetaDTOImpl value,
          $Res Function(_$BeerResultMetaDTOImpl) then) =
      __$$BeerResultMetaDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type});
}

/// @nodoc
class __$$BeerResultMetaDTOImplCopyWithImpl<$Res>
    extends _$BeerResultMetaDTOCopyWithImpl<$Res, _$BeerResultMetaDTOImpl>
    implements _$$BeerResultMetaDTOImplCopyWith<$Res> {
  __$$BeerResultMetaDTOImplCopyWithImpl(_$BeerResultMetaDTOImpl _value,
      $Res Function(_$BeerResultMetaDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$BeerResultMetaDTOImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BeerResultMetaDTOImpl implements _BeerResultMetaDTO {
  const _$BeerResultMetaDTOImpl({required this.type});

  factory _$BeerResultMetaDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$BeerResultMetaDTOImplFromJson(json);

  @override
  final String type;

  @override
  String toString() {
    return 'BeerResultMetaDTO(type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BeerResultMetaDTOImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BeerResultMetaDTOImplCopyWith<_$BeerResultMetaDTOImpl> get copyWith =>
      __$$BeerResultMetaDTOImplCopyWithImpl<_$BeerResultMetaDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BeerResultMetaDTOImplToJson(
      this,
    );
  }
}

abstract class _BeerResultMetaDTO implements BeerResultMetaDTO {
  const factory _BeerResultMetaDTO({required final String type}) =
      _$BeerResultMetaDTOImpl;

  factory _BeerResultMetaDTO.fromJson(Map<String, dynamic> json) =
      _$BeerResultMetaDTOImpl.fromJson;

  @override
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$BeerResultMetaDTOImplCopyWith<_$BeerResultMetaDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
