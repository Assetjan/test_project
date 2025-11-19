import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_project/core/constants/text_constants.dart';
import 'package:test_project/core/constants/ui_constants.dart';
import 'package:test_project/core/service/injectable/injectable_service.dart';
import 'package:test_project/core/theme/colors.dart';
import 'package:test_project/core/theme/text_styles.dart';
import 'package:test_project/features/cart/presentation/bloc/cart_bloc.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text(AppTextConstants.cartTitle),
          ),
          body: state.isEmpty
              ? const Center(
                  child: Text(AppTextConstants.cartEmpty),
                )
              : Column(
                  children: [
                    Expanded(
                      child: ListView.separated(
                        itemCount: state.items.length,
                        separatorBuilder: (_, __) =>
                            const SizedBox(height: AppUiConstants.paddingS),
                        padding: const EdgeInsets.all(AppUiConstants.paddingM),
                        itemBuilder: (context, index) {
                          final entry = state.items.entries.elementAt(index);
                          final item = entry.value;
                          return ListTile(
                            title: Text(
                              item.product.title,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            subtitle: Text(
                              item.product.category,
                            ),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  '\$${(item.product.price * item.quantity).toStringAsFixed(2)}',
                                  style: AppTextStyles.price,
                                ),
                                IconButton(
                                  onPressed: () {
                                    getIt<CartBloc>().add(
                                          CartEvent.itemRemoved(
                                            productId: item.product.id,
                                          ),
                                        );
                                  },
                                  icon: const Icon(
                                    Icons.delete_outline,
                                    color: AppColors.error,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(AppUiConstants.paddingM),
                      decoration: const BoxDecoration(
                        border: Border(
                          top: BorderSide(
                            color: AppColors.textSecondary,
                            width: 0.2,
                          ),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            AppTextConstants.total,
                            style: AppTextStyles.sectionTitle,
                          ),
                          Text(
                            '\$${state.totalPrice.toStringAsFixed(2)}',
                            style: AppTextStyles.price,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
        );
      },
    );
  }
}
