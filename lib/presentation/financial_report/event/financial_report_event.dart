

import 'package:e_tracker_upi/presentation/financial_report/state/financial_report_state.dart';
import 'package:e_tracker_upi/presentation/financial_report/widgets/two_segment_widget.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'financial_report_event.freezed.dart';


@freezed
sealed class FinancialReportEvent with _$FinancialReportEvent{

  const factory FinancialReportEvent.onTypeChange(TransactionType type) = TypeChangeEvent;
  const factory FinancialReportEvent.getTransaction() = GetTransactionEvent;
  const factory FinancialReportEvent.onDateChange(DateTime date) = DateChangeEvent;
  const factory FinancialReportEvent.onSegmentChange(Segment segment) = SegmentChangeEvent;
}