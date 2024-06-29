import 'package:flutter/material.dart';
import 'package:go_mobile/features/shop/screens/cart/widgets/add_remove_button.dart';
import 'package:go_mobile/features/shop/screens/cart/widgets/cart_data.dart';

class CartItems extends StatelessWidget {
  const CartItems({super.key, this.showAddRemoveButton = true});

  final bool showAddRemoveButton;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemBuilder: (_, index) => Column(
        children: [
          const CartData(),
          if (showAddRemoveButton) const SizedBox(height: 16),
          if (showAddRemoveButton)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Row(
                  children: [
                    SizedBox(width: 70),
                    //Add Remove Button
                    AddRemoveButton(),
                  ],
                ),
                Text(
                  "\$250",
                  style: Theme.of(context).textTheme.titleLarge,
                )
              ],
            ),
        ],
      ),
      separatorBuilder: (_, __) => const SizedBox(
        height: 15,
      ),
      itemCount: 4,
    );
  }
}
