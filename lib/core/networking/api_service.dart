import 'package:dio/dio.dart';
import 'api_endpoints.dart';

class ApiService {
  late final Dio _dio;

  ApiService() {
    _dio = Dio(
      BaseOptions(
        baseUrl: ApiEndpoints.baseUrl + ApiEndpoints.endpoint,
        connectTimeout: const Duration(seconds: 15),
        receiveTimeout: const Duration(seconds: 15),
        headers: {'Accept': 'application/json'},
      ),
    );
  }

  Future<Response> get(
    String endpoint, {
    Map<String, dynamic>? query,
    String? token,
  }) {
    return _dio.get(endpoint, queryParameters: query);
  }

  Future<Response> post(
    String endpoint, {
    Map<String, dynamic>? body,
    Map<String, dynamic>? query,
  }) {
    return _dio.post(endpoint, data: body, queryParameters: query);
  }
}
