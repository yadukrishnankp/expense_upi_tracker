
import 'package:dartz/dartz.dart';
import 'package:e_tracker_upi/core/network/state/firestore_fetch_state.dart';
import 'package:e_tracker_upi/domain/entity/note/note_entity.dart';
import 'package:e_tracker_upi/domain/repo/note_repo.dart';
import 'package:e_tracker_upi/domain/usecase/notes/get_note_usecase.dart';
import 'package:e_tracker_upi/presentation/notes/event/note_event.dart';
import 'package:e_tracker_upi/presentation/notes/state/note_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NoteBloc extends Bloc<NoteEvent,NoteState>{
  final GetNoteUseCase getNoteUseCase;
  NoteBloc({required this.getNoteUseCase}) : super (NoteState(noteList: FirestoreFetchState.initial())){
    on<NoteEventGetNote>(_getNote);
  }
  _getNote(NoteEventGetNote event, Emitter<NoteState> emit)async{
    emit(state.copyWith(noteList: FirestoreFetchState.loading()));
    final result = await getNoteUseCase.call();
    result.fold((l) => emit(state.copyWith(noteList: FirestoreFetchState.failure(l))),
        (r) {
          emit(state.copyWith(
            noteList: FirestoreFetchState.success(r)
          ));
        },);
  }
}