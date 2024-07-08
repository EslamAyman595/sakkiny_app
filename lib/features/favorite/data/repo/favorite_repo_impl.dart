import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:sakkiny/core/errors/failures.dart';
import 'package:sakkiny/core/utils/dio_helper.dart';
import 'package:sakkiny/core/utils/end_points.dart';
import 'package:sakkiny/features/favorite/data/model/fav_property_model/fav_property_model..dart';
import 'package:sakkiny/features/favorite/data/repo/favorite_repo.dart';

class FavoriteRepoImpl extends FavoriteRepo {
  @override
  Future<Either<Failures, FavPropertyModel>> changeFavoriteItem(
      {required String id}) async {
    try {
      var data = await DioHelper.putData(
        url: '/property/$id/like',
        token:
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InppYW1vaDIyNUBnbWFpbC5jb20iLCJpZCI6IjY2NzEwMTE4N2I4OWMwODlkYjQ5Y2I3OSIsInJvbGUiOiJVc2VyIiwiaXNsb2dnZWQiOnRydWUsImlhdCI6MTcxOTIwNTg4OX0.0ilBL6Kt_0i5tNj4xOypiBJMevkvmsd-p7LvupAHJwA',
        data: {
          'id': id,
        },
      );
      return right(FavPropertyModel.fromJson(data.data));
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.formDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failures, FavPropertyModel>> fetchFavoriteItem() async {
    try {
      var data = await DioHelper.getData(
          url: getFavProperty,
          token:
              'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InppYW1vaDIyNUBnbWFpbC5jb20iLCJpZCI6IjY2NzEwMTE4N2I4OWMwODlkYjQ5Y2I3OSIsInJvbGUiOiJVc2VyIiwiaXNsb2dnZWQiOnRydWUsImlhdCI6MTcxOTIwNTg4OX0.0ilBL6Kt_0i5tNj4xOypiBJMevkvmsd-p7LvupAHJwA');
      return right(FavPropertyModel.fromJson(data.data));
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.formDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }
}
