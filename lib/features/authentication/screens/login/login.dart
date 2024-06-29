import 'package:flutter/material.dart';
import 'package:go_mobile/common/widgets/form_divider.dart';
import 'package:go_mobile/common/widgets/social_button.dart';
import 'package:go_mobile/features/authentication/screens/login/widget/login_form.dart';
import 'package:go_mobile/features/authentication/screens/login/widget/login_header.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: 24,
            right: 24,
            top: 56,
            bottom: 24,
          ),
          child: Column(
            children: [
              //Logo, Title, SubTitle
              LoginHeader(),

              //Form
              LoginForm(),

              //Divider
              FormDivider(),
              SizedBox(height: 15),
              SocialButton()
            ],
          ),
        ),
      ),
    );
  }
}
