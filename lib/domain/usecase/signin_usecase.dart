

import 'package:dartz/dartz.dart';

import '../repo/auth_repo.dart';

class SignInUseCase {
  final AuthRepo repo;

  SignInUseCase({required this.repo});
  Future<Either<String,String>> call(String username, String password) async {
    try{
      final result = await repo.signIn(username, password);
      return result;
    }
    catch(e){
      print("signIn usecase  ${e.toString()}");
      return Left(e.toString());
    }
  }
}