import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_mobile/common/widgets/product/rounded_container.dart';
import 'package:go_mobile/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:go_mobile/features/shop/screens/checkout/widgets/billing_adresse.dart';
import 'package:go_mobile/features/shop/screens/checkout/widgets/billing_amount.dart';
import 'package:iconsax/iconsax.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(Iconsax.arrow_left),
        ),
        title: Text(
          "Révision de la Commande",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            children: [
              //Items in Cart
              CartItems(
                showAddRemoveButton: false,
              ),
              SizedBox(height: 16),
              RoundedContainer(
                showBorder: true,
                padding: EdgeInsets.all(16),
                backgroundColor: Colors.white,
                child: Column(
                  children: [
                    //Pricing
                    BillingAmountSection(),
                    SizedBox(height: 16),
                    Divider(),
                    BillingAdresseSection(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(24),
        child: ElevatedButton(
          onPressed: () {},
          child: const Text("Passer la Commande \$250"),
        ),
      ),
    );
  }
}
