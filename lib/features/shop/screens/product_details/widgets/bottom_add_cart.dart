import 'package:flutter/material.dart';
import 'package:go_mobile/common/widgets/circular_icon.dart';
import 'package:iconsax/iconsax.dart';

class BottomAddToCart extends StatelessWidget {
  const BottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 12,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircularIcon(
                width: 40,
                height: 40,
                backgroundColor: const Color(0xFFD6062A).withOpacity(0.6),
                color: Colors.white,
                icon: Iconsax.minus,
                onPressed: () {},
              ),
              const SizedBox(width: 12),
              Text(
                "2",
                style: Theme.of(context).textTheme.titleSmall,
              ),
              const SizedBox(width: 12),
              CircularIcon(
                width: 40,
                height: 40,
                backgroundColor: const Color(0xFFD6062A),
                color: Colors.white,
                icon: Iconsax.add,
                onPressed: () {},
              )
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(16),
            ),
            child: const Text("Ajouter au Panier"),
          )
        ],
      ),
    );
  }
}
