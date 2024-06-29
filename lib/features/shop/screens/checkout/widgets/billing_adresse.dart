import 'package:flutter/material.dart';
import 'package:go_mobile/features/shop/screens/home/widgets/heading_text.dart';

class BillingAdresseSection extends StatelessWidget {
  const BillingAdresseSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HeadingText(
          text: "Adresse de Livraison",
        ),
        Text(
          "Nguma 27 M",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            const Icon(
              Icons.phone,
              color: Colors.grey,
              size: 16,
            ),
            const SizedBox(width: 16),
            Text(
              "+243 995 415 641",
              style: Theme.of(context).textTheme.bodyMedium,
            )
          ],
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            const Icon(
              Icons.location_history,
              color: Colors.grey,
              size: 16,
            ),
            const SizedBox(width: 16),
            Text(
              "Kinshasa/Ngaliema",
              style: Theme.of(context).textTheme.bodyMedium,
              softWrap: true,
            )
          ],
        ),
      ],
    );
  }
}
