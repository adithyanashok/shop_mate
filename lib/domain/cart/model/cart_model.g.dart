// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CartModel _$$_CartModelFromJson(Map<String, dynamic> json) => _$_CartModel(
      userId: json['userId'] as String,
      id: json['id'] as String?,
      totalPrice: (json['totalPrice'] as num).toDouble(),
      totalDeliveryFee: (json['totalDeliveryFee'] as num).toDouble(),
      totalDiscount: (json['totalDiscount'] as num).toDouble(),
      products: json['products'] as List<dynamic>,
    );

Map<String, dynamic> _$$_CartModelToJson(_$_CartModel instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'id': instance.id,
      'totalPrice': instance.totalPrice,
      'totalDeliveryFee': instance.totalDeliveryFee,
      'totalDiscount': instance.totalDiscount,
      'products': instance.products,
    };
