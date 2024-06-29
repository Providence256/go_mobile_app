import 'package:flutter/material.dart';

class FormDivider extends StatelessWidget {
  const FormDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: Colors.grey,
            thickness: 0.5,
            indent: 30,
            endIndent: 5,
          ),
        ),
        Text("Connectez-vous avec"),
        Flexible(
          child: Divider(
            color: Colors.grey,
            thickness: 0.5,
            indent: 5,
            endIndent: 30,
          ),
        )
      ],
    );
  }
}
