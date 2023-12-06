import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_result_dto.freezed.dart';
part 'login_result_dto.g.dart';

@freezed
class LoginResultDTO with _$LoginResultDTO {
  const factory LoginResultDTO({
    required LoginResultDataDTO data,
  }) = _LoginResultDTO;

  factory LoginResultDTO.fromJson(Map<String, dynamic> json) =>
      _$LoginResultDTOFromJson(json);
}

@freezed
class LoginResultDataDTO with _$LoginResultDataDTO {
  const factory LoginResultDataDTO({
    required String accessToken,
    required String refreshToken,
  }) = _LoginResultDataDTO;

  factory LoginResultDataDTO.fromJson(Map<String, dynamic> json) =>
      _$LoginResultDataDTOFromJson(json);
}
