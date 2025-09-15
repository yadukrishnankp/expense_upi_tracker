import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_expense_state.freezed.dart';

@freezed
sealed class AddExpenseData with _$AddExpenseData {
  const factory AddExpenseData({
    required double amount,
    required DateTime dateTime,
    required String wallet,
    required String category,
    String? description,
  }) = _AddExpenseData;
}

@freezed
sealed class AddExpenseState with _$AddExpenseState {
  const factory AddExpenseState.initial({
    required AddExpenseData addExpenseData,
  }) = AddExpenseInitialState;

  const factory AddExpenseState.loading({
    required AddExpenseData addExpenseData,
  }) = AddExpenseLoadingState;

  const factory AddExpenseState.success({
    required AddExpenseData addExpenseData,
    String? message,
  }) = AddExpenseSuccessState;

  const factory AddExpenseState.error({
    required AddExpenseData addExpenseData,
    required String error,
  }) = AddExpenseErrorState;
}
