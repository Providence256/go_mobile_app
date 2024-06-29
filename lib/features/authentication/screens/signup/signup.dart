import 'package:flutter/material.dart';
import 'package:go_mobile/common/widgets/form_divider.dart';
import 'package:go_mobile/common/widgets/social_button.dart';
import 'package:go_mobile/features/authentication/screens/signup/widget/signup_form.dart';
import 'package:go_mobile/utils/constants/image_string.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Hero(
                    tag: "logo",
                    child: Image(
                      height: 35,
                      image: AssetImage(TImages.logo),
                    ),
                  ),
                  Text(
                    "Mobile",
                    style: Theme.of(context).textTheme.bodyLarge,
                  )
                ],
              ),
              const SizedBox(height: 15),
              Text(
                "Inscrivez-vous",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 25),
              const SignupForm(),
              const FormDivider(),
              const SizedBox(height: 15),
              const SocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}
