import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_mobile/common/widgets/circular_icon.dart';
import 'package:go_mobile/common/widgets/custom_shape/curved_edges_widget.dart';
import 'package:go_mobile/common/widgets/product/image_container.dart';
import 'package:go_mobile/utils/constants/image_string.dart';
import 'package:iconsax/iconsax.dart';

class ProductImageSlider extends StatelessWidget {
  const ProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CurvedEdgesWidget(
      child: Container(
        color: Colors.white,
        child: Stack(
          children: [
            const SizedBox(
              height: 400,
              child: Padding(
                padding: EdgeInsets.all(16 * 2),
                child: Center(
                  child: Image(
                    image: AssetImage(TImages.product),
                  ),
                ),
              ),
            ),
            //Image Slider
            Positioned(
              right: 0,
              bottom: 30,
              left: 24,
              child: SizedBox(
                height: 70,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemBuilder: (_, index) => ImageContainer(
                    width: 70,
                    imageUrl: TImages.product,
                    border: Border.all(
                      color: Colors.blue.shade100,
                    ),
                  ),
                  separatorBuilder: (_, __) => const SizedBox(width: 10),
                  itemCount: 7,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: AppBar(
                backgroundColor: Colors.transparent,
                leading: IconButton(
                  onPressed: () => Get.back(),
                  icon: const Icon(Iconsax.arrow_left),
                ),
                actions: [
                  CircularIcon(
                    icon: Iconsax.heart5,
                    color: Colors.red,
                    backgroundColor: const Color(0xffF5F5F5),
                    onPressed: () {},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
