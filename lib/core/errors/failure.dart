import 'package:dio/dio.dart';

abstract class Failure {
  final String message;
  const Failure(this.message);
}

class ServerFailure extends Failure {
  const ServerFailure(super.message);

  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return const ServerFailure('Connection timed out');
      case DioExceptionType.sendTimeout:
        return const ServerFailure('Request timed out');
      case DioExceptionType.receiveTimeout:
        return const ServerFailure('Failed to receive data');
      case DioExceptionType.connectionError:
        return const ServerFailure('No internet connection');
      case DioExceptionType.badResponse:
        final data = dioError.response?.data;
        if (data is Map<String, dynamic>) {
          if (data['message'] is String) {
            return ServerFailure(data['message']);
          }
          if (data['error'] is String) {
            return ServerFailure(data['error']);
          }
        }
        return const ServerFailure('Server error occurred');
      case DioExceptionType.cancel:
        return const ServerFailure('Request cancelled');
      case DioExceptionType.badCertificate:
        return const ServerFailure('Invalid certificate');
      case DioExceptionType.unknown:
        return const ServerFailure('Unexpected error occurred');
    }
  }
}
