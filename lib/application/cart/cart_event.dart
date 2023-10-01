part of 'cart_bloc.dart';

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.addToCart({
    required CartModel cartModel,
    required BuildContext context,
  }) = _AddToCart;
  const factory CartEvent.getCart({
    required String userId,
    required BuildContext context,
  }) = _GetCart;
  const factory CartEvent.incrementQty({
    required CartModel cartModel,
    required String type,
    required BuildContext context,
  }) = _IncrementQty;
  const factory CartEvent.decrementCartQty({
    required String userId,
    required String id,
    required int quantity,
    required double price,
    required String type,
    required BuildContext context,
  }) = _DecrementCartQty;
}
