// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CartModelImpl _$$CartModelImplFromJson(Map<String, dynamic> json) =>
    _$CartModelImpl(
      userId: json['userId'] as String,
      id: json['id'] as String?,
      totalPrice: (json['totalPrice'] as num).toDouble(),
      subTotal: (json['subTotal'] as num).toDouble(),
      totalDeliveryFee: (json['totalDeliveryFee'] as num).toDouble(),
      totalDiscount: (json['totalDiscount'] as num).toDouble(),
      products: json['products'] as List<dynamic>,
    );

Map<String, dynamic> _$$CartModelImplToJson(_$CartModelImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'id': instance.id,
      'totalPrice': instance.totalPrice,
      'subTotal': instance.subTotal,
      'totalDeliveryFee': instance.totalDeliveryFee,
      'totalDiscount': instance.totalDiscount,
      'products': instance.products,
    };
