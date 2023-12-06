// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brewery_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BreweryDTOImpl _$$BreweryDTOImplFromJson(Map<String, dynamic> json) =>
    _$BreweryDTOImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      address: json['address'] as String,
      city: json['city'] as String,
      country: json['country'] as String,
    );

Map<String, dynamic> _$$BreweryDTOImplToJson(_$BreweryDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'city': instance.city,
      'country': instance.country,
    };
