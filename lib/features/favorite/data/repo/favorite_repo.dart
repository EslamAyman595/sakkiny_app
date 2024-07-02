import 'package:dartz/dartz.dart';
import 'package:sakkiny/core/errors/failures.dart';
import 'package:sakkiny/features/favorite/data/model/fav_property_model/fav_property_model..dart';

abstract class FavoriteRepo {
  Future<Either<Failures, FavPropertyModel>> changeFavoriteItem(
      {required String id});
  Future<Either<Failures, FavPropertyModel>> fetchFavoriteItem();
}