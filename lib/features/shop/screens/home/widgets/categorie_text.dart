import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CategorieText extends StatelessWidget {
  const CategorieText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 130,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.red),
        borderRadius: BorderRadius.circular(7),
      ),
      child: const Row(
        children: [Icon(Iconsax.mobile), Text("SmartPhones")],
      ),
    );
  }
}
