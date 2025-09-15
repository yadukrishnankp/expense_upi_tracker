
import 'package:dartz/dartz.dart';
import 'package:e_tracker_upi/data/model/transaction/transaction_model.dart';

abstract class TransactionRepo{
  Future<Either<String,String>> addTransaction(TransactionModel model);
}