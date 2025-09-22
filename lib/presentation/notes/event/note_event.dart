
import 'package:freezed_annotation/freezed_annotation.dart';
part 'note_event.freezed.dart';

@freezed
sealed class NoteEvent with _$NoteEvent{
  const factory NoteEvent.getNote() = NoteEventGetNote;
}