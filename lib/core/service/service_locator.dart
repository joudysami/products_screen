import 'package:get_it/get_it.dart';
import 'package:products/feature/product/Data/data_source/products_data_source_impl.dart';
import 'package:products/feature/product/Data/Repo/prodduct_repo_impl.dart';
import 'package:products/feature/product/Domain/usecase/get_products.dart';
import 'package:products/feature/product/presentation/cubits/home_cubit.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerLazySingleton(() => ProductsDataSourceImpl());
  getIt.registerLazySingleton<ProductRepoImpl>(
    () => ProductRepoImpl(getIt<ProductsDataSourceImpl>()),
  );

  getIt.registerLazySingleton<GetProductsUseCase>(
    () => GetProductsUseCase(repo: getIt<ProductRepoImpl>()),
  );

  getIt.registerFactory<HomeCubit>(
    () => HomeCubit(getIt<GetProductsUseCase>()),
  );
}
