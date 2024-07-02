import 'package:sakkiny/features/favorite/data/model/fav_property_model/fav_property_model..dart';

abstract class FavStates {}

class InitialFetchFavoriteState extends FavStates {}

class LoadingFetchFavoriteState extends FavStates {}

class SuccessFetchFavoriteState extends FavStates {
  final FavPropertyModel favModel;
  SuccessFetchFavoriteState(this.favModel);
}

class FailureFetchFavoriteState extends FavStates {
  final String error;
  FailureFetchFavoriteState(this.error);
}
