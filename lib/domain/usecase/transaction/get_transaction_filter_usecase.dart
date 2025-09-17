
import 'package:dartz/dartz.dart';
import 'package:e_tracker_upi/data/model/transaction/transaction_filter_model.dart';
import 'package:e_tracker_upi/domain/entity/transaction/transaction_entity.dart';
import 'package:e_tracker_upi/domain/repo/transaction_repo.dart';

class GetTransactionFilterUseCase{
  final TransactionRepo transactionRepo;

  GetTransactionFilterUseCase({required this.transactionRepo});

  Future<Either<String,List<TransactionEntity>>> call(TransactionFilterModel model)async{
    final result = await  transactionRepo.getTransactionFilter(model);
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