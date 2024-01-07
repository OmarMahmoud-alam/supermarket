import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:supermarket/features/home/data/models/productmodel.dart';
import 'package:supermarket/features/product/presentation/view/productview.dart';

// ignore: camel_case_types
class homeproductwidget extends StatelessWidget {
  final ProductModel productitem;
  const homeproductwidget({
    super.key,
    required this.productitem,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      child: Column(
        children: [
          SizedBox(
            width: 141,
            child: InkWell(
              onTap: () {
                Get.to(
                  () => ProductdetialsView(),
                );
              },
              child: Stack(
                children: [
                  Hero(
                    tag: "${productitem.id}",
                    child: CachedNetworkImage(
                      imageUrl: productitem.imageUrl,
                      width: 141,
                      height: 141,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                      top: 2,
                      left: 3,
                      child: IconButton(
                          padding: EdgeInsets.zero,
                          constraints:
                              const BoxConstraints(), // override default min size of 48px
                          style: const ButtonStyle(
                            tapTargetSize: MaterialTapTargetSize
                                .shrinkWrap, // the '2023' part
                          ),
                          onPressed: () {},
                          icon: const Icon(
                            Icons.favorite_outline,
                            color: Colors.white,
                          )))
                ],
              ),
            ),
          ),
          const Gap(7),
          SizedBox(
            width: 140,
            child: Text(
              productitem.name,
              //textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              //  style:
            ),
          ),
          const Gap(7),
          SizedBox(
            width: 140,
            child: Text(
              "\$${productitem.price}",
              //textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const Gap(7),
          /* SizedBox(
        width: 141,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "\$534,33",
              //textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            
            ),
            const Gap(7),
            Text(
              "24% Off",
              //textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              
            ),
          ],
        ),
      )*/
        ],
      ),
    );
  }
}
