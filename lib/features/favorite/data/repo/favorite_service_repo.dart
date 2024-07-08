import 'package:dartz/dartz.dart';
import 'package:sakkiny/core/errors/failures.dart';
import 'package:sakkiny/features/favorite/data/model/fav_service_model/fav_service_model.dart';

abstract class FavoriteServiceRepo {
  Future<Either<Failures, FavServiceModel>> changeFavoriteServiceItem(
      {required String id});
  Future<Either<Failures, FavServiceModel>> fetchFavoriteServiceItem();
}
