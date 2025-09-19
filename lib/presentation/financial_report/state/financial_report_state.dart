
import 'package:e_tracker_upi/core/network/state/firestore_fetch_state.dart';
import 'package:e_tracker_upi/domain/entity/transaction/transaction_entity.dart';
import 'package:e_tracker_upi/presentation/financial_report/widgets/two_segment_widget.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'financial_report_state.freezed.dart';


@freezed
sealed class FinancialReportState with _$FinancialReportState{

  const factory FinancialReportState({
  @Default(FirestoreFetchState.initial())  FirestoreFetchState<List<TransactionEntity>> transactionList,
   @Default(TransactionType.EXPENSE) TransactionType transactionType,
   required  DateTime selectedDate,
    @Default(Segment.left)Segment segment,
   @Default([]) List<ReportPieItem> reportList

})= _FinancialReportState;
}

enum TransactionType {EXPENSE,INCOME}

@freezed
sealed class ReportPieItem with _$ReportPieItem{
  const factory ReportPieItem({
   @Default(0.0) double total,
   @Default(0.0) double totalPr,
   required String name
})= _ReportPieItem;
}