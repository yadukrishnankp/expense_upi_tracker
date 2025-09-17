
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_event.freezed.dart';


@freezed
sealed class TransactionEvent with _$TransactionEvent{
  const factory TransactionEvent.onFilterTypeChangeEvent(String name) = FilterTypeChangeEvent;
  const factory TransactionEvent.onFilterWalletChangeEvent(String name) = FilterWalletChangeEvent;
  const factory TransactionEvent.onFilterCategoryChangeEvent(String name) = FilterCategoryChangeEvent;
  const factory TransactionEvent.onSortByDateChangeEvent(String name) = SortByDateChangeEvent;
  const factory TransactionEvent.onReset() = ResetEvent;
  const factory TransactionEvent.onDateChange(DateTime date) = DateChangeEvent;
  const factory TransactionEvent.onGetTransaction()= GetTransactionEvent;
}