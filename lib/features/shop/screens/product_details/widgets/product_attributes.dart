import 'package:flutter/material.dart';
import 'package:go_mobile/common/widgets/chips/choice_chip.dart';
import 'package:go_mobile/features/shop/screens/home/widgets/heading_text.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Selected Attributes Pricing and Description

        // Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HeadingText(
              text: "Couleur",
            ),
            const SizedBox(height: 8),
            Wrap(
              spacing: 1,
              children: [
                CustomChoiceChip(
                  text: "Blue",
                  selected: true,
                  onSelected: (value) {},
                ),
                CustomChoiceChip(
                  text: "Black",
                  selected: false,
                  onSelected: (value) {},
                ),
                CustomChoiceChip(
                  text: "Indigo",
                  selected: false,
                  onSelected: (value) {},
                )
              ],
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HeadingText(
              text: "Capacité",
            ),
            const SizedBox(height: 8),
            Wrap(
              spacing: 8,
              children: [
                CustomChoiceChip(
                  text: "1 TB",
                  selected: true,
                  onSelected: (value) {},
                ),
                CustomChoiceChip(
                  text: "512 GB",
                  selected: false,
                  onSelected: (value) {},
                ),
                CustomChoiceChip(
                  text: "256 GB",
                  selected: false,
                  onSelected: (value) {},
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
