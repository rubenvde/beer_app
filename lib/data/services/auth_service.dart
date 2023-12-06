import 'dart:developer';

import 'package:beer_app/core/network/network_client.dart';
import 'package:beer_app/data/models/dto/login_result_dto.dart';
import 'package:beer_app/data/models/view/login_result.dart';

class AuthService {
  AuthService({required this.networkClient});
  final NetworkClient networkClient;
  Future<LoginResult?> login({
    required String username,
    required String password,
    required String deviceId,
  }) async {
    final response = await networkClient.post('/auth/login', {
      'username': username,
      'password': password,
      'deviceId': deviceId,
    });
    try {
      final resultDTO =
          LoginResultDTO.fromJson(response.data as Map<String, dynamic>);
      return LoginResult.fromLoginResultDTO(resultDTO);
    } catch (_) {
      log('Error parsing login result');
      return null;
    }
  }

  Future<LoginResult?> refreshToken(String refreshToken) async {
    final response = await networkClient.post('/auth/refresh', {
      'refreshToken': refreshToken,
    });
    try {
      final resultDTO =
          LoginResultDTO.fromJson(response.data as Map<String, dynamic>);
      return LoginResult.fromLoginResultDTO(resultDTO);
    } catch (_) {
      log('Error parsing login result');
      return null;
    }
  }
}
