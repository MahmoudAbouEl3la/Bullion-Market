import 'package:bullion_market/features/gold/data/repo/gold_repo.dart';
import 'package:bullion_market/features/gold/presentation/cubit/gold_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GoldCubit extends Cubit<GoldState> {
  final GoldRepo goldRepo;

  GoldCubit({required this.goldRepo}) : super(InitialGoldState());

  Future<void> getGold() async {
    emit(LoadingGoldState());

    final result = await goldRepo.getGold();

    result.fold(
      (failure) => emit(ErrorGoldState(failure.message)),
      (gold) => emit(SuccessGoldState(gold)),
    );
  }
}
