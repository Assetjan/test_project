import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:test_project/core/api/client/dio/dio_interceptor.dart';
import 'package:test_project/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:test_project/features/catalog/data/datasources/products_remote_datasource.dart';
import 'package:test_project/features/catalog/data/datasources/products_remote_datasource_impl.dart';
import 'package:test_project/features/catalog/data/repositories/products_repository_impl.dart';
import 'package:test_project/features/catalog/domain/repositories/i_products_repository.dart';
import 'package:test_project/features/catalog/domain/usecases/get_categories_usecase.dart';
import 'package:test_project/features/catalog/domain/usecases/get_products_usecase.dart';
import 'package:test_project/features/catalog/presentation/bloc/catalog_bloc.dart';

final GetIt getIt = GetIt.instance;

Future<void> configureDependencies() async {
  getIt.registerLazySingleton<Dio>(
    () => DioInterceptor(Dio()).client,
  );

  getIt.registerLazySingleton<IProductsRemoteDataSource>(
    () => ProductsRemoteDataSourceImpl(getIt<Dio>()),
  );

  getIt.registerLazySingleton<IProductsRepository>(
    () => ProductsRepositoryImpl(getIt<IProductsRemoteDataSource>()),
  );

  getIt.registerLazySingleton<GetProductsUseCase>(
    () => GetProductsUseCase(getIt<IProductsRepository>()),
  );

  getIt.registerLazySingleton<GetCategoriesUseCase>(
    () => GetCategoriesUseCase(getIt<IProductsRepository>()),
  );

  getIt.registerLazySingleton<CartBloc>(
    () => CartBloc(),
  );

  getIt.registerLazySingleton<CatalogBloc>(
    () => CatalogBloc(
      getIt<GetProductsUseCase>(),
      getIt<GetCategoriesUseCase>(),
    ),
  );
}
