import 'package:beer_app/data/services/auth_service.dart';
import 'package:beer_app/data/services/device_info_service.dart';
import 'package:beer_app/data/services/shared_preferences_service.dart';

class AuthRepository {
  AuthRepository({
    required this.authService,
    required this.sharedPreferencesService,
  });
  final AuthService authService;
  final SharedPreferencesService sharedPreferencesService;

  Future<bool> get isLoggedIn async =>
      await sharedPreferencesService.getAccessToken() != null &&
      await sharedPreferencesService.getRefreshToken() != null;

  Future<bool> login(String username, String password) async {
    final deviceId = await DeviceInfoService.getDeviceId();
    final loginResult = await authService.login(
      username: username,
      password: password,
      deviceId: deviceId,
    );
    if (loginResult == null) return false;
    await sharedPreferencesService.setAccessToken(loginResult.accessToken);
    await sharedPreferencesService.setRefreshToken(loginResult.refreshToken);
    return true;
  }
}
