

import 'package:dartz/dartz.dart';
import 'package:e_tracker_upi/data/model/note/note_model.dart';
import 'package:e_tracker_upi/domain/repo/note_repo.dart';

class UpdateNoteUseCase{
  final NoteRepo noteRepo;

  UpdateNoteUseCase({required this.noteRepo});
  Future<Either<String,String>>call(NoteModel model)async{
    final result = await noteRepo.updateNote(model );
    return result;
  }
}