

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:e_tracker_upi/core/utils/app_date_time_utils.dart';
import 'package:e_tracker_upi/data/model/transaction/transaction_filter_model.dart';
import 'package:e_tracker_upi/data/model/transaction/transaction_model.dart';
import 'package:e_tracker_upi/domain/repo/preference_repo.dart';

abstract class TransactionRemoteDatasource{
Future<Either<String,String>> addTransaction(TransactionModel model);
Future<Either<String, QuerySnapshot<Map<String, dynamic>>>> getTransactionBetweenDate(AppDateModel model, bool limit );
Future<Either<String,QuerySnapshot<Map<String,dynamic>>>> getTransactionFilter(TransactionFilterModel model);
}


class TransactionRemoteDatasourceImpl extends TransactionRemoteDatasource{

  final FirebaseFirestore firebaseFirestore;
  final PreferenceRepo preferenceRepo;

  TransactionRemoteDatasourceImpl({required this.preferenceRepo, required this.firebaseFirestore});
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

  @override
  Future<Either<String, QuerySnapshot<Map<String, dynamic>>>> getTransactionBetweenDate(AppDateModel model ,
      bool limit) async{
    try{
      final userId = await preferenceRepo.getUserId();
      Query<Map<String, dynamic>> query =    firebaseFirestore.collection("transactions")
          .where("userId",isEqualTo:userId );
      if(limit == true){
      query =  query.limit(10);
      }
      final result =await query
          . where("dateTime",isGreaterThanOrEqualTo: model.startDate)
        .where("dateTime",isLessThanOrEqualTo: model.endDate)
        .orderBy("dateTime", descending: true)
        .get();
      if(result.docs.isEmpty){
        return Left("No date found");
      }
      else{
        print("getTransactionBetweenDate length ${result.docs.length}");
        return Right(result);
      }
    }
    catch(e){
      print("getTransactionBetweenDate ${e.toString()}");
      return Left("error getting data");
    }
  }

  @override
  Future<Either<String, QuerySnapshot<Map<String, dynamic>>>> getTransactionFilter(TransactionFilterModel model)async {
      try{
        final userId = await preferenceRepo.getUserId();
        Query<Map<String, dynamic>> query =    firebaseFirestore.collection("transactions")
            .where("userId",isEqualTo:userId );

        final result =await query
            . where("dateTime",isGreaterThanOrEqualTo: model.dateModel.startDate)
            .where("dateTime",isLessThanOrEqualTo: model.dateModel.endDate)
            .orderBy("dateTime", descending: true)
            .get();

        if(result.docs.isEmpty){
          return Left("No date found");
        }
        else{
          print("getTransactionBetweenDate length ${result.docs.length}");
          return Right(result);
        }
      }
      catch(e){
        print("getTransactionBetweenDate ${e.toString()}");
        return Left("error getting data");
      }
  }



}