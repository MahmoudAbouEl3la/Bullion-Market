import 'package:bullion_market/features/gold/data/models/gold_model.dart';

abstract class GoldState {}

class InitialGoldState extends GoldState {}

class LoadingGoldState extends GoldState {}

class SuccessGoldState extends GoldState {
  final GoldModel goldModel;
  SuccessGoldState(this.goldModel);
}

class ErrorGoldState extends GoldState {
  final String errorMessage;
  ErrorGoldState(this.errorMessage);
}
