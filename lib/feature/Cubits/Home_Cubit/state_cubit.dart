import 'package:products/core/model/products/product.dart';
import 'package:products/core/state/app_state.dart';

class HomeState {
  final AppStatus getProducts;
  final List<Product> products;

  HomeState({
    required this.getProducts,
    required this.products,
  });

  HomeState copyWith({
    AppStatus? getProducts,
    List<Product>? products,
  }) {
    return HomeState(
      getProducts: getProducts ?? this.getProducts,
      products: products ?? this.products,
    );
  }
}