import 'package:test_project/features/catalog/domain/repositories/i_products_repository.dart';

class GetCategoriesUseCase {
  final IProductsRepository repository;

  GetCategoriesUseCase(this.repository);

  Future<List<String>> call() {
    return repository.getCategories();
  }
}
