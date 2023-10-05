part of 'orders_bloc.dart';

@freezed
class OrdersState with _$OrdersState {
  const factory OrdersState({
    required bool isLoading,
    required OrderModel orderModel,
    required Option<Either<MainFailure, OrderModel>> orderOpt,
  }) = _OrdersState;

  factory OrdersState.initial() {
    return OrdersState(
      isLoading: false,
      orderModel: OrderModel(
        userId: '',
        totalPrice: 0,
        subTotal: 0,
        totalDeliveryFee: 0,
        totalDiscount: 0,
        products: [],
        orderDate: DateTime.now(),
        shippingAddress: '',
        status: '',
      ),
      orderOpt: const None(),
    );
  }
}
