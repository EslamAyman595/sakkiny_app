import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:sakkiny/core/errors/failures.dart';
import 'package:sakkiny/core/utils/dio_helper.dart';
import 'package:sakkiny/core/utils/end_points.dart';
import 'package:sakkiny/features/favorite/data/model/fav_service_model/fav_service_model.dart';
import 'package:sakkiny/features/favorite/data/repo/favorite_service_repo.dart';



class FavoriteServiceRepoImpl extends FavoriteServiceRepo {
  @override
  Future<Either<Failures, FavServiceModel>> changeFavoriteServiceItem(
      {required String id}) async {
    try {
      var data = await DioHelper.putData(
        url: 
        '/service/$id/like',
        token: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InppYW1vaDIyNUBnbWFpbC5jb20iLCJpZCI6IjY2NzEwMTE4N2I4OWMwODlkYjQ5Y2I3OSIsInJvbGUiOiJVc2VyIiwiaXNsb2dnZWQiOnRydWUsImlhdCI6MTcxOTIwNTg4OX0.0ilBL6Kt_0i5tNj4xOypiBJMevkvmsd-p7LvupAHJwA',
         data: {
          'id':id,
        },
        
      );
      return right(FavServiceModel.fromJson(data.data));
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.formDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failures, FavServiceModel>> fetchFavoriteServiceItem() async {
    try {
      var data = await DioHelper.getData(url: getFavService, 
      token: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InppYW1vaDIyNUBnbWFpbC5jb20iLCJpZCI6IjY2NzEwMTE4N2I4OWMwODlkYjQ5Y2I3OSIsInJvbGUiOiJVc2VyIiwiaXNsb2dnZWQiOnRydWUsImlhdCI6MTcxOTIwNTg4OX0.0ilBL6Kt_0i5tNj4xOypiBJMevkvmsd-p7LvupAHJwA'
      );
      return right(FavServiceModel.fromJson(data.data));
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.formDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }
}
