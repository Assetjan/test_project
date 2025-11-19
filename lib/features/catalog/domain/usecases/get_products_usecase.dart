import 'package:test_project/features/catalog/domain/entities/product_entity.dart';
import 'package:test_project/features/catalog/domain/repositories/i_products_repository.dart';

class GetProductsUseCase {
  final IProductsRepository repository;

  GetProductsUseCase(this.repository);

  Future<List<ProductEntity>> call() {
    return repository.getProducts();
  }
}
