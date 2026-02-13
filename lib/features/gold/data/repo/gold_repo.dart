import 'package:bullion_market/core/errors/failure.dart';
import 'package:bullion_market/core/networking/api_constants.dart';
import 'package:bullion_market/core/networking/api_service.dart';
import 'package:bullion_market/features/gold/data/models/gold_model.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class GoldRepo {
  final ApiService apiService;
  GoldRepo({required this.apiService});

  Future<Either<Failure, GoldModel>> getGold() async {
    try {
      final response = await apiService.get(ApiConstants.goldEndpoint);
      return Right(GoldModel.fromJson(response));
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioError(e));
    } catch (e) {
      return const Left(ServerFailure('Unexpected error occurred'));
    }
  }
}
