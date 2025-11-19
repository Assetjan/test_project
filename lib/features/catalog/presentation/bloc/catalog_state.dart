part of 'catalog_bloc.dart';

@freezed
abstract class CatalogState with _$CatalogState {
  const factory CatalogState.initial() = CatalogStateInitial;
  const factory CatalogState.loading() = CatalogStateLoading;
  const factory CatalogState.loaded({
    required CatalogViewModel viewModel,
  }) = CatalogStateLoaded;
  const factory CatalogState.error(String message) = CatalogStateError;
}

@freezed
abstract class CatalogViewModel with _$CatalogViewModel {
  const CatalogViewModel._();

  const factory CatalogViewModel({
    @Default(<ProductEntity>[]) List<ProductEntity> products,
    @Default(<String>[]) List<String> categories,
    String? selectedCategory,
    @Default('') String searchQuery,
    @Default(CatalogSort.none) CatalogSort sort,
    @Default(false) bool isRefreshing,
  }) = _CatalogViewModel;

  List<ProductEntity> get filteredProducts {
    var result = products;
    if (selectedCategory != null && selectedCategory!.isNotEmpty) {
      result = result.where((p) => p.category == selectedCategory).toList();
    }
    if (searchQuery.isNotEmpty) {
      final lower = searchQuery.toLowerCase();
      result = result
          .where((p) => p.title.toLowerCase().contains(lower))
          .toList();
    }
    if (sort == CatalogSort.priceAsc) {
      result = List<ProductEntity>.from(result)
        ..sort((a, b) => a.price.compareTo(b.price));
    } else if (sort == CatalogSort.priceDesc) {
      result = List<ProductEntity>.from(result)
        ..sort((a, b) => b.price.compareTo(a.price));
    }
    return result;
  }

  bool get isEmpty => products.isEmpty;
}
