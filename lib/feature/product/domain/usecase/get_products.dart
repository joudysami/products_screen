import 'package:products/feature/product/Domain/Repo/product_repo.dart';
import 'package:products/feature/product/domain/entities/product_entity.dart';

class GetProductsUseCase {
  final ProductRepo repo;

  GetProductsUseCase({required this.repo});
  Future<List<ProductEntity>> call() {
    return repo.getProducts();
  }
}
