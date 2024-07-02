import 'package:sakkiny/features/favorite/data/model/fav_service_model/fav_service_model.dart';

abstract class FavServiceStates {}

class InitialFetchFavoriteServiceState extends FavServiceStates {}

class LoadingFetchFavoriteServiceState extends FavServiceStates {}

class SuccessFetchFavoriteServiceState extends FavServiceStates {
  final FavServiceModel favServiceModel;
  SuccessFetchFavoriteServiceState(this.favServiceModel);
}

class FailureFetchFavoriteServiceState extends FavServiceStates {
  final String error;
  FailureFetchFavoriteServiceState(this.error);
}
