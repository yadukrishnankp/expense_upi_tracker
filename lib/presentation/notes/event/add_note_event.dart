
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_note_event.freezed.dart';

@freezed
sealed class AddNoteEvent with _$AddNoteEvent{
  const factory AddNoteEvent.onTitleChange(String title) = AddNoteTitleChangeEvent;
  const factory AddNoteEvent.onDescriptionChange(String desc) = AddNoteDescChangeEvent;
  const factory AddNoteEvent.onPriorityChange(String priority) = AddNotePriorityChangeEvent;
  const factory AddNoteEvent.onRemindToggle(bool value) = AddNoteRemindToggleEvent;
  const factory AddNoteEvent.onRemindDateChange(DateTime date) = AddNoteDateChangeEvent;
  const factory AddNoteEvent.onNoteAddEvent() = NoteAddEvent;
}