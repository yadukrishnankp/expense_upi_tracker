import 'dart:ffi';

import 'package:e_tracker_upi/core/network/state/firestore_fetch_state.dart';
import 'package:e_tracker_upi/domain/entity/transaction/transaction_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';


@freezed
sealed class HomeState with _$HomeState{
  const factory HomeState({
   @Default(MonthlyReport(income: 0.0, expense: 0.0, netBalance: 0.0))  MonthlyReport monthlyReport,
    @Default(FirestoreFetchState.initial()) FirestoreFetchState<List<TransactionEntity>> transactionList,
     @Default([DateRangeItem(name: "Today", isSelected: true),
       DateRangeItem(name: "Weekly", isSelected: false),
       DateRangeItem(name: "Monthly", isSelected: false)]) List<DateRangeItem> dateRangeItem,
    @Default(DateRange.Today) DateRange dateRange,
  }) = _HomeState;
}


@freezed
sealed class MonthlyReport with _$MonthlyReport{
  const factory MonthlyReport({
    required double income,
    required double expense,
    required double netBalance
}) = _MonthlyReport;
}


@freezed
sealed class DateRangeItem with _$DateRangeItem{
  const factory DateRangeItem({
   required  String name,
    required bool isSelected,
}) = _DateRangeItem;
}

enum  DateRange{Today,Weekly,Monthly}