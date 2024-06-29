import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:go_mobile/features/shop/screens/home/widgets/banner_image.dart';
import 'package:go_mobile/features/shop/screens/home/widgets/categorie_section.dart';
import 'package:go_mobile/features/shop/screens/home/widgets/heading_text.dart';
import 'package:go_mobile/features/shop/screens/home/widgets/product_card.dart';
import 'package:go_mobile/features/shop/screens/home/widgets/search_container.dart';
import 'package:go_mobile/utils/constants/image_string.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 65),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //Logo
              const CircleAvatar(
                child: Image(
                  image: AssetImage(TImages.logo),
                ),
              ),
              const SizedBox(width: 10),
              //Search
              const SearchContainer(),
              //Notification button
              IconButton(
                onPressed: () {},
                icon: const Icon(Iconsax.notification),
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              CarouselSlider(
                items: const [
                  BannerImage(image: TImages.banner_2),
                  BannerImage(image: TImages.banner_1),
                ],
                options: CarouselOptions(
                  autoPlay: true,
                  viewportFraction: 1,
                  onPageChanged: (_, index) {},
                ),
              ),
              const SizedBox(height: 15),
              const HeadingText(
                text: "Categories",
              ),
              const SizedBox(height: 15),
              const CategorieSection(),
              const HeadingText(
                text: "Special pour toi",
                showButton: true,
              ),
              const SizedBox(height: 20),
              SizedBox(
                child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: 4,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.zero,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 260,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 16,
                  ),
                  itemBuilder: (_, index) => const ProductCard(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
