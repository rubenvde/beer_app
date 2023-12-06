// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_result_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginResultDTOImpl _$$LoginResultDTOImplFromJson(Map<String, dynamic> json) =>
    _$LoginResultDTOImpl(
      data: LoginResultDataDTO.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LoginResultDTOImplToJson(
        _$LoginResultDTOImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$LoginResultDataDTOImpl _$$LoginResultDataDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$LoginResultDataDTOImpl(
      accessToken: json['accessToken'] as String,
      refreshToken: json['refreshToken'] as String,
    );

Map<String, dynamic> _$$LoginResultDataDTOImplToJson(
        _$LoginResultDataDTOImpl instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
    };
