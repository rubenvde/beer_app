import 'package:beer_app/data/models/dto/beer_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'beers_result_dto.freezed.dart';
part 'beers_result_dto.g.dart';

@freezed
class BeersResultDTO with _$BeersResultDTO {
  const factory BeersResultDTO({
    required BeersResultMetaDTO meta,
    required List<BeerDTO> data,
  }) = _BeersResultDTO;

  factory BeersResultDTO.fromJson(Map<String, dynamic> json) =>
      _$BeersResultDTOFromJson(json);
}

@freezed
class BeersResultMetaDTO with _$BeersResultMetaDTO {
  const factory BeersResultMetaDTO({
    required int count,
    required int totalCount,
  }) = _BeersResultMetaDTO;

  factory BeersResultMetaDTO.fromJson(Map<String, dynamic> json) =>
      _$BeersResultMetaDTOFromJson(json);
}
