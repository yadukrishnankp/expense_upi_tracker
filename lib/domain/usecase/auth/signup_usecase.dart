
import 'package:dartz/dartz.dart';

import '../../repo/auth_repo.dart';

class SignUpUseCase {
  final AuthRepo authRepo;

  SignUpUseCase({required this.authRepo});
  Future<Either<String,String>> call(String email, String password) async {
  final result =  authRepo.signUp(email, password);
  return result;
  }
}