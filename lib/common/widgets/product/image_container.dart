import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer({
    super.key,
    this.width,
    this.height,
    required this.imageUrl,
    this.applyImageRadius = true,
    this.backgroundColor = Colors.white,
    this.border,
    this.fit = BoxFit.contain,
    this.padding,
    this.onPressed,
    this.borderRadius = 16,
  });

  final double? width, height;
  final String imageUrl;
  final bool applyImageRadius;
  final Color backgroundColor;
  final BoxBorder? border;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final VoidCallback? onPressed;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: padding,
      decoration: BoxDecoration(
        border: border,
        color: backgroundColor,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: ClipRRect(
        child: Image(
          image: AssetImage(
            imageUrl,
          ),
          fit: fit,
        ),
      ),
    );
  }
}
