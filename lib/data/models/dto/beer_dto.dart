import 'package:beer_app/data/models/dto/brewery_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'beer_dto.freezed.dart';
part 'beer_dto.g.dart';

@freezed
class BeerDTO with _$BeerDTO {
  const factory BeerDTO({
    required String id,
    required String name,
    required int rating,
    required String thumbImageUrl,
    required String imageUrl,
    required BreweryDTO brewery,
  }) = _BeerDTO;

  factory BeerDTO.fromJson(Map<String, dynamic> json) =>
      _$BeerDTOFromJson(json);
}
