import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:supermarket/model/categorymdel.dart';

class CategoryCircleAvator extends StatelessWidget {
  final CategoryModel category;
  const CategoryCircleAvator({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              // Get.to(() => const CategoryProductview());
            },
            child: CircleAvatar(
              radius: 40,
              backgroundImage: CachedNetworkImageProvider(
                category.image!,
              ),
            ),
          ),
          const SizedBox(height: 8),
          SizedBox(
            width: 65,
            child: Text(
              category.name,
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              // style:
            ),
          )
        ],
      ),
    );
  }
}
