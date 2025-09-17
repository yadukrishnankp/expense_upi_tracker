


import 'package:e_tracker_upi/core/utils/app_date_time_utils.dart';
import 'package:e_tracker_upi/data/model/transaction/transaction_filter_model.dart';
import 'package:e_tracker_upi/domain/usecase/transaction/get_transaction_filter_usecase.dart';
import 'package:e_tracker_upi/presentation/transactions/event/transaction_event.dart';
import 'package:e_tracker_upi/presentation/transactions/state/transaction_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/network/state/firestore_fetch_state.dart';

class TransactionBloc extends Bloc<TransactionEvent,TransactionState>{
  final GetTransactionFilterUseCase getTransactionFilterUseCase;
  TransactionBloc({required this.getTransactionFilterUseCase}) : super (TransactionState(selectedDate: DateTime.now())){
    on<FilterTypeChangeEvent>(_onFilterTypeChangeEvent);
    on<FilterWalletChangeEvent>(_onFilterWalletChangeEvent);
    on<FilterCategoryChangeEvent>(_onFilterCategoryChangeEvent);
    on<SortByDateChangeEvent>(_onSortByDateChangeEvent);
    on<ResetEvent>(_onReset);
    on<DateChangeEvent>(_onDateChange);
    on<GetTransactionEvent>(_getTransaction);
  }



  _getTransaction(GetTransactionEvent event,Emitter<TransactionState> emit)async{
    emit(state.copyWith(transactionList: FirestoreFetchState.loading()));
    final dateModel = AppDateTimeUtils.getMonthStartAndEnd(state.selectedDate);
    final result = await getTransactionFilterUseCase.call(
      TransactionFilterModel(dateModel: dateModel)
    );
    result.fold(
          (l) {
        emit(state.copyWith(transactionList: FirestoreFetchState.failure(l)));
      },
          (r) {
        emit(state.copyWith(transactionList: FirestoreFetchState.success(r)));
      },
    );
  }


  _onDateChange(DateChangeEvent event,Emitter<TransactionState> emit){
    emit(state.copyWith(
      selectedDate: event.date
    ));
    add(TransactionEvent.onGetTransaction());
  }


   _onReset(ResetEvent event,Emitter<TransactionState> emit){
    emit(
      state.copyWith(
        sortByDateList: state.sortByDateList.map((e) => e.copyWith(selected: false),).toList(),
        filterCategoryList: state.filterCategoryList.map((e) => e.copyWith(selected: false),).toList(),
        filterWalletList: state.filterWalletList.map((e) => e.copyWith(selected: false),).toList(),
        filterTypeList: state.filterTypeList.map((e) => e.copyWith(selected: false),).toList(),
      )
    );
   }

  _onFilterTypeChangeEvent(FilterTypeChangeEvent event,Emitter<TransactionState>emit){
    emit(state.copyWith(
      filterTypeList: state.filterTypeList.map((e) {
        if(e.name == event.name){
          return e.copyWith(selected: ! e.selected);
        }
        else {
          return e;
        }
      },).toList()
    ));
  }

  _onFilterWalletChangeEvent(FilterWalletChangeEvent event,Emitter<TransactionState>emit){
    emit(state.copyWith(
      filterWalletList: state.filterWalletList.map((e) {
        if(e.name == event.name){
          return e.copyWith(selected: ! e.selected);
        }
        else{
          return e;
        }
      },).toList()
    ));
  }

  _onFilterCategoryChangeEvent(FilterCategoryChangeEvent event,Emitter<TransactionState>emit){

    emit(state.copyWith(
      filterCategoryList: state.filterCategoryList.map((e) {
        if(e.name == event.name){
          return e.copyWith(selected: ! e.selected);
        }
        else{
          return e;
        }
      },).toList()
    ));
  }

  _onSortByDateChangeEvent(SortByDateChangeEvent event,Emitter<TransactionState>emit){

    emit(state.copyWith(
      sortByDateList: state.sortByDateList.map((e) {
        if(e.name == event.name){
          return e.copyWith(selected: true);
        }
        else{
          return e.copyWith(selected: false);
        }
      },).toList()
    ));
  }

}