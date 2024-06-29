import 'package:flutter/material.dart';
import 'package:go_mobile/common/widgets/product/rounded_container.dart';
import 'package:go_mobile/utils/helper/helper_functions.dart';

class CustomChoiceChip extends StatelessWidget {
  const CustomChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;
  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      label: THelperFunctions.getColor(text) != null
          ? const SizedBox()
          : Text(text),
      selected: selected,
      onSelected: onSelected,
      labelStyle: TextStyle(color: selected ? Colors.white : null),
      avatar: THelperFunctions.getColor(text) != null
          ? RoundedContainer(
              width: 50,
              height: 50,
              backgroundColor: THelperFunctions.getColor(text)!,
            )
          : null,
      shape:
          THelperFunctions.getColor(text) != null ? const CircleBorder() : null,
      backgroundColor: THelperFunctions.getColor(text),
      labelPadding: THelperFunctions.getColor(text) != null
          ? const EdgeInsets.all(0)
          : null,
      padding: THelperFunctions.getColor(text) != null
          ? const EdgeInsets.all(0)
          : null,
      checkmarkColor: Colors.white,
    );
  }
}
