

import 'package:dartz/dartz.dart';
import 'package:e_tracker_upi/data/model/note/note_model.dart';
import 'package:e_tracker_upi/domain/repo/note_repo.dart';

class AddNoteUseCase{
  final NoteRepo noteRepo;

  AddNoteUseCase({required this.noteRepo});

  Future<Either<String,String>>call(NoteModel model)async{
    final result  = await noteRepo.addNote(model);
    return result;
  }
}