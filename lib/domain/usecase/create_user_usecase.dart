import 'package:dartz/dartz.dart';
import 'package:e_tracker_upi/data/entity/user_entity.dart';
import 'package:e_tracker_upi/domain/repo/auth_repo.dart';

class CreateUserUseCase{
final AuthRepo authRepo;
  CreateUserUseCase({required this.authRepo});

  Future<Either<String,bool>> call(UserEntity entity)async{
  final result = await authRepo.createUser(entity);
  return result;
  }

}