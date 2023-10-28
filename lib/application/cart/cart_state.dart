part of 'cart_bloc.dart';

@freezed
class CartState with _$CartState {
  const factory CartState({
    required bool isLoading,
    required bool isDeleting,
    required List<CartModel> cartList,
    required CartModel cart,
    required bool cartBool,
    required Option<Either<MainFailure, CartModel>> cartOpt,
    required Option<Either<MainFailure, List<CartModel>>> cartListOpt,
  }) = _CartState;
  factory CartState.initial() {
    return const CartState(
        isLoading: false,
        isDeleting: false,
        cartList: [],
        cart: CartModel(
          userId: '',
          totalPrice: 0,
          products: [],
          totalDeliveryFee: 0,
          totalDiscount: 0,
          subTotal: 0,
        ),
        cartOpt: None(),
        cartBool: false,
        cartListOpt: None());
  }
}
