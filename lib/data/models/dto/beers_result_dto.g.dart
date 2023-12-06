// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'beers_result_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BeersResultDTOImpl _$$BeersResultDTOImplFromJson(Map<String, dynamic> json) =>
    _$BeersResultDTOImpl(
      meta: BeersResultMetaDTO.fromJson(json['meta'] as Map<String, dynamic>),
      data: (json['data'] as List<dynamic>)
          .map((e) => BeerDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BeersResultDTOImplToJson(
        _$BeersResultDTOImpl instance) =>
    <String, dynamic>{
      'meta': instance.meta,
      'data': instance.data,
    };

_$BeersResultMetaDTOImpl _$$BeersResultMetaDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$BeersResultMetaDTOImpl(
      count: json['count'] as int,
      totalCount: json['totalCount'] as int,
    );

Map<String, dynamic> _$$BeersResultMetaDTOImplToJson(
        _$BeersResultMetaDTOImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'totalCount': instance.totalCount,
    };
