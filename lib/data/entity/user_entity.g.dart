// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserEntity _$UserEntityFromJson(Map<String, dynamic> json) => _UserEntity(
  name: json['name'] as String,
  userId: json['userId'] as String,
  email: json['email'] as String,
  imageUrl: json['imageUrl'] as String?,
);

Map<String, dynamic> _$UserEntityToJson(_UserEntity instance) =>
    <String, dynamic>{
      'name': instance.name,
      'userId': instance.userId,
      'email': instance.email,
      'imageUrl': instance.imageUrl,
    };
