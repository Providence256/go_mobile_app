import 'package:flutter/material.dart';
import 'package:go_mobile/common/widgets/product/rounded_container.dart';

class ProductData extends StatelessWidget {
  const ProductData({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //Title
        Text(
          "Iphone 13 Pro",
          style: Theme.of(context).textTheme.headlineSmall,
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          textAlign: TextAlign.left,
        ),
        const SizedBox(height: 16 / 1.5),
        Row(
          children: [
            RoundedContainer(
              radius: 8,
              backgroundColor: Colors.yellow.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(
                vertical: 4,
                horizontal: 8,
              ),
              child: Text(
                "25%",
                style: Theme.of(context).textTheme.labelLarge!.apply(
                      color: Colors.black,
                    ),
              ),
            ),
            const SizedBox(width: 16),
            Text(
              "\$250",
              style: Theme.of(context).textTheme.titleSmall!.apply(
                    decoration: TextDecoration.lineThrough,
                  ),
            ),
            const SizedBox(width: 16),
            Text(
              "\$175",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.headlineMedium,
            )
          ],
        ),
      ],
    );
  }
}
