// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NoteModel _$NoteModelFromJson(Map<String, dynamic> json) => _NoteModel(
  userId: json['userId'] as String,
  id: json['id'] as String,
  title: json['title'] as String,
  priority: json['priority'] as String,
  description: json['description'] as String? ?? "",
  isRemind: json['isRemind'] as bool,
  reminderTime: const TimestampDateTimeConverter().fromJson(
    json['reminderTime'],
  ),
  createdTime: const TimestampDateTimeConverter().fromJson(json['createdTime']),
);

Map<String, dynamic> _$NoteModelToJson(_NoteModel instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'id': instance.id,
      'title': instance.title,
      'priority': instance.priority,
      'description': instance.description,
      'isRemind': instance.isRemind,
      'reminderTime': _$JsonConverterToJson<Object?, DateTime>(
        instance.reminderTime,
        const TimestampDateTimeConverter().toJson,
      ),
      'createdTime': const TimestampDateTimeConverter().toJson(
        instance.createdTime,
      ),
    };

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);
