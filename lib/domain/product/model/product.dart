import 'package:freezed_annotation/freezed_annotation.dart';
part 'product.freezed.dart';
part 'product.g.dart';

@freezed
class ProductModel with _$ProductModel {
  const factory ProductModel({
    required String name,
    @Default(0) double rating,
    @Default(0) double deliveryFee,
    @Default(0) double discountedTotal,
    @Default(0) int discount,
    required String description,
    required String category,
    required double amount,
    required int quantity,
    List<String>? image,
    DateTime? date,
    String? id,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}
