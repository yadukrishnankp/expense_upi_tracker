import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

part 'transaction_model.freezed.dart';
part 'transaction_model.g.dart';

// Custom converter for Firestore Timestamp <-> DateTime
class TimestampDateTimeConverter implements JsonConverter<DateTime, Object?> {
  const TimestampDateTimeConverter();

  @override
  DateTime fromJson(Object? json) {
    if (json is Timestamp) {
      return json.toDate();
    } else if (json is String) {
      return DateTime.parse(json);
    } else if (json is int) {
      return DateTime.fromMillisecondsSinceEpoch(json);
    }
    throw Exception('Invalid date format');
  }

  @override
  Object? toJson(DateTime date) => Timestamp.fromDate(date);
}

@freezed
sealed class TransactionModel with _$TransactionModel {
  const factory TransactionModel({
    required String id,
    required String userId,
    required String category,
    required String wallet,
    required String type,
    String? description,
    @TimestampDateTimeConverter() required DateTime dateTime,
    @TimestampDateTimeConverter() required DateTime createdTime,
    required double amount,
  }) = _TransactionModel;

  factory TransactionModel.fromJson(Map<String, dynamic> json) =>
      _$TransactionModelFromJson(json);
}
