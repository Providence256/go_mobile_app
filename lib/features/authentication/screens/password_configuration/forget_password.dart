import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_mobile/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:go_mobile/utils/constants/image_string.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Mot de passe oublié",
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const Image(
                height: 320,
                image: AssetImage(TImages.forgetPassword),
              ),
              const SizedBox(height: 15),
              Text(
                "Ne vous inquiétez pas, parfois les gens peuvent aussi oublier, entrez votre adresse mail et nous vous enverrons un lien de réinitialisation du mot de passe.",
                style: Theme.of(context).textTheme.labelMedium,
              ),
              const SizedBox(height: 15),
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.mail),
                  labelText: "Entrer votre adresse mail",
                  labelStyle: TextStyle(color: Colors.grey),
                ),
              ),
              const SizedBox(height: 15),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(() => const ResetPasswordScreen()),
                  child: const Text("Envoyer"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
