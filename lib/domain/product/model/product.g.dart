// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductModelImpl _$$ProductModelImplFromJson(Map<String, dynamic> json) =>
    _$ProductModelImpl(
      name: json['name'] as String,
      rating: (json['rating'] as num?)?.toDouble() ?? 0,
      description: json['description'] as String,
      category: json['category'] as String,
      amount: (json['amount'] as num).toDouble(),
      quantity: json['quantity'] as int,
      image:
          (json['image'] as List<dynamic>?)?.map((e) => e as String).toList(),
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$ProductModelImplToJson(_$ProductModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'rating': instance.rating,
      'description': instance.description,
      'category': instance.category,
      'amount': instance.amount,
      'quantity': instance.quantity,
      'image': instance.image,
      'date': instance.date?.toIso8601String(),
      'id': instance.id,
    };
