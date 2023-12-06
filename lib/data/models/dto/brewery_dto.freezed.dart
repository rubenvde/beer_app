// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'brewery_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BreweryDTO _$BreweryDTOFromJson(Map<String, dynamic> json) {
  return _BreweryDTO.fromJson(json);
}

/// @nodoc
mixin _$BreweryDTO {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BreweryDTOCopyWith<BreweryDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BreweryDTOCopyWith<$Res> {
  factory $BreweryDTOCopyWith(
          BreweryDTO value, $Res Function(BreweryDTO) then) =
      _$BreweryDTOCopyWithImpl<$Res, BreweryDTO>;
  @useResult
  $Res call(
      {String id, String name, String address, String city, String country});
}

/// @nodoc
class _$BreweryDTOCopyWithImpl<$Res, $Val extends BreweryDTO>
    implements $BreweryDTOCopyWith<$Res> {
  _$BreweryDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? address = null,
    Object? city = null,
    Object? country = null,
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
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BreweryDTOImplCopyWith<$Res>
    implements $BreweryDTOCopyWith<$Res> {
  factory _$$BreweryDTOImplCopyWith(
          _$BreweryDTOImpl value, $Res Function(_$BreweryDTOImpl) then) =
      __$$BreweryDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String name, String address, String city, String country});
}

/// @nodoc
class __$$BreweryDTOImplCopyWithImpl<$Res>
    extends _$BreweryDTOCopyWithImpl<$Res, _$BreweryDTOImpl>
    implements _$$BreweryDTOImplCopyWith<$Res> {
  __$$BreweryDTOImplCopyWithImpl(
      _$BreweryDTOImpl _value, $Res Function(_$BreweryDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? address = null,
    Object? city = null,
    Object? country = null,
  }) {
    return _then(_$BreweryDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BreweryDTOImpl implements _BreweryDTO {
  const _$BreweryDTOImpl(
      {required this.id,
      required this.name,
      required this.address,
      required this.city,
      required this.country});

  factory _$BreweryDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$BreweryDTOImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String address;
  @override
  final String city;
  @override
  final String country;

  @override
  String toString() {
    return 'BreweryDTO(id: $id, name: $name, address: $address, city: $city, country: $country)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BreweryDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.country, country) || other.country == country));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, address, city, country);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BreweryDTOImplCopyWith<_$BreweryDTOImpl> get copyWith =>
      __$$BreweryDTOImplCopyWithImpl<_$BreweryDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BreweryDTOImplToJson(
      this,
    );
  }
}

abstract class _BreweryDTO implements BreweryDTO {
  const factory _BreweryDTO(
      {required final String id,
      required final String name,
      required final String address,
      required final String city,
      required final String country}) = _$BreweryDTOImpl;

  factory _BreweryDTO.fromJson(Map<String, dynamic> json) =
      _$BreweryDTOImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get address;
  @override
  String get city;
  @override
  String get country;
  @override
  @JsonKey(ignore: true)
  _$$BreweryDTOImplCopyWith<_$BreweryDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
