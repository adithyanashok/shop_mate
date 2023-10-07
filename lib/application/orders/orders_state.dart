part of 'orders_bloc.dart';

@freezed
class OrdersState with _$OrdersState {
  const factory OrdersState({
    required bool isLoading,
    required OrderModel orderModel,
    required List<OrderModel> orderModelList,
    required Option<Either<MainFailure, OrderModel>> orderOpt,
    required Option<Either<MainFailure, List<OrderModel>>> orderOptList,
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
      orderModelList: [],
      orderOptList: const None(),
    );
  }
}
