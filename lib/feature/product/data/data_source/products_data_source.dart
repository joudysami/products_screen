import 'package:products/feature/product/Data/Model/product.dart';

abstract interface class ProductsDataSource {
  Future<List<Product>> getProducts();

}