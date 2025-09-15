
import 'package:dartz/dartz.dart';

import '../../data/model/auth/user_model.dart';

abstract class AuthRepo {

  Future<Either<String,String>> signUp(String email, String password);
  Future<Either<String,String>> signIn(String email, String password);
  Future<Either<String,bool>> signOut();
  Future<Either<String,bool>> createUser(UserModel model);
  Future<Either<String,UserModel>> getUser(String userId);

}