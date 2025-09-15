// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserModel _$UserModelFromJson(Map<String, dynamic> json) => _UserModel(
  name: json['name'] as String,
  userId: json['userId'] as String,
  email: json['email'] as String,
  imageUrl: json['imageUrl'] as String?,
);

Map<String, dynamic> _$UserModelToJson(_UserModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'userId': instance.userId,
      'email': instance.email,
      'imageUrl': instance.imageUrl,
    };
