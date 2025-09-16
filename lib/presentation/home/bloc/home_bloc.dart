

import 'dart:async';

import 'package:e_tracker_upi/core/network/state/firestore_fetch_state.dart';
import 'package:e_tracker_upi/core/utils/app_date_time_utils.dart';
import 'package:e_tracker_upi/domain/usecase/transaction/get_transaction_between_date_usecase.dart';
import 'package:e_tracker_upi/presentation/home/event/home_event.dart';
import 'package:e_tracker_upi/presentation/home/state/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBloc extends Bloc<HomeEvent,HomeState>{
  final GetTransactionBetweenDateUseCase getTransactionBetweenDateUseCase;
    HomeBloc({required this.getTransactionBetweenDateUseCase}):super(HomeState()){
      on<GetRecentTransactionEvent>(_getRecentTransaction);
      on<GetTransactionByMonthEvent>(_getRecentTransactionByMonth);
    }


   _getRecentTransaction(GetRecentTransactionEvent event,Emitter<HomeState> emit)async{
      emit(state.copyWith(
        transactionList: FirestoreFetchState.loading()
      ));
     final dateModel =  AppDateTimeUtils.getMonthStartAndEnd(DateTime.now());
     final result = await getTransactionBetweenDateUseCase.call(dateModel,limit: true);
     result.fold((l) {
       emit(state.copyWith(
           transactionList: FirestoreFetchState.failure(l)
       ));
     } , (r){
       emit(state.copyWith(
           transactionList: FirestoreFetchState.success(r)
       ));
     },);
   }

    _getRecentTransactionByMonth(GetTransactionByMonthEvent event,Emitter<HomeState> emit)async{
      final dateModel =  AppDateTimeUtils.getMonthStartAndEnd(event.month);
      getTransactionBetweenDateUseCase.call(dateModel);
    }
}