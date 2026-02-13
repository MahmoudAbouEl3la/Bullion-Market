import 'package:bullion_market/features/silver/data/repo/silver_repo.dart';
import 'package:bullion_market/features/silver/presentation/cubit/silver_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SilverCubit extends Cubit<SilverState> {
  final SilverRepo silverRepo;
  SilverCubit({required this.silverRepo}) : super(InitialSilverState());

  Future<void> getSilver() async {
    emit(LoadingSilverState());

    final result = await silverRepo.getSilver();

    result.fold(
      (failure) => emit(ErrorSilverState(failure.message)),
      (silver) => emit(SuccessSilverState(silver)),
    );
  }
}
