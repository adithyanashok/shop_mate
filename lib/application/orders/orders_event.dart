part of 'orders_bloc.dart';

@freezed
class OrdersEvent with _$OrdersEvent {
  const factory OrdersEvent.placeOrder(
      {required OrderModel orderModel,
      required BuildContext context}) = _PlaceOrder;
  const factory OrdersEvent.getAllOrders({required BuildContext context}) =
      _GetAllOrders;
  const factory OrdersEvent.getAllOrdersOfAUser(
      {required String userId,
      required BuildContext context}) = _GetAllOrdersOfAUser;
  const factory OrdersEvent.getAOrder(
      {required BuildContext context, required String id}) = _GetAOrder;
  const factory OrdersEvent.updateOrderStatus({
    required BuildContext context,
    required String id,
    required String value,
    required DateTime date,
    required String update,
    required String userId,
  }) = _UpdateOrderStatus;
}
