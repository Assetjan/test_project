import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_project/core/constants/text_constants.dart';
import 'package:test_project/core/constants/ui_constants.dart';
import 'package:test_project/core/service/injectable/injectable_service.dart';
import 'package:test_project/core/theme/colors.dart';
import 'package:test_project/core/theme/image_placeholder.dart';
import 'package:test_project/core/theme/text_styles.dart';
import 'package:test_project/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:test_project/features/catalog/domain/entities/product_entity.dart';

class ProductDetailsPage extends StatelessWidget {
  final ProductEntity product;

  const ProductDetailsPage({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          product.title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppUiConstants.paddingM),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(AppUiConstants.radius),
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
              const SizedBox(height: AppUiConstants.paddingM),
              Text(
                product.title,
                style: AppTextStyles.sectionTitle,
              ),
              const SizedBox(height: 8),
              Text(
                product.category,
                style: AppTextStyles.subtitle,
              ),
              const SizedBox(height: 12),
              Text(
                '\$${product.price.toStringAsFixed(2)}',
                style: AppTextStyles.price,
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: AppColors.accent,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    product.rating.toStringAsFixed(1),
                    style: AppTextStyles.subtitle,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    '(${product.ratingCount})',
                    style: AppTextStyles.subtitle,
                  ),
                ],
              ),
              const SizedBox(height: AppUiConstants.paddingM),
              Text(
                product.description,
                style: AppTextStyles.subtitle,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppUiConstants.paddingM),
          child: SizedBox(
            height: 48,
            child: BlocConsumer<CartBloc, CartState>(
              listenWhen: (previous, current) =>
                  previous.items[product.id]?.quantity !=
                  current.items[product.id]?.quantity,
              listener: (context, state) {
                final isInCart = state.items.containsKey(product.id);
                ScaffoldMessenger.of(context).hideCurrentSnackBar();
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      isInCart
                          ? AppTextConstants.addedToCart
                          : AppTextConstants.removedFromCart,
                    ),
                    duration: const Duration(seconds: 2),
                  ),
                );
              },
              builder: (context, state) {
                final isInCart = state.items.containsKey(product.id);
                return ElevatedButton(
                  onPressed: () {
                    if (isInCart) {
                      getIt<CartBloc>().add(
                        CartEvent.itemRemoved(productId: product.id),
                      );
                    } else {
                      getIt<CartBloc>().add(
                        CartEvent.itemAdded(product: product),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(AppUiConstants.radius),
                    ),
                  ),
                  child: Text(
                    isInCart
                        ? AppTextConstants.removedFromCart
                        : AppTextConstants.addToCart,
                    style: AppTextStyles.button,
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
