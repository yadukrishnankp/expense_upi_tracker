

import 'package:dartz/dartz.dart';
import 'package:e_tracker_upi/domain/repo/auth_repo.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../../data/model/auth/user_model.dart';

class GetUserUseCase{
  final AuthRepo authRepo;

  GetUserUseCase({required this.authRepo});

    Future<Either<String, UserModel>> call(String userId)async{
      final result =await  authRepo.getUser(userId);
      return result;
    }
}