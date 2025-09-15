import 'package:dartz/dartz.dart';
import 'package:e_tracker_upi/domain/repo/auth_repo.dart';

import '../datasources/auth_remote_datasource.dart';
import '../model/auth/user_model.dart';

class AuthRepoImpl extends AuthRepo {
  final AuthRemoteDataSource remoteDataSource;

  AuthRepoImpl({required this.remoteDataSource});

  @override
  Future<Either<String, String>> signIn(String email, String password) async {
    try {
      final result = await remoteDataSource.signIn(email, password);
      return result;
    } catch (e) {
      print("signIn repo  ${e.toString()}");
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, bool>> signOut() async {
    final result = await remoteDataSource.signOut();
    return result;
  }

  @override
  Future<Either<String, String>> signUp(String email, String password) async {
    final result = await remoteDataSource.signUp(email, password);
    return result;
  }

  @override
  Future<Either<String, bool>> createUser(UserModel entity) async {
    final result = await remoteDataSource.createUser(entity);
    return result;
  }

  @override
  Future<Either<String, UserModel>> getUser(String userId) async{
   final result  = await remoteDataSource.getUser(userId);
   return result.fold((l) {
      return  Left(l);
    }, (r) {
      return  Right(UserModel.fromJson(r));
    },);
  }

}
