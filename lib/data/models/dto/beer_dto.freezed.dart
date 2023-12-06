// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'beer_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BeerDTO _$BeerDTOFromJson(Map<String, dynamic> json) {
  return _BeerDTO.fromJson(json);
}

/// @nodoc
mixin _$BeerDTO {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get rating => throw _privateConstructorUsedError;
  String get thumbImageUrl => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  BreweryDTO get brewery => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BeerDTOCopyWith<BeerDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BeerDTOCopyWith<$Res> {
  factory $BeerDTOCopyWith(BeerDTO value, $Res Function(BeerDTO) then) =
      _$BeerDTOCopyWithImpl<$Res, BeerDTO>;
  @useResult
  $Res call(
      {String id,
      String name,
      int rating,
      String thumbImageUrl,
      String imageUrl,
      BreweryDTO brewery});

  $BreweryDTOCopyWith<$Res> get brewery;
}

/// @nodoc
class _$BeerDTOCopyWithImpl<$Res, $Val extends BeerDTO>
    implements $BeerDTOCopyWith<$Res> {
  _$BeerDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? rating = null,
    Object? thumbImageUrl = null,
    Object? imageUrl = null,
    Object? brewery = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      thumbImageUrl: null == thumbImageUrl
          ? _value.thumbImageUrl
          : thumbImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      brewery: null == brewery
          ? _value.brewery
          : brewery // ignore: cast_nullable_to_non_nullable
              as BreweryDTO,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BreweryDTOCopyWith<$Res> get brewery {
    return $BreweryDTOCopyWith<$Res>(_value.brewery, (value) {
      return _then(_value.copyWith(brewery: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BeerDTOImplCopyWith<$Res> implements $BeerDTOCopyWith<$Res> {
  factory _$$BeerDTOImplCopyWith(
          _$BeerDTOImpl value, $Res Function(_$BeerDTOImpl) then) =
      __$$BeerDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      int rating,
      String thumbImageUrl,
      String imageUrl,
      BreweryDTO brewery});

  @override
  $BreweryDTOCopyWith<$Res> get brewery;
}

/// @nodoc
class __$$BeerDTOImplCopyWithImpl<$Res>
    extends _$BeerDTOCopyWithImpl<$Res, _$BeerDTOImpl>
    implements _$$BeerDTOImplCopyWith<$Res> {
  __$$BeerDTOImplCopyWithImpl(
      _$BeerDTOImpl _value, $Res Function(_$BeerDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? rating = null,
    Object? thumbImageUrl = null,
    Object? imageUrl = null,
    Object? brewery = null,
  }) {
    return _then(_$BeerDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      thumbImageUrl: null == thumbImageUrl
          ? _value.thumbImageUrl
          : thumbImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      brewery: null == brewery
          ? _value.brewery
          : brewery // ignore: cast_nullable_to_non_nullable
              as BreweryDTO,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BeerDTOImpl implements _BeerDTO {
  const _$BeerDTOImpl(
      {required this.id,
      required this.name,
      required this.rating,
      required this.thumbImageUrl,
      required this.imageUrl,
      required this.brewery});

  factory _$BeerDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$BeerDTOImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final int rating;
  @override
  final String thumbImageUrl;
  @override
  final String imageUrl;
  @override
  final BreweryDTO brewery;

  @override
  String toString() {
    return 'BeerDTO(id: $id, name: $name, rating: $rating, thumbImageUrl: $thumbImageUrl, imageUrl: $imageUrl, brewery: $brewery)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BeerDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.thumbImageUrl, thumbImageUrl) ||
                other.thumbImageUrl == thumbImageUrl) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.brewery, brewery) || other.brewery == brewery));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, rating, thumbImageUrl, imageUrl, brewery);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BeerDTOImplCopyWith<_$BeerDTOImpl> get copyWith =>
      __$$BeerDTOImplCopyWithImpl<_$BeerDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BeerDTOImplToJson(
      this,
    );
  }
}

abstract class _BeerDTO implements BeerDTO {
  const factory _BeerDTO(
      {required final String id,
      required final String name,
      required final int rating,
      required final String thumbImageUrl,
      required final String imageUrl,
      required final BreweryDTO brewery}) = _$BeerDTOImpl;

  factory _BeerDTO.fromJson(Map<String, dynamic> json) = _$BeerDTOImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  int get rating;
  @override
  String get thumbImageUrl;
  @override
  String get imageUrl;
  @override
  BreweryDTO get brewery;
  @override
  @JsonKey(ignore: true)
  _$$BeerDTOImplCopyWith<_$BeerDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
