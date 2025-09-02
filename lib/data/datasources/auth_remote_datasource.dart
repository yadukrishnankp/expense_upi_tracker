

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:e_tracker_upi/data/entity/user_entity.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRemoteDataSource {
  Future<Either<String,String>> signUp(String email, String password);
  Future<Either<String,String>> signIn(String email, String password);
  Future<void> signOut();
  Future<Either<String,bool>> createUser(UserEntity entity);

}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final FirebaseAuth firebaseAuth;
  final FirebaseFirestore firebaseFirestore;

  AuthRemoteDataSourceImpl({required this.firebaseFirestore, required this.firebaseAuth});
  @override
  Future<Either<String,String>> signIn(String email, String password) async {
     try{
       final credential = await firebaseAuth.signInWithEmailAndPassword(
         email: email,
         password: password,
       );
       if(credential.user != null){
         print("User signed in: ${credential.user!.email}");
         return  Right( credential.user?.uid.toString() ?? "");
     }  else{
         return const Left("Failed to sign in user");
       }
     }
     catch(e ){
        print(e);
        return  Left(e.toString());
     }
  }

  @override
  Future<void> signOut() {
    // TODO: implement signOut
    throw UnimplementedError();
  }

  @override
  Future<Either<String,String>> signUp(String email, String password) async{
    try {
      final credential = await firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      if(credential.user != null){
        print("User created: ${credential.user!.email}");
        return  Right( credential.user?.uid.toString() ?? "");
      }
      else{
        return const Left("Failed to create user");
      }

    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
        return const Left('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
        return const Left('The account already exists for that email.');
      }
      else{
        return Left(e.message ?? "An unknown error occurred");
      }
    } catch (e) {
      print(e);
      return  Left(e.toString());

    }
  }

  @override
  Future<Either<String, bool>> createUser(UserEntity entity)async {
    try{
     await  firebaseFirestore.collection("users").doc(entity.userId).set(entity.toJson());
     return  Right(true);
    }
    catch(e){
      return Left("error creating user");
    }
  }


}