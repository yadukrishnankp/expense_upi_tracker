
import 'package:dartz/dartz.dart';
import 'package:e_tracker_upi/data/entity/user_entity.dart';
import 'package:e_tracker_upi/domain/repo/auth_repo.dart';

import '../datasources/auth_remote_datasource.dart';

class AuthRepoImpl extends AuthRepo {
  final AuthRemoteDataSource remoteDataSource;

  AuthRepoImpl({required this.remoteDataSource});

  @override
  Future<Either<String,String>> signIn(String email, String password) async {
    try{
      final result = await remoteDataSource.signIn(email, password);
      return result;
    }
    catch(e){
      print("signIn repo  ${e.toString()}");
      return Left(e.toString());
    }
  }

  @override
  Future<void> signOut() {
    // TODO: implement signOut
    throw UnimplementedError();
  }

  @override
  Future<Either<String, String>> signUp(String email, String password) async {
    final result = await remoteDataSource.signUp(email, password);
    return result;
  }

  @override
  Future<Either<String, bool>> createUser(UserEntity entity) async{
    final result = await remoteDataSource.createUser(entity);
    return result;
  }


}