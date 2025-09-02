
import 'package:dartz/dartz.dart';
import 'package:e_tracker_upi/data/entity/user_entity.dart';

abstract class AuthRepo {

  Future<Either<String,String>> signUp(String email, String password);
  Future<Either<String,String>> signIn(String email, String password);
  Future<void> signOut();
  Future<Either<String,bool>> createUser(UserEntity entity);

}