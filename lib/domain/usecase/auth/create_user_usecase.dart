import 'package:dartz/dartz.dart';
import 'package:e_tracker_upi/domain/repo/auth_repo.dart';

import '../../../data/model/auth/user_model.dart';

class CreateUserUseCase{
final AuthRepo authRepo;
  CreateUserUseCase({required this.authRepo});

  Future<Either<String,bool>> call(UserModel entity)async{
  final result = await authRepo.createUser(entity);
  return result;
  }

}