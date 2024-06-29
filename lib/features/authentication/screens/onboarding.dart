import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_mobile/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:go_mobile/features/authentication/screens/widgets/onboarding_dot_indicator.dart';
import 'package:go_mobile/features/authentication/screens/widgets/onboarding_next_button.dart';
import 'package:go_mobile/features/authentication/screens/widgets/onboarding_page.dart';
import 'package:go_mobile/utils/constants/image_string.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());

    return Scaffold(
      backgroundColor: const Color(0xFFD6062A).withOpacity(0.6),
      body: Stack(
        children: [
          //HORIZONTAL SCROLLABLE PAGES

          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnboardingPage(
                title: "Bienvenue Chez GO MOBILE",
                subtitle:
                    "Votre destination ultime pour des achats en ligne faciles et rapides.",
                image: TImages.onboardingImage1,
              ),
              OnboardingPage(
                title: "Livraison à domicile",
                subtitle:
                    "Faites vous livrer en toute securité jusqu'aux pieds de vos escaliers",
                image: TImages.onboardingImage2,
              ),
              OnboardingPage(
                title: "Visiter nos magasins",
                subtitle:
                    "Visiter nos differents magasins et acheter avec satisfaction",
                image: TImages.onboardingImage3,
              ),
            ],
          ),
          //SKIP BUTTON
          Positioned(
            top: 30,
            right: 15,
            child: TextButton(
              onPressed: () => controller.skipPage(),
              child: Text(
                "Passer",
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .apply(color: Colors.white),
              ),
            ),
          ),

          //DOT NAVIGATION
          const OnboardingDotNavigation(),

          //Next Button
          const OnboardingNextButton()
        ],
      ),
    );
  }
}
