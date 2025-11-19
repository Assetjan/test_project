import 'package:test_project/features/catalog/data/models/dtos/product_dto.dart';
import 'package:test_project/features/catalog/domain/entities/product_entity.dart';

class ProductDtoMapper {
  static ProductEntity toEntity(ProductDto dto) {
    return ProductEntity(
      id: dto.id,
      title: dto.title,
      price: dto.price,
      description: dto.description,
      category: dto.category,
      image: dto.image,
      rating: dto.rating.rate,
      ratingCount: dto.rating.count,
    );
  }
}
