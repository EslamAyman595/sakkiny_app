import 'package:sakkiny/features/favorite/data/model/fav_property_model/fav_property_model..dart';

abstract class ChangeFavoriteState {}

class InitialChangeFavoriteState extends ChangeFavoriteState {}

class ChangeColorFavoriteState extends ChangeFavoriteState {}

class SuccessChangeFavoriteState extends ChangeFavoriteState {
  final FavPropertyModel changeFavoriteModel;
  SuccessChangeFavoriteState(this.changeFavoriteModel);
}

class FailureChangeFavoriteState extends ChangeFavoriteState {
  final String error;
  FailureChangeFavoriteState(this.error);
}
