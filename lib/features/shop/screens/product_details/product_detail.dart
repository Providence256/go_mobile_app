import 'package:flutter/material.dart';
import 'package:go_mobile/features/shop/screens/home/widgets/heading_text.dart';
import 'package:go_mobile/features/shop/screens/product_details/widgets/bottom_add_cart.dart';
import 'package:go_mobile/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:go_mobile/features/shop/screens/product_details/widgets/product_data.dart';
import 'package:go_mobile/features/shop/screens/product_details/widgets/product_image_slider.dart';
import 'package:readmore/readmore.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: BottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Product Image Slider
            ProductImageSlider(),

            Padding(
              padding: EdgeInsets.only(
                right: 24,
                left: 24,
                bottom: 24,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProductData(),
                  ProductAttributes(),
                  SizedBox(height: 20),
                  HeadingText(text: "Déscription"),
                  ReadMoreText(
                    "This is a product Description for Iphone 13 pro, there a more  things that can be added but am not going to add them now ",
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: "Voir plus",
                    trimExpandedText: "Moins",
                    moreStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                    ),
                    lessStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
