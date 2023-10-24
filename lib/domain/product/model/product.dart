import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_pickers/image_pickers.dart';
part 'product.freezed.dart';
part 'product.g.dart';

@freezed
class ProductModel with _$ProductModel {
  const factory ProductModel({
    required String name,
    @Default(0) double rating,
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
