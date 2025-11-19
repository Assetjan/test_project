import 'package:dio/dio.dart';
import 'package:test_project/core/api/client/endpoints.dart';
import 'package:test_project/features/catalog/data/datasources/products_remote_datasource.dart';
import 'package:test_project/features/catalog/data/models/dtos/product_dto.dart';

class ProductsRemoteDataSourceImpl implements IProductsRemoteDataSource {
  final Dio _dio;

  ProductsRemoteDataSourceImpl(this._dio);

  @override
  Future<List<ProductDto>> getProducts() async {
    final response = await _dio.get(EndPoints.products);
    final data = response.data as List<dynamic>;
    return data
        .map((e) => ProductDto.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  @override
  Future<List<String>> getCategories() async {
    final response = await _dio.get(EndPoints.categories);
    final data = response.data as List<dynamic>;
    return data.map((e) => e.toString()).toList();
  }
}
