
import 'package:e_tracker_upi/core/network/state/firestore_fetch_state.dart';
import 'package:e_tracker_upi/domain/entity/transaction/transaction_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_state.freezed.dart';


@freezed
sealed class TransactionState with _$TransactionState{
  const factory TransactionState({
   @Default([
     FilterItem(name: "Income"),
     FilterItem(name: "Expense")
   ]) List<FilterItem> filterTypeList,
   @Default([
     FilterItem(name: "Bank"),
     FilterItem(name: "Upi"),
     FilterItem(name: "Cash"),
   ]) List<FilterItem> filterWalletList,
  @Default([
    FilterItem(name: "Salary"),
    FilterItem(name: "Passive Income"),
    FilterItem(name: "Real Estate"),
    FilterItem(name: "Others"),
    FilterItem(name: "Food"),
    FilterItem(name: "Groceries"),
    FilterItem(name: "Entertainment"),
    FilterItem(name: "Utility Bills"),
    FilterItem(name: "Shopping"),
    FilterItem(name: "Fuel"),
    FilterItem(name: "Rent"),

  ])  List<FilterItem> filterCategoryList,
  @Default([
    FilterItem(name: "Newest"),
    FilterItem(name: "Oldest"),
  ])  List<FilterItem> sortByDateList,
    required DateTime selectedDate,
  @Default(FirestoreFetchState.initial()) FirestoreFetchState <List<TransactionEntity>> transactionList,
}) = _TransactionState;
}


@freezed
sealed class FilterItem with _$FilterItem{
  const factory FilterItem({
     required String name,
   @Default(false) bool selected,
})= _FilterItem;
}

