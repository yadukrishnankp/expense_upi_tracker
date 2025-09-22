

import 'package:dartz/dartz.dart';
import 'package:e_tracker_upi/data/model/note/note_model.dart';

abstract class NoteRepo{

  Future<Either<String,String>> addNote(NoteModel model);
  Future<Either<String,List<NoteModel>>>getNotes();
}