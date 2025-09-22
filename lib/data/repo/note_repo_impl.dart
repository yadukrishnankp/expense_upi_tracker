

import 'package:dartz/dartz.dart';
import 'package:e_tracker_upi/data/datasources/note_remote_datasource.dart';
import 'package:e_tracker_upi/data/model/note/note_model.dart';
import 'package:e_tracker_upi/domain/repo/note_repo.dart';

class NoteRepoImpl implements NoteRepo{
  final NoteRemoteDatasource noteRemoteDatasource;

  NoteRepoImpl({required this.noteRemoteDatasource});
  @override
  Future<Either<String, String>> addNote(NoteModel model) async{
    final result =await noteRemoteDatasource.addNote(model);
    return result;
  }

  @override
  Future<Either<String, List<NoteModel>>> getNotes()async {
    final result = await noteRemoteDatasource.getNotes();
    return result.fold((l) {
      return Left(l);
    }, (r) {
      return Right(r.docs.map((e) {
        return NoteModel.fromJson(e.data());
      },).toList());
    },);
  }


      
}