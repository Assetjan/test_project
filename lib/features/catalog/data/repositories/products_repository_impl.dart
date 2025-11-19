import 'package:test_project/features/catalog/data/datasources/products_remote_datasource.dart';
import 'package:test_project/features/catalog/data/mappers/product_dto_mapper.dart';
import 'package:test_project/features/catalog/domain/entities/product_entity.dart';
import 'package:test_project/features/catalog/domain/repositories/i_products_repository.dart';

class ProductsRepositoryImpl implements IProductsRepository {
  final IProductsRemoteDataSource remoteDataSource;

  ProductsRepositoryImpl(this.remoteDataSource);

  @override
  Future<List<ProductEntity>> getProducts() async {
    final dtos = await remoteDataSource.getProducts();
    return dtos.map(ProductDtoMapper.toEntity).toList();
  }

  @override
  Future<List<String>> getCategories() {
    return remoteDataSource.getCategories();
  }
}
