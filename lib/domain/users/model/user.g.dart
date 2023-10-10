// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      email: json['email'] as String?,
      username: json['username'] as String?,
      password: json['password'] as String?,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      isAdmin: json['isAdmin'] as bool?,
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'email': instance.email,
      'username': instance.username,
      'password': instance.password,
      'date': instance.date?.toIso8601String(),
      'isAdmin': instance.isAdmin,
    };
