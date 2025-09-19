
import 'package:dartz/dartz.dart';
import 'package:e_tracker_upi/core/utils/app_date_time_utils.dart';
import 'package:e_tracker_upi/data/model/transaction/transaction_filter_model.dart';
import 'package:e_tracker_upi/data/model/transaction/transaction_model.dart';
import 'package:e_tracker_upi/domain/entity/transaction/transaction_entity.dart';

abstract class TransactionRepo{
  Future<Either<String,String>> addTransaction(TransactionModel model);
  Future<Either<String,List<TransactionModel>>> getTransactionBetweenDate(AppDateModel dateModel, bool limit);
  Future<Either<String,List<TransactionModel>>> getTransactionFilter(TransactionFilterModel model);
  Future<Either<String,List<TransactionModel>>> getTransactionByType(AppDateModel model,String type);
}