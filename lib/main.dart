import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:test_project/core/constants/text_constants.dart';
import 'package:test_project/core/router/app_router.dart';
import 'package:test_project/core/service/injectable/injectable_service.dart';
import 'package:test_project/core/theme/theme.dart';
import 'package:test_project/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:test_project/features/catalog/presentation/bloc/catalog_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final dir = await getApplicationDocumentsDirectory();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: HydratedStorageDirectory(dir.path),
  );

  await configureDependencies();
  final router = AppRouter.createRouter();

  runApp(MyApp(router: router));
}

class MyApp extends StatelessWidget {
  final GoRouter router;

  const MyApp({super.key, required this.router});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CartBloc>.value(
          value: getIt<CartBloc>(),
        ),
        BlocProvider<CatalogBloc>.value(
          value: getIt<CatalogBloc>()..add(const CatalogEvent.started()),
        ),
      ],
      child: MaterialApp.router(
        title: AppTextConstants.appTitle,
        theme: AppTheme.lightTheme,
        debugShowCheckedModeBanner: false,
        routerConfig: router,
      ),
    );
  }
}
