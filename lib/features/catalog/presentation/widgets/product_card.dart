import 'package:flutter/material.dart';
import 'package:test_project/core/constants/ui_constants.dart';
import 'package:test_project/core/theme/image_placeholder.dart';
import 'package:test_project/core/theme/text_styles.dart';
import 'package:test_project/features/catalog/domain/entities/product_entity.dart';

class ProductCard extends StatelessWidget {
  final ProductEntity product;
  final VoidCallback onTap;

  const ProductCard({
    super.key,
    required this.product,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppUiConstants.radius),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(AppUiConstants.radius),
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(AppUiConstants.radius),
                  topRight: Radius.circular(AppUiConstants.radius),
                ),
                child: Image.network(
                  product.image,
                  fit: BoxFit.cover,
                  errorBuilder: (_, __, ___) => const ImagePlaceholder(),
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) return child;
                    return const ImagePlaceholder();
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(AppUiConstants.paddingS),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyles.title,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    product.category,
                    style: AppTextStyles.subtitle,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '\$${product.price}',
                    style: AppTextStyles.price,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
