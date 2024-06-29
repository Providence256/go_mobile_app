import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_mobile/features/authentication/screens/login/login.dart';
import 'package:iconsax/iconsax.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Iconsax.user,
                      color: Colors.black,
                    ),
                    labelText: "Prénom",
                    labelStyle: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              const SizedBox(width: 15),
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Iconsax.user,
                      color: Colors.black,
                    ),
                    labelText: "Nom",
                    labelStyle: TextStyle(color: Colors.grey),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 15),
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(
                Icons.mail,
                color: Colors.black,
              ),
              labelText: "Email",
              labelStyle: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
          const SizedBox(height: 15),
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: CountryCodePicker(
                initialSelection: "CD",
              ),
              labelText: "Entrez votre numero de telephone",
              labelStyle: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ),
          const SizedBox(height: 15),
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(
                Iconsax.lock,
                color: Colors.black,
              ),
              labelText: "Mot de passe",
              labelStyle: TextStyle(
                color: Colors.grey,
              ),
              suffixIcon: Icon(
                Iconsax.eye_slash,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 15),
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(
                Iconsax.lock,
                color: Colors.black,
              ),
              labelText: "Confirmez Mot de passe",
              labelStyle: TextStyle(
                color: Colors.grey,
              ),
              suffixIcon: Icon(
                Iconsax.eye_slash,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text("S'inscrire"),
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text("Vous avez deja un compte?"),
              TextButton(
                onPressed: () => Get.to(
                  () => const LoginScreen(),
                ),
                style: TextButton.styleFrom(
                  overlayColor: Colors.transparent,
                ),
                child: const Text(
                  "Se connecter",
                  style: TextStyle(
                    color: Color(0xFFD6062A),
                    fontSize: 14,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
