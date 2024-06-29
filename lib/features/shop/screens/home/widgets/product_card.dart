import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_mobile/common/widgets/circular_icon.dart';
import 'package:go_mobile/common/widgets/product/image_container.dart';
import 'package:go_mobile/common/widgets/product/rounded_container.dart';
import 'package:go_mobile/features/shop/screens/product_details/product_detail.dart';
import 'package:go_mobile/utils/constants/image_string.dart';
import 'package:iconsax/iconsax.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(() => const ProductDetailScreen()),
      child: Container(
        width: 180,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Colors.white),
        child: Column(
          children: [
            RoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(8),
              backgroundColor: Colors.white,
              child: Stack(
                children: [
                  const ImageContainer(
                    imageUrl: TImages.product,
                  ),
                  Positioned(
                    top: 12,
                    child: RoundedContainer(
                      radius: 8,
                      backgroundColor: Colors.yellow,
                      padding: const EdgeInsets.symmetric(
                        vertical: 4,
                        horizontal: 8,
                      ),
                      child: Text(
                        "25%",
                        style: Theme.of(context).textTheme.labelLarge!.apply(
                              color: Colors.black,
                            ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    top: 0,
                    child: CircularIcon(
                      icon: Iconsax.heart5,
                      onPressed: () {},
                      color: Colors.red,
                      backgroundColor: const Color(0xffF5F5F5),
                    ),
                  )
                ],
              ),
            ),
            Text(
              "Iphone 13 Pro ",
              style: Theme.of(context).textTheme.titleLarge,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              textAlign: TextAlign.left,
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    "\$800",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleLarge!.apply(
                          color: const Color(0xFFD6062A),
                        ),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Color(0xFFD6062A),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      bottomRight: Radius.circular(16),
                    ),
                  ),
                  child: const SizedBox(
                    width: 32 * 1.2,
                    height: 32 * 1.2,
                    child: Center(
                      child: Icon(
                        Iconsax.shopping_cart,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
