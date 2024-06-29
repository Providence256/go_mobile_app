import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_mobile/features/shop/screens/cart/cart.dart';
import 'package:go_mobile/features/shop/screens/favoris/favoris.dart';
import 'package:go_mobile/features/shop/screens/home/home.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBarTheme(
          data: NavigationBarThemeData(
            labelTextStyle: WidgetStateProperty.resolveWith<TextStyle?>(
              (states) {
                if (states.contains(WidgetState.selected)) {
                  return const TextStyle(
                    color: Color(0xFFD6062A),
                    fontSize: 12,
                  );
                }
                return const TextStyle(
                  color: Colors.black87,
                  fontSize: 12,
                );
              },
            ),
          ),
          child: NavigationBar(
            height: 80,
            elevation: 1,
            indicatorColor: const Color(0xFFD6062A).withOpacity(0.1),
            backgroundColor: Colors.white,
            selectedIndex: controller.selectedIndex.value,
            onDestinationSelected: (index) =>
                controller.selectedIndex.value = index,
            destinations: const [
              NavigationDestination(
                selectedIcon: Icon(
                  Iconsax.home_15,
                  color: Color(0xFFD6062A),
                ),
                icon: Icon(
                  Iconsax.home,
                  color: Color(0xFFD6062A),
                ),
                label: "Accueil",
              ),
              NavigationDestination(
                selectedIcon: Icon(
                  Iconsax.heart5,
                  color: Color(0xFFD6062A),
                ),
                icon: Icon(
                  Iconsax.heart,
                  color: Color(0xFFD6062A),
                ),
                label: "Favoris",
              ),
              NavigationDestination(
                selectedIcon: Icon(
                  Iconsax.shopping_cart5,
                  color: Color(0xFFD6062A),
                ),
                icon: Icon(
                  Iconsax.shopping_cart4,
                  color: Color(0xFFD6062A),
                ),
                label: "Panier",
              ),
              NavigationDestination(
                selectedIcon: Icon(
                  Iconsax.profile_circle,
                  color: Color(0xFFD6062A),
                ),
                icon: Icon(
                  Iconsax.user,
                  color: Color(0xFFD6062A),
                ),
                label: "Profile",
              ),
            ],
          ),
        ),
      ),
      body: Obx(
        () => controller.screens[controller.selectedIndex.value],
      ),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    const FavorisScreen(),
    const CartScreen(),
    const HomeScreen(),
  ];
}


// Color(0xffF5F5F5)
