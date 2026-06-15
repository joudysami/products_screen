import 'package:products/feature/product/Data/data_source/products_data_source.dart';
import 'package:products/feature/product/Domain/Repo/product_repo.dart';
import 'package:products/feature/product/domain/entities/product_entity.dart';

class ProductRepoImpl implements ProductRepo {
  final ProductsDataSource _productsDataSource;

  ProductRepoImpl(this._productsDataSource);
  @override
  Future<List<ProductEntity>> getProducts() async {
    final result = await _productsDataSource.getProducts();
    return result.map((e) => e.toEntity()).toList();
  }
}
