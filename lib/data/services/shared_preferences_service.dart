import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService {
  Future<SharedPreferences> get _sharedPreferences async =>
      SharedPreferences.getInstance();

  Future<String?> getAccessToken() async {
    final sharedPreferences = await _sharedPreferences;
    return sharedPreferences.getString('access_token');
  }

  Future<void> setAccessToken(String accessToken) async {
    final sharedPreferences = await _sharedPreferences;
    await sharedPreferences.setString('access_token', accessToken);
  }

  Future<String?> getRefreshToken() async {
    final sharedPreferences = await _sharedPreferences;
    return sharedPreferences.getString('refresh_token');
  }

  Future<void> setRefreshToken(String refreshToken) async {
    final sharedPreferences = await _sharedPreferences;
    await sharedPreferences.setString('refresh_token', refreshToken);
  }

  Future<void> clearTokens() async {
    final sharedPreferences = await _sharedPreferences;
    await sharedPreferences.remove('access_token');
    await sharedPreferences.remove('refresh_token');
  }
}
