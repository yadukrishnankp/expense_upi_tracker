// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TransactionModel _$TransactionModelFromJson(Map<String, dynamic> json) =>
    _TransactionModel(
      id: json['id'] as String,
      category: json['category'] as String,
      wallet: json['wallet'] as String,
      type: json['type'] as String,
      description: json['description'] as String?,
      dateTime: const TimestampDateTimeConverter().fromJson(json['dateTime']),
      createdTime: const TimestampDateTimeConverter().fromJson(
        json['createdTime'],
      ),
      amount: (json['amount'] as num).toDouble(),
    );

Map<String, dynamic> _$TransactionModelToJson(_TransactionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'category': instance.category,
      'wallet': instance.wallet,
      'type': instance.type,
      'description': instance.description,
      'dateTime': const TimestampDateTimeConverter().toJson(instance.dateTime),
      'createdTime': const TimestampDateTimeConverter().toJson(
        instance.createdTime,
      ),
      'amount': instance.amount,
    };
