import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:test_project/core/constants/text_constants.dart';
import 'package:test_project/core/constants/ui_constants.dart';
import 'package:test_project/features/catalog/presentation/bloc/catalog_bloc.dart';
import 'package:test_project/features/catalog/presentation/widgets/category_filter.dart';
import 'package:test_project/features/catalog/presentation/widgets/product_card.dart';
import 'package:test_project/features/catalog/presentation/widgets/sort_dropdown.dart';

class CatalogPage extends StatefulWidget {
  const CatalogPage({super.key});

  @override
  State<CatalogPage> createState() => _CatalogPageState();
}

class _CatalogPageState extends State<CatalogPage> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CatalogBloc, CatalogState>(
      builder: (context, state) {
        final bloc = context.read<CatalogBloc>();

        return Scaffold(
          appBar: AppBar(
            title: const Text(AppTextConstants.productsTitle),
            actions: [
              IconButton(
                icon: const Icon(Icons.shopping_cart_outlined),
                onPressed: () {
                  context.push('/cart');
                },
              ),
            ],
          ),
          body: switch (state) {
            CatalogStateLoading() => const Center(
              child: CircularProgressIndicator(),
            ),

            CatalogStateError() => Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(AppTextConstants.error),
                  const SizedBox(height: 8),
                  ElevatedButton(
                    onPressed: () {
                      bloc.add(const CatalogEvent.started());
                    },
                    child: const Text(AppTextConstants.retry),
                  ),
                ],
              ),
            ),

            CatalogStateLoaded(:final viewModel) => RefreshIndicator(
              onRefresh: () async {
                bloc.add(const CatalogEvent.refresh());
              },
              child: ListView(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppUiConstants.paddingM,
                ),
                children: [
                  Center(
                    child: SortDropdown(
                      value: state.viewModel.sort,
                      onChanged: (sort) {
                        bloc.add(CatalogEvent.sortChanged(sort: sort));
                      },
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextField(
                    controller: _searchController,
                    decoration: const InputDecoration(
                      hintText: AppTextConstants.searchHint,
                      prefixIcon: Icon(Icons.search),
                    ),
                    onChanged: (value) {
                      bloc.add(CatalogEvent.searchChanged(query: value));
                    },
                  ),
                  const SizedBox(height: AppUiConstants.paddingM),
                  CategoryFilter(
                    categories: viewModel.categories,
                    selectedCategory: viewModel.selectedCategory,
                    onChanged: (value) {
                      bloc.add(CatalogEvent.categoryChanged(category: value));
                    },
                  ),
                  const SizedBox(height: AppUiConstants.paddingM),
                  if (viewModel.filteredProducts.isEmpty)
                    const Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: AppUiConstants.paddingL),
                        child: Text(AppTextConstants.empty),
                      ),
                    )
                  else
                    GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: viewModel.filteredProducts.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: AppUiConstants.paddingM,
                            crossAxisSpacing: AppUiConstants.paddingM,
                            childAspectRatio: 0.65,
                          ),
                      itemBuilder: (context, index) {
                        final product = viewModel.filteredProducts[index];
                        return ProductCard(
                          product: product,
                          onTap: () {
                            context.push('/product', extra: product);
                          },
                        );
                      },
                    ),
                ],
              ),
            ),

            _ => const SizedBox.shrink(),
          },
        );
      },
    );
  }
}
