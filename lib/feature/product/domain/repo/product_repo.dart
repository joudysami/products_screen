import 'package:products/feature/product/domain/entities/product_entity.dart';

abstract interface class ProductRepo {
  Future<List<ProductEntity>> getProducts();
}