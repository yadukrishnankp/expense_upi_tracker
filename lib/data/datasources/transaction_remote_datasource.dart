

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:e_tracker_upi/data/model/transaction/transaction_model.dart';

abstract class TransactionRemoteDatasource{
Future<Either<String,String>> addTransaction(TransactionModel model);
}


class TransactionRemoteDatasourceImpl extends TransactionRemoteDatasource{

  final FirebaseFirestore firebaseFirestore;

  TransactionRemoteDatasourceImpl({required this.firebaseFirestore});
  @override
  Future<Either<String, String>> addTransaction(TransactionModel model) async{
    try{
     await firebaseFirestore.collection("transactions").doc(model.id).set(model.toJson());
     return Right("added successfully");
    }
    catch(e){
      print(e.toString());
      return Left("error adding transaction");
    }
  }

}