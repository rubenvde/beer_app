import 'package:beer_app/data/models/dto/beer_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'beer_result_dto.freezed.dart';
part 'beer_result_dto.g.dart';

@freezed
class BeerResultDTO with _$BeerResultDTO {
  const factory BeerResultDTO({
    required BeerResultMetaDTO meta,
    required BeerDTO data,
  }) = _BeerResultDTO;

  factory BeerResultDTO.fromJson(Map<String, dynamic> json) =>
      _$BeerResultDTOFromJson(json);
}

@freezed
class BeerResultMetaDTO with _$BeerResultMetaDTO {
  const factory BeerResultMetaDTO({
    required String type,
  }) = _BeerResultMetaDTO;

  factory BeerResultMetaDTO.fromJson(Map<String, dynamic> json) =>
      _$BeerResultMetaDTOFromJson(json);
}
