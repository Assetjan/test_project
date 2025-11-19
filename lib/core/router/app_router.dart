import 'package:go_router/go_router.dart';
import 'package:test_project/features/cart/presentation/pages/cart_page.dart';
import 'package:test_project/features/catalog/presentation/pages/catalog_page.dart';
import 'package:test_project/features/catalog/domain/entities/product_entity.dart';
import 'package:test_project/features/product_details/presentation/pages/product_details_page.dart';

class AppRouter {
  static GoRouter createRouter() {
    return GoRouter(
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const CatalogPage(),
        ),
        GoRoute(
          path: '/product',
          builder: (context, state) {
            final product = state.extra as ProductEntity;
            return ProductDetailsPage(product: product);
          },
        ),
        GoRoute(
          path: '/cart',
          builder: (context, state) => const CartPage(),
        ),
      ],
    );
  }
}
