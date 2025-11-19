import 'package:test_project/features/catalog/data/models/dtos/product_dto.dart';

abstract class IProductsRemoteDataSource {
  Future<List<ProductDto>> getProducts();
  Future<List<String>> getCategories();
}
