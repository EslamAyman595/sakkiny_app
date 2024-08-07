import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomHomeImage extends StatelessWidget {
  const CustomHomeImage({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: CachedNetworkImage(
        imageUrl: image,
        //fit: BoxFit.cover,
        errorWidget: (context, url, error) => const Icon(Icons.error_outline),
      ),
    );
  }
}
// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';

// class CustomHomeImage extends StatelessWidget {
//   const CustomHomeImage({super.key, required this.image});
//   final String image;

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         ClipRRect(
//           borderRadius: BorderRadius.circular(20),
//           child: CachedNetworkImage(
//             imageUrl: image,
//             //fit: BoxFit.cover,
//             errorWidget: (context, url, error) => const Icon(Icons.error_outline),
//           ),
//         ),
//         Positioned(
//           top: 10,
//           right: 10,
//           child: IconButton(
//             icon: Icon(Icons.edit, color: Colors.white),
//             onPressed: () {
//             شح
//             },
//           ),
//         ),
//       ],
//     );
//   }
// }
