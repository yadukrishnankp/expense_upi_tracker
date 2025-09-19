

import 'package:dartz/dartz.dart';
import 'package:e_tracker_upi/core/utils/app_date_time_utils.dart';
import 'package:e_tracker_upi/domain/entity/transaction/transaction_entity.dart';
import 'package:e_tracker_upi/domain/repo/transaction_repo.dart';

class GetTransactionByTypeUseCase{
  final TransactionRepo transactionRepo;

  GetTransactionByTypeUseCase({required this.transactionRepo});
  Future<Either<String,List<TransactionEntity>>> call(AppDateModel model,String type)async{
    final result = await  transactionRepo.getTransactionByType(model, type);
    return result.fold((l) {
      return Left(l);
    }, (r) {
      final list = r.map((e) {
        print("GetTransactionBetweenDateUseCase ${e.amount}");
        return TransactionEntity.fromModel(e);
      },).toList();
      return Right(list);
    },);
  }
}