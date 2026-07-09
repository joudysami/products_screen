import 'package:injectable/injectable.dart';
import 'package:products/feature/product/domain/entities/product_entity.dart';
import 'package:products/feature/product/domain/repo/product_repo.dart';

@injectable
class GetProductsUseCase {
  final ProductRepo repo;

  GetProductsUseCase({required this.repo});
  Future<List<ProductEntity>> call() {
    return repo.getProducts();
  }
}
