import 'package:beer_app/data/services/auth_service.dart';
import 'package:beer_app/data/services/shared_preferences_service.dart';
import 'package:dio/dio.dart';

class AuthInterceptor {
  AuthInterceptor({
    required this.sharedPreferencesService,
    required this.authService,
    required this.dio,
  });
  final SharedPreferencesService sharedPreferencesService;
  final AuthService authService;
  final Dio dio;

  InterceptorsWrapper get authInterceptor => InterceptorsWrapper(
        onRequest: (options, handler) async {
          final accessToken = await sharedPreferencesService.getAccessToken();
          if (accessToken != null) {
            options.headers['Authorization'] = 'Bearer $accessToken';
          } else {
            // No token is available, so we continue the request
            // without access token
          }
          handler.next(options);
        },
        onError: (error, handler) async {
          if (error.response?.statusCode == 401) {
            final refreshToken =
                await sharedPreferencesService.getRefreshToken();
            if (refreshToken != null) {
              final loginResult = await authService.refreshToken(refreshToken);
              if (loginResult != null) {
                await sharedPreferencesService
                    .setAccessToken(loginResult.accessToken);
                await sharedPreferencesService
                    .setRefreshToken(loginResult.refreshToken);
                // Retry the request
                final options = error.response!.requestOptions;
                options.headers['Authorization'] =
                    'Bearer ${loginResult.accessToken}';
                final response = await dio.fetch<Response<dynamic>>(options);
                handler.resolve(response);
                return;
              } else {
                // Refresh token is invalid, so we clear all tokens
                await sharedPreferencesService.clearTokens();
                // And we reject the request
                handler.reject(error);
                return;
              }
            } else {
              handler.reject(error);
              return;
            }
          }
        },
      );
}
