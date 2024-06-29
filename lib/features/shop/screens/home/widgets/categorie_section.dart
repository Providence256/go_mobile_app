import 'package:flutter/material.dart';
import 'package:go_mobile/utils/constants/image_string.dart';

class CategorieSection extends StatelessWidget {
  const CategorieSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 7,
          itemBuilder: (_, index) {
            return Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(TImages.categorie_1),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "Phones",
                    style: Theme.of(context).textTheme.bodySmall!.apply(
                          color: Colors.black,
                        ),
                  )
                ],
              ),
            );
          }),
    );
  }
}
