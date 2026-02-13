import 'package:bullion_market/core/errors/failure.dart';
import 'package:bullion_market/core/networking/api_constants.dart';
import 'package:bullion_market/core/networking/api_service.dart';
import 'package:bullion_market/features/silver/data/models/silver_model.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SilverRepo {
  final ApiService apiService;
  SilverRepo({required this.apiService});
  Future<Either<Failure, SilverModel>> getSilver() async {
    try {
      final response = await apiService.get(ApiConstants.silverEndpoint);
      return Right(SilverModel.fromJson(response));
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioError(e));
    } catch (e) {
      return const Left(ServerFailure('Unexpected error occurred'));
    }
  }
}
