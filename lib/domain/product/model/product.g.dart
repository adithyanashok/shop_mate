// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductModel _$$_ProductModelFromJson(Map<String, dynamic> json) =>
    _$_ProductModel(
      name: json['name'] as String,
      description: json['description'] as String,
      category: json['category'] as String,
      amount: (json['amount'] as num).toDouble(),
      quantity: json['quantity'] as int,
      image:
          (json['image'] as List<dynamic>?)?.map((e) => e as String).toList(),
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$_ProductModelToJson(_$_ProductModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'category': instance.category,
      'amount': instance.amount,
      'quantity': instance.quantity,
      'image': instance.image,
      'id': instance.id,
    };
