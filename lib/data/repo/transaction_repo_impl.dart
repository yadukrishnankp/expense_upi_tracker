import 'package:dartz/dartz.dart';
import 'package:e_tracker_upi/core/utils/app_date_time_utils.dart';
import 'package:e_tracker_upi/data/datasources/transaction_remote_datasource.dart';
import 'package:e_tracker_upi/data/model/transaction/transaction_model.dart';
import 'package:e_tracker_upi/domain/repo/transaction_repo.dart';

import '../model/transaction/transaction_filter_model.dart';

class TransactionRepoImpl extends TransactionRepo {
  final TransactionRemoteDatasource transactionRemoteDatasource;

  TransactionRepoImpl({required this.transactionRemoteDatasource});

  @override
  Future<Either<String, String>> addTransaction(TransactionModel model) async {
    final result = await transactionRemoteDatasource.addTransaction(model);
    return result;
  }

  @override
  Future<Either<String, List<TransactionModel>>> getTransactionBetweenDate(
    AppDateModel dateModel, bool limit
  ) async {
    final result = await transactionRemoteDatasource.getTransactionBetweenDate(
      dateModel,limit
    );
    return result.fold(
      (l) {
        return Left(l);
      },
      (r) {
        List<TransactionModel> list  = r.docs.map((e) {
       return   TransactionModel.fromJson(e.data());
        }).cast<TransactionModel>().toList();
        print("getTransactionBetweenDate size  ${list.length}");
        return Right(list);
      },
    );
  }

  @override
  Future<Either<String, List<TransactionModel>>> getTransactionFilter(TransactionFilterModel model)async {
    final result = await transactionRemoteDatasource.getTransactionFilter(model);
    return result.fold(
          (l) {
        return Left(l);
      },
          (r) {
        List<TransactionModel> list  = r.docs.map((e) {
          return   TransactionModel.fromJson(e.data());
        }).cast<TransactionModel>().toList();
        print("getTransactionFilter size  ${list.length}");
        return Right(list);
      },
    );
  }
}
