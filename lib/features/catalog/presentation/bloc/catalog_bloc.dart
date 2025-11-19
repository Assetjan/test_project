import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import 'package:test_project/core/service/injectable/injectable_service.dart';
import 'package:test_project/core/service/injectable/service_register_proxy.dart';
import 'package:test_project/core/utils/bloc_transformers/debounce_transformer.dart';
import 'package:test_project/core/utils/loggers/logger.dart';
import 'package:test_project/features/catalog/domain/entities/product_entity.dart';
import 'package:test_project/features/catalog/domain/usecases/get_categories_usecase.dart';
import 'package:test_project/features/catalog/domain/usecases/get_products_usecase.dart';

part 'catalog_bloc.freezed.dart';
part 'catalog_event.dart';
part 'catalog_state.dart';


class CatalogBloc extends HydratedBloc<CatalogEvent, CatalogState> {
  CatalogBloc(
    this.getProductsUseCase,
    this.getCategoriesUseCase,
  ) : super(const CatalogState.initial()) {
    on<CatalogEventStarted>(_onStarted);
    on<CatalogEventRefresh>(_onRefresh);
    on<CatalogEventSearchChanged>(
      _onSearchChanged,
      transformer: debounceTransformer(milliseconds: 400),
    );
    on<CatalogEventCategoryChanged>(_onCategoryChanged);
    on<CatalogEventSortChanged>(_onSortChanged);
  }

  final GetProductsUseCase getProductsUseCase;
  final GetCategoriesUseCase getCategoriesUseCase;

  Future<void> _onStarted(
    CatalogEventStarted event,
    Emitter<CatalogState> emit,
  ) async {
    await _load(emit, isRefresh: false);
  }

  Future<void> _onRefresh(
    CatalogEventRefresh event,
    Emitter<CatalogState> emit,
  ) async {
    await _load(emit, isRefresh: true);
  }

  Future<void> _load(
    Emitter<CatalogState> emit, {
    required bool isRefresh,
  }) async {
    final currentVm = switch (state) {
      CatalogStateLoaded(:final viewModel) => viewModel,
      _ => const CatalogViewModel(),
    };

    if (!isRefresh) {
      emit(const CatalogState.loading());
    } else {
      emit(
        CatalogState.loaded(
          viewModel: currentVm.copyWith(isRefreshing: true),
        ),
      );
    }

    try {
      final products = await getProductsUseCase();
      final categories = await getCategoriesUseCase();
      final sortedCategories = List<String>.from(categories)..sort();

      final vm = CatalogViewModel(
        products: products,
        categories: sortedCategories,
        selectedCategory: currentVm.selectedCategory,
        searchQuery: currentVm.searchQuery,
        sort: currentVm.sort,
      );

      emit(CatalogState.loaded(viewModel: vm));
    } catch (e, s) {
      AppLogger.e('Catalog load error', error: e, stackTrace: s);
      emit(CatalogState.error(e.toString()));
    }
  }

  void _onSearchChanged(
    CatalogEventSearchChanged event,
    Emitter<CatalogState> emit,
  ) {
    final currentVm = switch (state) {
      CatalogStateLoaded(:final viewModel) => viewModel,
      _ => const CatalogViewModel(),
    };

    emit(
      CatalogState.loaded(
        viewModel: currentVm.copyWith(searchQuery: event.query),
      ),
    );
  }

  void _onCategoryChanged(
    CatalogEventCategoryChanged event,
    Emitter<CatalogState> emit,
  ) {
    final currentVm = switch (state) {
      CatalogStateLoaded(:final viewModel) => viewModel,
      _ => const CatalogViewModel(),
    };

    emit(
      CatalogState.loaded(
        viewModel: currentVm.copyWith(selectedCategory: event.category),
      ),
    );
  }

  void _onSortChanged(
    CatalogEventSortChanged event,
    Emitter<CatalogState> emit,
  ) {
    final currentVm = switch (state) {
      CatalogStateLoaded(:final viewModel) => viewModel,
      _ => const CatalogViewModel(),
    };

    emit(
      CatalogState.loaded(
        viewModel: currentVm.copyWith(sort: event.sort),
      ),
    );
  }

  @override
  CatalogState? fromJson(Map<String, dynamic> json) {
    try {
      final vm = _viewModelFromJson(json);
      return CatalogState.loaded(viewModel: vm);
    } catch (_) {
      return const CatalogState.initial();
    }
  }

  @override
  Map<String, dynamic>? toJson(CatalogState state) {
    return switch (state) {
      CatalogStateLoaded(:final viewModel) => _viewModelToJson(viewModel),
      _ => null,
    };
  }

  Map<String, dynamic> _viewModelToJson(CatalogViewModel vm) {
    return {
      'products': vm.products.map(_productToJson).toList(),
      'categories': vm.categories,
      'selectedCategory': vm.selectedCategory,
      'searchQuery': vm.searchQuery,
      'sort': vm.sort.name,
    };
  }

  CatalogViewModel _viewModelFromJson(Map<String, dynamic> json) {
    final productsJson = json['products'] as List<dynamic>;
    final products = productsJson
        .map((e) => _productFromJson(e as Map<String, dynamic>))
        .toList();
    final categories = (json['categories'] as List<dynamic>)
        .map((e) => e.toString())
        .toList();
    final selectedCategory = json['selectedCategory'] as String?;
    final searchQuery = json['searchQuery'] as String;
    final sortName = json['sort'] as String;
    final sort = CatalogSort.values.firstWhere(
      (s) => s.name == sortName,
      orElse: () => CatalogSort.none,
    );

    return CatalogViewModel(
      products: products,
      categories: categories,
      selectedCategory: selectedCategory,
      searchQuery: searchQuery,
      sort: sort,
    );
  }

  Map<String, dynamic> _productToJson(ProductEntity product) {
    return {
      'id': product.id,
      'title': product.title,
      'price': product.price,
      'description': product.description,
      'category': product.category,
      'image': product.image,
      'rating': product.rating,
      'ratingCount': product.ratingCount,
    };
  }

  ProductEntity _productFromJson(Map<String, dynamic> json) {
    return ProductEntity(
      id: json['id'] as int,
      title: json['title'] as String,
      price: (json['price'] as num).toDouble() ?? 0,
      description: json['description'] as String,
      category: json['category'] as String,
      image: json['image'] as String,
      rating: (json['rating'] as num?)?.toDouble() ?? 0,
      ratingCount: json['ratingCount'] as int,
    );
  }

  @override
  Future<void> close() {
    getIt.resetBloc(this);
    return super.close();
  }
}