import 'package:bullion_market/features/silver/data/models/silver_model.dart';

abstract class SilverState {}

class InitialSilverState extends SilverState {}

class LoadingSilverState extends SilverState {}

class SuccessSilverState extends SilverState {
  final SilverModel silverModel;
  SuccessSilverState(this.silverModel);
}

class ErrorSilverState extends SilverState {
  final String errorMessage;
  ErrorSilverState(this.errorMessage);
}
