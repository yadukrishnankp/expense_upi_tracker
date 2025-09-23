

import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:e_tracker_upi/data/model/note/note_model.dart';
import 'package:e_tracker_upi/domain/repo/preference_repo.dart';

abstract class NoteRemoteDatasource{
  Future<Either<String,String>>addNote(NoteModel model);
  Future<Either<String,QuerySnapshot<Map<String,dynamic>>>> getNotes();
  Future<Either<String,String>> deleteNote(String id);
  Future<Either<String,String>>updateNote(NoteModel model);
}

class NoteRemoteDataSourceImpl extends NoteRemoteDatasource{
  final FirebaseFirestore firebaseFirestore;
  final PreferenceRepo preferenceRepo;

  NoteRemoteDataSourceImpl({required this.preferenceRepo, required this.firebaseFirestore});
  @override
  Future<Either<String, String>> addNote(NoteModel model) async{
    try{
      await firebaseFirestore.collection("notes").doc(model.id).set(model.toJson());
      return Right("Note added Successfully");
    }
    catch(e){
      print(e.toString());
     return Left("error adding note");
    }
  }

  @override
  Future<Either<String, QuerySnapshot<Map<String, dynamic>>>> getNotes() async{
    try{
      final userId  =await  preferenceRepo.getUserId();
      final result = await firebaseFirestore.collection("notes").where("userId",isEqualTo:  userId).get();
      if(result.docs.isNotEmpty){
        return Right(result);
      }
      else{
        return Left("No data found");
      }
    }
    catch(e){
      print(e.toString());
      return Left("Error adding data");
    }
  }

  @override
  Future<Either<String, String>> deleteNote(String id)async {
    try{
    await  firebaseFirestore.collection("notes").doc(id).delete();
    return Right("Note Deleted Successfully");
    }
    catch(e){
      return Left("Error while deleting note");
    }
  }

  @override
  Future<Either<String, String>> updateNote(NoteModel model ) async{
    try{
      await firebaseFirestore.collection("notes").doc(model.id).update(model.toJson());
      return Right("Note Updated Successfully");
    }
    catch(e){
      return Left("Error while updating  note");
    }
  }

}