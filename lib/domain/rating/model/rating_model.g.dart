// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RatingModel _$$_RatingModelFromJson(Map<String, dynamic> json) =>
    _$_RatingModel(
      productId: json['productId'] as String,
      userId: json['userId'] as String,
      rating: (json['rating'] as num).toDouble(),
      title: json['title'] as String,
      description: json['description'] as String,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$_RatingModelToJson(_$_RatingModel instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'userId': instance.userId,
      'rating': instance.rating,
      'title': instance.title,
      'description': instance.description,
      'id': instance.id,
    };
