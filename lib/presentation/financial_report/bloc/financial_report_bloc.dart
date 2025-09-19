

import 'dart:math';
import 'dart:ui';

import 'package:e_tracker_upi/core/network/state/firestore_fetch_state.dart';
import 'package:e_tracker_upi/core/utils/app_date_time_utils.dart';
import 'package:e_tracker_upi/domain/usecase/transaction/get_transaction_by_type_usecase.dart';
import 'package:e_tracker_upi/presentation/financial_report/event/financial_report_event.dart';
import 'package:e_tracker_upi/presentation/financial_report/state/financial_report_state.dart';
import 'package:e_tracker_upi/presentation/financial_report/widgets/two_segment_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FinancialReportBloc extends Bloc<FinancialReportEvent,FinancialReportState>{
  final GetTransactionByTypeUseCase getTransactionByTypeUseCase;
   FinancialReportBloc({required this.getTransactionByTypeUseCase}) : super (FinancialReportState(selectedDate: DateTime.now())){
     on<TypeChangeEvent>(_onTypeChange);
     on<GetTransactionEvent>(_getTransaction);
     on<DateChangeEvent>(_onDateChangeEvent);
     on<SegmentChangeEvent>(_onSegmentChange);
   }

   _onTypeChange(TypeChangeEvent event,Emitter<FinancialReportState> emit){
     emit(state.copyWith(
       transactionType: event.type
     ));
     add(FinancialReportEvent.getTransaction());
   }

   _onSegmentChange(SegmentChangeEvent event, Emitter<FinancialReportState> emit){
     emit(state.copyWith(
       segment: event.segment
     ));
     add(FinancialReportEvent.getTransaction());
   }

   _onDateChangeEvent(DateChangeEvent event,Emitter<FinancialReportState>emit){
     emit(state.copyWith(selectedDate: event.date));
     add(FinancialReportEvent.getTransaction());

   }

   _getTransaction(GetTransactionEvent event ,Emitter<FinancialReportState> emit)async{
     final  date = AppDateTimeUtils.getMonthStartAndEnd(state.selectedDate);
     emit(state.copyWith(transactionList: FirestoreFetchState.loading()));
     if(state.segment == Segment.left){
       final result = await getTransactionByTypeUseCase.call(date, "Expense");
       result.fold((l) => emit(state.copyWith(transactionList: FirestoreFetchState.failure(l))),
           (r) {
             emit(state.copyWith(transactionList: FirestoreFetchState.success(r)));
             generatePieValue(emit);
           },);
     }
     else{
       final result = await getTransactionByTypeUseCase.call(date, "Income");
       result.fold((l) => emit(state.copyWith(transactionList: FirestoreFetchState.failure(l))),
             (r) {
               emit(state.copyWith(transactionList: FirestoreFetchState.success(r)));
               generatePieValue(emit);
             },);
     }
   }

   generatePieValue(Emitter<FinancialReportState> emit){
     double total = 0.0;
     Map<String,ReportPieItem> pieMap ={};
     state.transactionList.when(initial: () => null,
         loading: () => null, success: (data) {
           data.forEach((element) {
             total = element.amount + total;
             if(pieMap.containsKey(element.category)){
               ReportPieItem item = pieMap[element.amount]!;
               pieMap[element.category] = item.copyWith(
                 total: item.total + element.amount
               );
             }
             else{
               pieMap[element.category] =ReportPieItem(name: element.category,total: element.amount);
             }
           },);
         }, failure: (message) => null,);

     final pieList = pieMap.values.toList();
    emit(state.copyWith(reportList:  pieList.map((e) {
      return e.copyWith(
          totalPr:  calculatePercentage(e.total, total)
      );
    },).toList()));

   }

  double calculatePercentage(double amount, double total) {
    if (total == 0) return 0; // avoid divide by zero
    return num.parse(((amount / total) * 100).toStringAsFixed(2)).toDouble();
  }
}


