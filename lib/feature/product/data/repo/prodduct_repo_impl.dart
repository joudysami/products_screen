
import 'package:injectable/injectable.dart';
import 'package:products/feature/product/data/data_source/products_data_source.dart';
import 'package:products/feature/product/domain/entities/product_entity.dart';
import 'package:products/feature/product/domain/repo/product_repo.dart';

@LazySingleton(as: ProductRepo)
class ProductRepoImpl implements ProductRepo {
  final ProductsDataSource _productsDataSource;

  ProductRepoImpl(this._productsDataSource);
  @override
  Future<List<ProductEntity>> getProducts() async {
    final result = await _productsDataSource.getProducts();
    return result.map((e) => e.toEntity()).toList();
  }
}
