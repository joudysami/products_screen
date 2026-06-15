import 'package:products/core/state/app_state.dart';
import 'package:products/feature/product/domain/entities/product_entity.dart';

class HomeState {
  final AppStatus getProducts;
  final List<ProductEntity> products;
  final String? errorMessage;

  HomeState({
    required this.getProducts,
    required this.products, this.errorMessage,
    
  });

  HomeState copyWith({
    AppStatus? getProducts,
    List<ProductEntity>? products,
      String? errorMessage,
  }) {
    return HomeState(
      getProducts: getProducts ?? this.getProducts,
      products: products ?? this.products,
      errorMessage:errorMessage
    );
  }
}