import 'package:flutter/material.dart';
import 'package:go_mobile/common/widgets/product/image_container.dart';
import 'package:go_mobile/utils/constants/image_string.dart';

class CartData extends StatelessWidget {
  const CartData({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const ImageContainer(
          imageUrl: TImages.product,
          width: 60,
          height: 60,
          padding: EdgeInsets.all(8),
          backgroundColor: Colors.white,
        ),
        const SizedBox(width: 16),
        Column(
          children: [
            Text(
              "Iphone 13 pro",
              style: Theme.of(context).textTheme.titleSmall,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
            ),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Couleur ',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  TextSpan(
                    text: "Blue ",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  TextSpan(
                    text: "Capacité ",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  TextSpan(
                    text: "1 TB",
                    style: Theme.of(context).textTheme.bodyLarge,
                  )
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
