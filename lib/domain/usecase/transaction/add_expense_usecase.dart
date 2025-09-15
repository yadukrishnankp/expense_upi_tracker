
import 'package:dartz/dartz.dart';
import 'package:e_tracker_upi/data/model/transaction/transaction_model.dart';
import 'package:e_tracker_upi/domain/repo/transaction_repo.dart';

class AddExpenseUseCase{
  final TransactionRepo transactionRepo;

  AddExpenseUseCase({required this.transactionRepo});
    Future<Either<String,String>> call(TransactionModel model)async{
      final result = await transactionRepo.addTransaction(model);
      return result;
    }
}