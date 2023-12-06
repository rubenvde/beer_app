// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'beers_result_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BeersResultDTO _$BeersResultDTOFromJson(Map<String, dynamic> json) {
  return _BeersResultDTO.fromJson(json);
}

/// @nodoc
mixin _$BeersResultDTO {
  BeersResultMetaDTO get meta => throw _privateConstructorUsedError;
  List<BeerDTO> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BeersResultDTOCopyWith<BeersResultDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BeersResultDTOCopyWith<$Res> {
  factory $BeersResultDTOCopyWith(
          BeersResultDTO value, $Res Function(BeersResultDTO) then) =
      _$BeersResultDTOCopyWithImpl<$Res, BeersResultDTO>;
  @useResult
  $Res call({BeersResultMetaDTO meta, List<BeerDTO> data});

  $BeersResultMetaDTOCopyWith<$Res> get meta;
}

/// @nodoc
class _$BeersResultDTOCopyWithImpl<$Res, $Val extends BeersResultDTO>
    implements $BeersResultDTOCopyWith<$Res> {
  _$BeersResultDTOCopyWithImpl(this._value, this._then);

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
              as BeersResultMetaDTO,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<BeerDTO>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BeersResultMetaDTOCopyWith<$Res> get meta {
    return $BeersResultMetaDTOCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BeersResultDTOImplCopyWith<$Res>
    implements $BeersResultDTOCopyWith<$Res> {
  factory _$$BeersResultDTOImplCopyWith(_$BeersResultDTOImpl value,
          $Res Function(_$BeersResultDTOImpl) then) =
      __$$BeersResultDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BeersResultMetaDTO meta, List<BeerDTO> data});

  @override
  $BeersResultMetaDTOCopyWith<$Res> get meta;
}

/// @nodoc
class __$$BeersResultDTOImplCopyWithImpl<$Res>
    extends _$BeersResultDTOCopyWithImpl<$Res, _$BeersResultDTOImpl>
    implements _$$BeersResultDTOImplCopyWith<$Res> {
  __$$BeersResultDTOImplCopyWithImpl(
      _$BeersResultDTOImpl _value, $Res Function(_$BeersResultDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meta = null,
    Object? data = null,
  }) {
    return _then(_$BeersResultDTOImpl(
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as BeersResultMetaDTO,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<BeerDTO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BeersResultDTOImpl implements _BeersResultDTO {
  const _$BeersResultDTOImpl(
      {required this.meta, required final List<BeerDTO> data})
      : _data = data;

  factory _$BeersResultDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$BeersResultDTOImplFromJson(json);

  @override
  final BeersResultMetaDTO meta;
  final List<BeerDTO> _data;
  @override
  List<BeerDTO> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'BeersResultDTO(meta: $meta, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BeersResultDTOImpl &&
            (identical(other.meta, meta) || other.meta == meta) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, meta, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BeersResultDTOImplCopyWith<_$BeersResultDTOImpl> get copyWith =>
      __$$BeersResultDTOImplCopyWithImpl<_$BeersResultDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BeersResultDTOImplToJson(
      this,
    );
  }
}

abstract class _BeersResultDTO implements BeersResultDTO {
  const factory _BeersResultDTO(
      {required final BeersResultMetaDTO meta,
      required final List<BeerDTO> data}) = _$BeersResultDTOImpl;

  factory _BeersResultDTO.fromJson(Map<String, dynamic> json) =
      _$BeersResultDTOImpl.fromJson;

  @override
  BeersResultMetaDTO get meta;
  @override
  List<BeerDTO> get data;
  @override
  @JsonKey(ignore: true)
  _$$BeersResultDTOImplCopyWith<_$BeersResultDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BeersResultMetaDTO _$BeersResultMetaDTOFromJson(Map<String, dynamic> json) {
  return _BeersResultMetaDTO.fromJson(json);
}

/// @nodoc
mixin _$BeersResultMetaDTO {
  int get count => throw _privateConstructorUsedError;
  int get totalCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BeersResultMetaDTOCopyWith<BeersResultMetaDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BeersResultMetaDTOCopyWith<$Res> {
  factory $BeersResultMetaDTOCopyWith(
          BeersResultMetaDTO value, $Res Function(BeersResultMetaDTO) then) =
      _$BeersResultMetaDTOCopyWithImpl<$Res, BeersResultMetaDTO>;
  @useResult
  $Res call({int count, int totalCount});
}

/// @nodoc
class _$BeersResultMetaDTOCopyWithImpl<$Res, $Val extends BeersResultMetaDTO>
    implements $BeersResultMetaDTOCopyWith<$Res> {
  _$BeersResultMetaDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? totalCount = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BeersResultMetaDTOImplCopyWith<$Res>
    implements $BeersResultMetaDTOCopyWith<$Res> {
  factory _$$BeersResultMetaDTOImplCopyWith(_$BeersResultMetaDTOImpl value,
          $Res Function(_$BeersResultMetaDTOImpl) then) =
      __$$BeersResultMetaDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count, int totalCount});
}

/// @nodoc
class __$$BeersResultMetaDTOImplCopyWithImpl<$Res>
    extends _$BeersResultMetaDTOCopyWithImpl<$Res, _$BeersResultMetaDTOImpl>
    implements _$$BeersResultMetaDTOImplCopyWith<$Res> {
  __$$BeersResultMetaDTOImplCopyWithImpl(_$BeersResultMetaDTOImpl _value,
      $Res Function(_$BeersResultMetaDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? totalCount = null,
  }) {
    return _then(_$BeersResultMetaDTOImpl(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BeersResultMetaDTOImpl implements _BeersResultMetaDTO {
  const _$BeersResultMetaDTOImpl(
      {required this.count, required this.totalCount});

  factory _$BeersResultMetaDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$BeersResultMetaDTOImplFromJson(json);

  @override
  final int count;
  @override
  final int totalCount;

  @override
  String toString() {
    return 'BeersResultMetaDTO(count: $count, totalCount: $totalCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BeersResultMetaDTOImpl &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, count, totalCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BeersResultMetaDTOImplCopyWith<_$BeersResultMetaDTOImpl> get copyWith =>
      __$$BeersResultMetaDTOImplCopyWithImpl<_$BeersResultMetaDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BeersResultMetaDTOImplToJson(
      this,
    );
  }
}

abstract class _BeersResultMetaDTO implements BeersResultMetaDTO {
  const factory _BeersResultMetaDTO(
      {required final int count,
      required final int totalCount}) = _$BeersResultMetaDTOImpl;

  factory _BeersResultMetaDTO.fromJson(Map<String, dynamic> json) =
      _$BeersResultMetaDTOImpl.fromJson;

  @override
  int get count;
  @override
  int get totalCount;
  @override
  @JsonKey(ignore: true)
  _$$BeersResultMetaDTOImplCopyWith<_$BeersResultMetaDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
