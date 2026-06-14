import 'package:products/core/model/products/product.dart';

abstract interface class ProductsDataSource {
  Future<List<Product>> getProducts();

}