import 'package:flutter/material.dart';
import 'package:go_mobile/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:iconsax/iconsax.dart';

class OnboardingNextButton extends StatelessWidget {
  const OnboardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: kBottomNavigationBarHeight,
      right: 24,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          iconColor: Colors.black,
          shape: const CircleBorder(),
          side: BorderSide(
            color: const Color(0xFFD6062A).withOpacity(0.4),
          ),
        ),
        onPressed: () => OnboardingController.instance.nextPage(),
        child: const Icon(
          Iconsax.arrow_right_1,
        ),
      ),
    );
  }
}
