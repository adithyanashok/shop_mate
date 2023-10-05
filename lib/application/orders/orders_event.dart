part of 'orders_bloc.dart';

@freezed
class OrdersEvent with _$OrdersEvent {
  const factory OrdersEvent.placeOrder(
      {required OrderModel orderModel,
      required BuildContext context}) = _PlaceOrder;
}
