
import 'package:products/feature/product/domain/entities/product_entity.dart';
abstract  class ProductRepo {
  Future<List<ProductEntity>> getProducts();
}
