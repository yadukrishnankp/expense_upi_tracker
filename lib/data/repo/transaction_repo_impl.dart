import 'package:dartz/dartz.dart';
import 'package:e_tracker_upi/data/datasources/transaction_remote_datasource.dart';
import 'package:e_tracker_upi/data/model/transaction/transaction_model.dart';
import 'package:e_tracker_upi/domain/repo/transaction_repo.dart';

class TransactionRepoImpl extends TransactionRepo{
  final TransactionRemoteDatasource transactionRemoteDatasource;

  TransactionRepoImpl({required this.transactionRemoteDatasource});
  @override
  Future<Either<String, String>> addTransaction(TransactionModel model)async {
    final result = await transactionRemoteDatasource.addTransaction(model);
    return result;
  }

}