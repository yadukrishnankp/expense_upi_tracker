

import 'package:dartz/dartz.dart';
import 'package:e_tracker_upi/domain/repo/note_repo.dart';

class DeleteNoteUseCase{
  final NoteRepo noteRepo;

  DeleteNoteUseCase({required this.noteRepo});

  Future<Either<String,String>> call(String id)async{
    final result =await noteRepo.deleteNote(id);
    return result;
  }
}