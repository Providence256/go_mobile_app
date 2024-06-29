import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_mobile/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:go_mobile/features/authentication/screens/signup/signup.dart';
import 'package:go_mobile/navigation_menu.dart';
import 'package:iconsax/iconsax.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 32),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.mail_outline),
                labelText: "Entrer votre adresse mail",
                labelStyle: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            const SizedBox(height: 15),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.lock),
                suffixIcon: Icon(Iconsax.eye_slash),
                labelText: "Entrer votre mot de passe",
                labelStyle: TextStyle(color: Colors.grey),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(
                      value: false,
                      onChanged: (value) {},
                    ),
                    const Text("Se souvenir de moi")
                  ],
                ),
                TextButton(
                  onPressed: () => Get.to(
                    () => const ForgetPasswordScreen(),
                  ),
                  style: TextButton.styleFrom(overlayColor: Colors.transparent),
                  child: Text(
                    "Mot de passe oublié?",
                    style: TextStyle(
                      color: Colors.blue[800],
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 25),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(() => const NavigationMenu()),
                child: const Text("Se Connecter"),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text("Vous n'avez pas de compte?"),
                const SizedBox(width: 5),
                TextButton(
                  onPressed: () => Get.to(() => const SignupScreen()),
                  style: TextButton.styleFrom(overlayColor: Colors.transparent),
                  child: const Text(
                    "Inscrivez-vous",
                    style: TextStyle(color: Color(0xFFD6062A), fontSize: 14),
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
