import 'package:flutter/material.dart';
import 'package:test_project/core/theme/colors.dart';

class ImagePlaceholder extends StatelessWidget {
  final double borderRadius;

  const ImagePlaceholder({
    super.key,
    this.borderRadius = 12,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: const Center(
        child: Icon(
          Icons.image_outlined,
          size: 32,
          color: AppColors.textSecondary,
        ),
      ),
    );
  }
}
