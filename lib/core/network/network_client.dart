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
      rethrow; // TODO: Handle error
    }
  }

  Future<Response<dynamic>> post(String url, dynamic data) async {
    try {
      return await dio.post(url, data: data);
    } on DioException catch (_) {
      rethrow; // TODO: Handle error
    }
  }

  void addInterceptor(InterceptorsWrapper interceptor) {
    dio.interceptors.add(interceptor);
  }
}
