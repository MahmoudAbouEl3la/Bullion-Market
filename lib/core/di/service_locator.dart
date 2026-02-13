import 'package:bullion_market/core/networking/api_service.dart';
import 'package:bullion_market/features/gold/data/repo/gold_repo.dart';
import 'package:bullion_market/features/gold/presentation/cubit/gold_cubit.dart';
import 'package:get_it/get_it.dart';

final sl = ServiceLocator.sl;

class ServiceLocator {
  static final sl = GetIt.instance;
  static void init() {
    // ===== ApiService
    sl.registerLazySingleton<ApiService>(() => ApiService());
    // ============= Gold
    // Repo
    sl.registerLazySingleton<GoldRepo>(
      () => GoldRepo(apiService: sl<ApiService>()),
    );
    // Cubit
    sl.registerFactory<GoldCubit>(() => GoldCubit(goldRepo: sl<GoldRepo>()));
  }
}
