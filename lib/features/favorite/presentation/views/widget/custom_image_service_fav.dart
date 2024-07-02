import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sakkiny/core/utils/const.dart';
import 'package:sakkiny/features/favorite/data/model/fav_service_model/service.dart';

import 'package:sakkiny/features/favorite/presentation/manager/change_fav_service_cubit/change_favorite_service_cubit.dart';
import 'package:sakkiny/features/favorite/presentation/manager/change_fav_service_cubit/change_favorite_service_state.dart';
import 'package:sakkiny/features/services/presentation/manger/cubit/service_cubit.dart';

class CustomImageFavService extends StatelessWidget {
  const CustomImageFavService({
    super.key,
    this.isHome = false,
    required this.service,
  });
  final bool isHome;
  final Service service;
  @override
  Widget build(BuildContext context) {
    ServiceCubit cubit = ServiceCubit.get(context);
    //var favorite = cubit.favorites[service.id];
    return Stack(
      alignment: Alignment.topRight,
      children: [
        CachedNetworkImage(
          fit: BoxFit.cover,
          imageUrl: service.images![0].secureUrl!,
          width: double.infinity,
          height: 150,
          errorWidget: (context, url, error) => const Center(
            child: Icon(Icons.error),
          ),
        ),
        // Image.asset(
        //   isHome ? AssetsData.getStartD2 : AssetsData.services,
        //   height: 150,
        //   width: double.infinity,
        // ),
        BlocConsumer<ChangeFavoriteServiceCubit, ChangeFavoriteServiceState>(
          listener: (context, state) {
            // if (state is SuccessChangeFavoriteState) {
            //   if (!state.changeFavoriteModel.status!) {
            //     showToast(
            //       txt: state.changeFavoriteModel.message!,
            //       state: ToastState.ERROR,
            //     );
            //   }
            // }
          },
          builder: (context, state) {
             bool isFavorite = cubit.favorites[service.id] ?? false;
            return 
             Material(
                  color: Colors.transparent,
                  elevation: 5,
                  shape: const CircleBorder(),
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[300],
                    ),
                    child: IconButton(
                      padding: EdgeInsets.zero,
                      icon: isFavorite
                          ? const Icon(
                              Icons.favorite_outlined,
                              color: kLogoColor,
                            )
                          : const Icon(Icons.favorite_border_outlined),
                      onPressed: () {
                        ChangeFavoriteServiceCubit.get(context).changeFavoriteServiceItem(
                          id: service.id!,
                          context: context,
                        );
                      },
                      
                    ),
                  ),
                );
     
          },
        ),
      
      ],
    );
  }
}
