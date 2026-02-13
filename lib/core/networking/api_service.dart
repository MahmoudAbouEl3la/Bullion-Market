import 'package:dio/dio.dart';
import 'api_constants.dart';

class ApiService {
  late final Dio _dio;

  ApiService() {
    _dio = Dio(
      BaseOptions(
        baseUrl: ApiConstants.baseUrl,
        receiveDataWhenStatusError: true,
        connectTimeout: const Duration(seconds: 15),
        receiveTimeout: const Duration(seconds: 15),
        headers: {'Accept': 'application/json', 'User-Agent': 'Mozilla/5.0'},
      ),
    );
  }

  Future<dynamic> get(String endpoint, {Map<String, dynamic>? query}) async {
    final response = await _dio.get(endpoint, queryParameters: query);
    return response.data;
  }

  Future<Response> post(
    String endpoint, {
    Map<String, dynamic>? body,
    Map<String, dynamic>? query,
  }) {
    return _dio.post(endpoint, data: body, queryParameters: query);
  }
}
