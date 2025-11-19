import 'package:test_project/features/catalog/domain/entities/product_entity.dart';

abstract class IProductsRepository {
  Future<List<ProductEntity>> getProducts();
  Future<List<String>> getCategories();
}
