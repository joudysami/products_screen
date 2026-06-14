import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:products/core/Data/products_data_source_impl.dart';
import 'package:products/core/state/app_state.dart';
import 'package:products/feature/Cubits/Home_Cubit/state_cubit.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit():super(HomeState(getProducts: AppStatus.initial, products: []));
final ProductsDataSourceImpl _productsDataSource = ProductsDataSourceImpl();
Future<void> getProducts() async {
  emit(state.copyWith(getProducts: AppStatus.loading));

  try {
    final products = await _productsDataSource.getProducts();

    emit(state.copyWith(
      getProducts: AppStatus.success,
      products: products,
    ));
  }catch (e, stack) {
  log("GET PRODUCTS ERROR: $e");
  log("STACK: $stack");

  emit(state.copyWith(getProducts: AppStatus.error));
}


}
}
