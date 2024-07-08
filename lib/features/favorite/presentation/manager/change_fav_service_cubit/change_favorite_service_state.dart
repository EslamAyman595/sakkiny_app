import 'package:sakkiny/features/favorite/data/model/fav_service_model/fav_service_model.dart';

abstract class ChangeFavoriteServiceState {}

class InitialChangeFavoriteServiceState extends ChangeFavoriteServiceState {}

class ChangeColorFavoriteServiceState extends ChangeFavoriteServiceState {}

class SuccessChangeFavoriteServiceState extends ChangeFavoriteServiceState {
  final FavServiceModel changeFavoriteServiceModel;
  SuccessChangeFavoriteServiceState(this.changeFavoriteServiceModel);
}

class FailureChangeFavoriteServiceState extends ChangeFavoriteServiceState {
  final String error;
  FailureChangeFavoriteServiceState(this.error);
}
