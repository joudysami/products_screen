import 'dart:developer';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:products/core/state/app_state.dart';
import 'package:products/feature/product/Domain/usecase/get_products.dart';
import 'package:products/feature/product/presentation/cubits/state_cubit.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this. _getProductsUseCase): super(HomeState(getProducts: AppStatus.initial, products: []));
final GetProductsUseCase _getProductsUseCase;


Future<void> getProducts() async {
  emit(state.copyWith(getProducts: AppStatus.loading));

  try {
    final products = await _getProductsUseCase();

    emit(state.copyWith(
      getProducts: AppStatus.success,
      products:  products,
    ));
  }catch (e, stack) {
  log("GET PRODUCTS ERROR: $e");
  log("STACK: $stack");

  emit(state.copyWith(getProducts: AppStatus.error,
  errorMessage: e.toString(),
  ));
}


}
}
