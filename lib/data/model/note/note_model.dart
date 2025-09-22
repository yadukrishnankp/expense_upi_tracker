import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'note_model.freezed.dart';
part 'note_model.g.dart';

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
sealed class NoteModel with _$NoteModel {
  const factory NoteModel({
    required String userId,
    required String id,
    required String title,
    required String priority,
    @Default("") String description,
    required bool isRemind,
    @TimestampDateTimeConverter()  DateTime? reminderTime,
    @TimestampDateTimeConverter() required DateTime createdTime,
  }) = _NoteModel;

  factory NoteModel.fromJson(Map<String, dynamic> json) => _$NoteModelFromJson(json);
}