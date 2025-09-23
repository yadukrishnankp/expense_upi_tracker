

import 'package:e_tracker_upi/core/utils/id_generator.dart';
import 'package:e_tracker_upi/data/model/note/note_model.dart';
import 'package:e_tracker_upi/domain/repo/preference_repo.dart';
import 'package:e_tracker_upi/domain/usecase/notes/add_note_usecase.dart';
import 'package:e_tracker_upi/presentation/notes/event/add_note_event.dart';
import 'package:e_tracker_upi/presentation/notes/state/add_note_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddNoteBloc extends Bloc<AddNoteEvent,AddNoteState>{
  final AddNoteUseCase addNoteUseCase;
  final PreferenceRepo preferenceRepo;
  AddNoteBloc({required this.addNoteUseCase, required this.preferenceRepo}) :super (AddNoteState.initial(noteData: AddNoteData(title: "", priority: "High", isRemind: false))){
    on<AddNoteTitleChangeEvent>(_onTitleChange);
    on<AddNoteDescChangeEvent>(_onDescChange);
    on<AddNotePriorityChangeEvent>(_onPriorityChange);
    on<AddNoteRemindToggleEvent>(_onReminderToggleChange);
    on<AddNoteDateChangeEvent>(_onDateChange);
    on<NoteAddEvent>(_onNoteAdd);
  }

  _onTitleChange(AddNoteTitleChangeEvent event,Emitter<AddNoteState> emit){
    emit(AddNoteState.initial(noteData: state.noteData.copyWith(title: event.title)));
  }

  _onDescChange(AddNoteDescChangeEvent event,Emitter<AddNoteState> emit){
    emit(AddNoteState.initial(noteData: state.noteData.copyWith(description: event.desc)));
  }
  _onPriorityChange(AddNotePriorityChangeEvent event,Emitter<AddNoteState> emit){
    emit(AddNoteState.initial(noteData: state.noteData.copyWith(priority: event.priority)));
  }

  _onReminderToggleChange(AddNoteRemindToggleEvent event,Emitter<AddNoteState> emit){
    emit(AddNoteState.initial(noteData: state.noteData.copyWith(isRemind: event.value)));
  }
  _onDateChange(AddNoteDateChangeEvent event,Emitter<AddNoteState> emit){
    emit(AddNoteState.initial(noteData: state.noteData.copyWith(selectedDate: event.date)));
  }
  _onNoteAdd(NoteAddEvent event,Emitter<AddNoteState> emit)async{
    emit(AddNoteState.Loading(noteData: state.noteData));
    final userId = await preferenceRepo.getUserId();
    final id = IdGenerator.generateNoteId();
    final result = await addNoteUseCase.call(NoteModel(userId: userId!, id: id, title: state.noteData.title,priority: state.noteData.priority,
        description:state.noteData.description ?? "",isRemind: state.noteData.isRemind, createdTime: DateTime.now(),reminderTime: state.noteData.selectedDate??DateTime.now()));
     result.fold((l) => emit(AddNoteState.Failure(noteData: state.noteData, message: l)),
         (r) => emit(AddNoteState.Success(noteData: state.noteData,message: r)),);
  }
}