part of 'cart_bloc.dart';
@freezed
abstract class CartEvent with _$CartEvent {
  const factory CartEvent.itemAdded({
    required ProductEntity product,
  }) = CartEventItemAdded;

  const factory CartEvent.itemRemoved({
    required int productId,
  }) = CartEventItemRemoved;

  const factory CartEvent.cleared() = CartEventCleared;
}
