part of 'cart_bloc.dart';

@freezed
abstract class CartItem with _$CartItem {
  const factory CartItem({
    required ProductEntity product,
    required int quantity,
  }) = _CartItem;
}

@freezed
abstract class CartState with _$CartState {
  const CartState._();

  const factory CartState({
    @Default(<int, CartItem>{}) Map<int, CartItem> items,
  }) = _CartState;

  double get totalPrice {
    return items.values.fold(
      0,
      (sum, item) => sum + item.product.price * item.quantity,
    );
  }

  int get totalCount {
    return items.values.fold(
      0,
      (sum, item) => sum + item.quantity,
    );
  }

  bool get isEmpty => items.isEmpty;
}
