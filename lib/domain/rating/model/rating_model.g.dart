// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RatingModelImpl _$$RatingModelImplFromJson(Map<String, dynamic> json) =>
    _$RatingModelImpl(
      productId: json['productId'] as String,
      userId: json['userId'] as String,
      rating: (json['rating'] as num).toDouble(),
      title: json['title'] as String,
      description: json['description'] as String,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$RatingModelImplToJson(_$RatingModelImpl instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'userId': instance.userId,
      'rating': instance.rating,
      'title': instance.title,
      'description': instance.description,
      'id': instance.id,
    };
