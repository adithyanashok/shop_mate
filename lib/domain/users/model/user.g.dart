// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      email: json['email'] as String?,
      username: json['username'] as String?,
      password: json['password'] as String?,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      isAdmin: json['isAdmin'] as bool?,
      fcmToken: json['fcmToken'] as String?,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'username': instance.username,
      'password': instance.password,
      'date': instance.date?.toIso8601String(),
      'isAdmin': instance.isAdmin,
      'fcmToken': instance.fcmToken,
    };
