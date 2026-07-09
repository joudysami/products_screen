// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../feature/product/data/data_source/products_data_source.dart'
    as _i453;
import '../../feature/product/data/data_source/products_data_source_impl.dart'
    as _i820;
import '../../feature/product/data/repo/prodduct_repo_impl.dart' as _i248;
import '../../feature/product/domain/repo/product_repo.dart' as _i621;
import '../../feature/product/domain/usecase/get_products.dart' as _i518;
import '../../feature/product/presentation/cubits/home_cubit.dart' as _i925;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i453.ProductsDataSource>(
      () => _i820.ProductsDataSourceImpl(),
    );
    gh.lazySingleton<_i621.ProductRepo>(
      () => _i248.ProductRepoImpl(gh<_i453.ProductsDataSource>()),
    );
    gh.factory<_i518.GetProductsUseCase>(
      () => _i518.GetProductsUseCase(repo: gh<_i621.ProductRepo>()),
    );
    gh.factory<_i925.HomeCubit>(
      () => _i925.HomeCubit(gh<_i518.GetProductsUseCase>()),
    );
    return this;
  }
}
