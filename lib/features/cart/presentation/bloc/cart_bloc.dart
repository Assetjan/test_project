import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:test_project/core/utils/loggers/logger.dart';
import 'package:test_project/features/catalog/domain/entities/product_entity.dart';

part 'cart_bloc.freezed.dart';
part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends HydratedBloc<CartEvent, CartState> {
  CartBloc() : super(const CartState()) {
    on<CartEventItemAdded>(_onItemAdded);
    on<CartEventItemRemoved>(_onItemRemoved);
    on<CartEventCleared>(_onCleared);
  }

  void _onItemAdded(
    CartEventItemAdded event,
    Emitter<CartState> emit,
  ) {
    final items = Map<int, CartItem>.from(state.items);
    final id = event.product.id;
    final existing = items[id];
    if (existing == null) {
      items[id] = CartItem(product: event.product, quantity: 1);
    } else {
      items[id] = existing.copyWith(quantity: existing.quantity + 1);
    }
    emit(state.copyWith(items: items));
  }

  void _onItemRemoved(
    CartEventItemRemoved event,
    Emitter<CartState> emit,
  ) {
    final items = Map<int, CartItem>.from(state.items);
    items.remove(event.productId);
    emit(state.copyWith(items: items));
  }

  void _onCleared(
    CartEventCleared event,
    Emitter<CartState> emit,
  ) {
    emit(const CartState());
  }

  @override
  CartState? fromJson(Map<String, dynamic> json) {
    try {
      final rawItems = json['items'] as Map<String, dynamic>? ?? {};
      final items = <int, CartItem>{};
      for (final entry in rawItems.entries) {
        final key = int.tryParse(entry.key);
        if (key == null) continue;
        final value = entry.value as Map<String, dynamic>;
        final productJson = value['product'] as Map<String, dynamic>;
        final quantity = value['quantity'] as int? ?? 0;
        final product = ProductEntity(
          id: productJson['id'] as int,
          title: productJson['title'] as String? ?? '',
          price: (productJson['price'] as num?)?.toDouble() ?? 0,
          description: productJson['description'] as String? ?? '',
          category: productJson['category'] as String? ?? '',
          image: productJson['image'] as String? ?? '',
          rating: (productJson['rating'] as num?)?.toDouble() ?? 0,
          ratingCount: productJson['ratingCount'] as int? ?? 0,
        );
        items[key] = CartItem(product: product, quantity: quantity);
      }
      return CartState(items: items);
    } catch (e, s) {
      AppLogger.e('Cart fromJson error', error: e, stackTrace: s);
      return const CartState();
    }
  }

  @override
  Map<String, dynamic>? toJson(CartState state) {
    final rawItems = <String, dynamic>{};
    state.items.forEach((key, value) {
      rawItems[key.toString()] = {
        'product': {
          'id': value.product.id,
          'title': value.product.title,
          'price': value.product.price,
          'description': value.product.description,
          'category': value.product.category,
          'image': value.product.image,
          'rating': value.product.rating,
          'ratingCount': value.product.ratingCount,
        },
        'quantity': value.quantity,
      };
    });
    return {'items': rawItems};
  }
}
