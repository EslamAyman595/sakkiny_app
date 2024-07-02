
import 'package:flutter/material.dart';
import 'package:sakkiny/features/favorite/data/model/fav_property_model/fav_property_model..dart';

import 'package:sakkiny/features/favorite/presentation/views/widget/custom_home_fav.dart';

class GridViewHomeFav extends StatelessWidget {
  const GridViewHomeFav({Key? key, required this.favPropertyModel})
      : super(key: key);

  final FavPropertyModel favPropertyModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: GridView.builder(
        physics: const BouncingScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 12,
          childAspectRatio: 1 / 1.47,
        ),
        itemCount: favPropertyModel.properties?.length ?? 0,
        itemBuilder: (context, index) {
          return CustomHomeFav(
            property: favPropertyModel.properties![index],
          );
        },
      ),
    );
  }
}
