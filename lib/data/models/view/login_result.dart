import 'package:beer_app/data/models/dto/login_result_dto.dart';

class LoginResult {
  LoginResult({
    required this.accessToken,
    required this.refreshToken,
  });

  factory LoginResult.fromLoginResultDTO(LoginResultDTO loginResultDTO) {
    return LoginResult(
      accessToken: loginResultDTO.data.accessToken,
      refreshToken: loginResultDTO.data.refreshToken,
    );
  }
  final String accessToken;
  final String refreshToken;
}
