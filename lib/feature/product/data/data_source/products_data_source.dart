import 'package:products/feature/product/Data/Model/product.dart';

abstract  class ProductsDataSource {
  Future<List<Product>> getProducts();
  
}
