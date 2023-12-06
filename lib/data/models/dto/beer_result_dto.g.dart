// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'beer_result_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BeerResultDTOImpl _$$BeerResultDTOImplFromJson(Map<String, dynamic> json) =>
    _$BeerResultDTOImpl(
      meta: BeerResultMetaDTO.fromJson(json['meta'] as Map<String, dynamic>),
      data: BeerDTO.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BeerResultDTOImplToJson(_$BeerResultDTOImpl instance) =>
    <String, dynamic>{
      'meta': instance.meta,
      'data': instance.data,
    };

_$BeerResultMetaDTOImpl _$$BeerResultMetaDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$BeerResultMetaDTOImpl(
      type: json['type'] as String,
    );

Map<String, dynamic> _$$BeerResultMetaDTOImplToJson(
        _$BeerResultMetaDTOImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
    };
