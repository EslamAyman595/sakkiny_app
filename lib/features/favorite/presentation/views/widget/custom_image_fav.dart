import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sakkiny/core/utils/const.dart';
import 'package:sakkiny/core/widgets/show_toast.dart';
import 'package:sakkiny/features/favorite/data/model/fav_property_model/property..dart';
import 'package:sakkiny/features/favorite/presentation/manager/change_fav_cubit/change_favorite_cubit.dart';
import 'package:sakkiny/features/favorite/presentation/manager/change_fav_cubit/change_favorite_state.dart';
import 'package:sakkiny/features/home/presentation/manger/property_cubit/property_cubit.dart';

class CustomImageFav extends StatelessWidget {
  const CustomImageFav({
    super.key,
    this.isHome = false,
    required this.property,
  });
  final bool isHome;
  final Property property;
  @override
  Widget build(BuildContext context) {
    PropertyCubit cubit = PropertyCubit.get(context);
    //var favorite = cubit.favorites[property.id];
    return Stack(
      alignment: Alignment.topRight,
      children: [
        CachedNetworkImage(
          fit: BoxFit.cover,
          height: 150,
          width: double.infinity,
          imageUrl: property.propertyImages![0].secureUrl!,
          errorWidget: (context, url, error) => const Center(
            child: Icon(Icons.error),
          ),
        ),
        // Image.asset(
        //   isHome ? AssetsData.getStartD2 : AssetsData.services,
        //   height: 150,
        //   width: double.infinity,
        // ),
        BlocConsumer<ChangeFavoriteCubit, ChangeFavoriteState>(
          listener: (context, state) {
            if (state is SuccessChangeFavoriteState) {
              if (!state.changeFavoriteModel.status!) {
                showToast(
                  txt: state.changeFavoriteModel.message!,
                  state: ToastState.SUCCESS,
                );
              } else {
                showToast(
                  txt: state.changeFavoriteModel.message!,
                  state: ToastState.SUCCESS,
                );
              }
            }
          },
          builder: (context, state) {
            bool isFavorite = cubit.favorites[property.id] ?? false;
            return Material(
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
                    ChangeFavoriteCubit.get(context).changeFavoriteItem(
                      id: property.id!,
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
