import 'package:e_tracker_upi/core/network/state/firestore_fetch_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'note_state.freezed.dart';


@freezed
sealed class NoteState with _$NoteState{
  const factory NoteState({
   @Default(FirestoreFetchState.initial()) FirestoreFetchState noteList
}) = _NoteState;
}