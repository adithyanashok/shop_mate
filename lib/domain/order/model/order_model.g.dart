// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderModelImpl _$$OrderModelImplFromJson(Map<String, dynamic> json) =>
    _$OrderModelImpl(
      userId: json['userId'] as String,
      username: json['username'] as String?,
      email: json['email'] as String?,
      id: json['id'] as String?,
      totalPrice: (json['totalPrice'] as num).toDouble(),
      subTotal: (json['subTotal'] as num).toDouble(),
      totalDeliveryFee: (json['totalDeliveryFee'] as num).toDouble(),
      totalDiscount: (json['totalDiscount'] as num).toDouble(),
      products: json['products'] as List<dynamic>,
      orderDate: DateTime.parse(json['orderDate'] as String),
      orderShippedDate: json['orderShippedDate'] == null
          ? null
          : DateTime.parse(json['orderShippedDate'] as String),
      orderDeliveredDate: json['orderDeliveredDate'] == null
          ? null
          : DateTime.parse(json['orderDeliveredDate'] as String),
      shippingAddress: json['shippingAddress'] as String,
      status: json['status'] as String,
    );

Map<String, dynamic> _$$OrderModelImplToJson(_$OrderModelImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'username': instance.username,
      'email': instance.email,
      'id': instance.id,
      'totalPrice': instance.totalPrice,
      'subTotal': instance.subTotal,
      'totalDeliveryFee': instance.totalDeliveryFee,
      'totalDiscount': instance.totalDiscount,
      'products': instance.products,
      'orderDate': instance.orderDate.toIso8601String(),
      'orderShippedDate': instance.orderShippedDate?.toIso8601String(),
      'orderDeliveredDate': instance.orderDeliveredDate?.toIso8601String(),
      'shippingAddress': instance.shippingAddress,
      'status': instance.status,
    };
