import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_note_state.freezed.dart';

@freezed
sealed class AddNoteState with _$AddNoteState{
  const factory AddNoteState.initial({
    required AddNoteData noteData
})=AddNoteStateInitial;
  const factory AddNoteState.Loading({
    required AddNoteData noteData
  })=AddNoteStateLoading;
  const factory AddNoteState.Success({
    required AddNoteData noteData,
    String? message
  })=AddNoteStateSuccess;
  const factory AddNoteState.Failure({
    required AddNoteData noteData,
   required  String message
  })=AddNoteStateFailure;
}

@freezed
sealed class AddNoteData with _$AddNoteData{
  const factory AddNoteData({
    required String title,
    String? description,
    required String priority,
    required bool isRemind,
    DateTime? selectedDate
})=_AddNoteData;
}