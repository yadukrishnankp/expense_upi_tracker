
import 'package:e_tracker_upi/data/model/note/note_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
part 'note_entity.freezed.dart';

@freezed
sealed class NoteEntity with _$NoteEntity {
  const factory NoteEntity({
    required String userId,
    required String id,
    required String title,
    required String priority,
    @Default("") String description,
    required bool isRemind,
    DateTime? reminderTime,
     required DateTime createdTime,
    String? rDate,
    String? rTime,
    required String  date,
    required String time
})= _NoteEntity;

  factory NoteEntity.fromModel(NoteModel mode){
    final dateTimeObj = mode.reminderTime;
    final createdTimeObj = mode.createdTime;

    String? formattedDate;
    String? formattedTime;


    if(dateTimeObj !=null){
      formattedDate = DateFormat('dd/MM/yyyy').format(dateTimeObj);
      formattedTime = DateFormat('HH:mm').format(dateTimeObj);
    }

    final createdDate = DateFormat('dd/MM/yyyy').format(createdTimeObj);
    final createdTimeFormatted = DateFormat('HH:mm').format(createdTimeObj);
    return NoteEntity(
        userId: mode.userId,
        id: mode.id,
        title: mode.title,
        priority: mode.priority,
        reminderTime: mode.reminderTime,
        rDate: formattedDate,
        rTime: formattedTime,
        isRemind: mode.isRemind, createdTime:
    mode.createdTime, date: createdDate, time: createdTimeFormatted);
  }
}