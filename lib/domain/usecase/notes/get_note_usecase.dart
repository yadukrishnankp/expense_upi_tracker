
import 'package:dartz/dartz.dart';
import 'package:e_tracker_upi/domain/entity/note/note_entity.dart';
import 'package:e_tracker_upi/domain/repo/note_repo.dart';

class GetNoteUseCase{
  final NoteRepo noteRepo;

  GetNoteUseCase({required this.noteRepo});
  Future<Either<String,List<NoteEntity>>>call()async{
    final result = await noteRepo.getNotes();
    return result.fold((l) => Left(l),
        (r){
      return Right(r.map((e) => NoteEntity.fromModel(e)).toList());
        });
  }
}