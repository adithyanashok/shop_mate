import 'package:freezed_annotation/freezed_annotation.dart';
part 'order_model.freezed.dart';
part 'order_model.g.dart';

@freezed
class OrderModel with _$OrderModel {
  const factory OrderModel({
    required String userId,
    String? username,
    String? email,
    String? id,
    required double totalPrice,
    required double subTotal,
    required double totalDeliveryFee,
    required double totalDiscount,
    required List products,
    required DateTime orderDate,
    DateTime? orderShippedDate,
    DateTime? orderDeliveredDate,
    required String shippingAddress,
    required String status,
  }) = _OrderModel;

  factory OrderModel.fromJson(Map<String, dynamic> json) =>
      _$OrderModelFromJson(json);
}
