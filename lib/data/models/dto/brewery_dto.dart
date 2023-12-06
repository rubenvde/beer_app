import 'package:freezed_annotation/freezed_annotation.dart';

part 'brewery_dto.freezed.dart';
part 'brewery_dto.g.dart';

@freezed
class BreweryDTO with _$BreweryDTO {
  const factory BreweryDTO({
    required String id,
    required String name,
    required String address,
    required String city,
    required String country,
  }) = _BreweryDTO;

  factory BreweryDTO.fromJson(Map<String, dynamic> json) =>
      _$BreweryDTOFromJson(json);
}
