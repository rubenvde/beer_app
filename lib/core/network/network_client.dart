import 'package:dio/dio.dart';

class NetworkClient {
  NetworkClient({required this.baseUrl}) {
    dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
      ),
    );
  }
  final String baseUrl;
  late final Dio dio;

  Future<Response<dynamic>> get(String url) async {
    try {
      return await dio.get(url);
    } on DioException catch (_) {
      rethrow;
    }
  }

  Future<Response<dynamic>> post(String url, dynamic data) async {
    try {
      return await dio.post(url, data: data);
    } on DioException catch (_) {
      rethrow;
    }
  }

  Future<Response<dynamic>> put(String url, dynamic data) async {
    try {
      return await dio.put(url, data: data);
    } on DioException catch (_) {
      rethrow;
    }
  }

  void addInterceptor(InterceptorsWrapper interceptor) {
    dio.interceptors.add(interceptor);
  }
}
