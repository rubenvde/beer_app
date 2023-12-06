// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'beer_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BeerDTOImpl _$$BeerDTOImplFromJson(Map<String, dynamic> json) =>
    _$BeerDTOImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      rating: json['rating'] as int,
      thumbImageUrl: json['thumbImageUrl'] as String,
      imageUrl: json['imageUrl'] as String,
      brewery: BreweryDTO.fromJson(json['brewery'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BeerDTOImplToJson(_$BeerDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'rating': instance.rating,
      'thumbImageUrl': instance.thumbImageUrl,
      'imageUrl': instance.imageUrl,
      'brewery': instance.brewery,
    };
