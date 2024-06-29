import 'package:flutter/material.dart';
import 'package:go_mobile/common/widgets/circular_icon.dart';
import 'package:iconsax/iconsax.dart';

class AddRemoveButton extends StatelessWidget {
  const AddRemoveButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircularIcon(
          icon: Iconsax.minus,
          onPressed: () {},
          width: 32,
          height: 32,
          size: 16,
          color: Colors.white,
          backgroundColor: const Color(0xFFD6062A).withOpacity(0.6),
        ),
        const SizedBox(width: 10),
        Text(
          "2",
          style: Theme.of(context).textTheme.titleSmall,
        ),
        const SizedBox(width: 10),
        CircularIcon(
          icon: Iconsax.add,
          onPressed: () {},
          height: 32,
          width: 32,
          size: 16,
          color: Colors.white,
          backgroundColor: const Color(0xFFD6062A),
        )
      ],
    );
  }
}
