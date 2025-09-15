import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_expense_event.freezed.dart';

@freezed
sealed class AddExpenseEvent with _$AddExpenseEvent {
  const factory AddExpenseEvent.addExpense() = ExpenseAddEvent;

  const factory AddExpenseEvent.onAmountChange(String amount) =
  AddExpenseAmountChangeEvent;

  const factory AddExpenseEvent.onCategoryChange(String category) =
  AddExpenseCategoryChangeEvent;

  const factory AddExpenseEvent.onWalletChange(String wallet) =
  AddExpenseWalletChangeEvent;

  const factory AddExpenseEvent.onDateTimeChange(DateTime dateTime) =
  AddExpenseDateTimeChangeEvent;

  const factory AddExpenseEvent.onDescriptionChange(String description) =
  AddExpenseDescChangeEvent;
}
