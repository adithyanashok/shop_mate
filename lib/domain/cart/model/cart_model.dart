import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop_mate/domain/product/model/product.dart';

part 'cart_model.freezed.dart';
part 'cart_model.g.dart';

@freezed
class CartModel with _$CartModel {
  const factory CartModel({
    required String userId,
    String? id,
    required double totalPrice,
    required double subTotal,
    required double totalDeliveryFee,
    required double totalDiscount,
    required List products,
  }) = _CartModel;

  factory CartModel.fromJson(Map<String, dynamic> json) =>
      _$CartModelFromJson(json);
}
