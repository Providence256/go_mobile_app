import 'package:flutter/material.dart';
import 'package:go_mobile/utils/constants/image_string.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Hero(
              tag: "logo",
              child: Image(
                height: 80,
                image: AssetImage(TImages.logo),
              ),
            ),
            Text(
              "MOBILE",
              style: Theme.of(context).textTheme.headlineMedium,
            )
          ],
        ),
        const SizedBox(height: 20),
        Text(
          "Bienvenue",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(height: 8),
        Text(
          "Connectez-vous pour commencer votre experience avec Go Mobile",
          style:
              Theme.of(context).textTheme.bodyMedium!.apply(color: Colors.grey),
          textAlign: TextAlign.left,
        ),
      ],
    );
  }
}
