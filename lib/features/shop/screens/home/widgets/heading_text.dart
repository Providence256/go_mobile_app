import 'package:flutter/material.dart';

class HeadingText extends StatelessWidget {
  const HeadingText({
    super.key,
    required this.text,
    this.showButton = false,
  });

  final String text;
  final bool showButton;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: Colors.black),
        ),
        if (showButton)
          TextButton(
            onPressed: () {},
            child: const Text("Voir tout"),
          )
      ],
    );
  }
}
