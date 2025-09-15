import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_income_event.freezed.dart';


@freezed
sealed class AddIncomeEvent with _$AddIncomeEvent {
  const factory AddIncomeEvent.addIncome() = IncomeAddEvent;
  const factory AddIncomeEvent.onAmountChange(String amount) = AddIncomeAmountChangeEvent;
  const factory AddIncomeEvent.onCategoryChange(String category)= AddIncomeCategoryChangeEvent;
  const factory AddIncomeEvent.onWalletChange(String wallet) = AddIncomeWalletChangeEvent;
  const factory AddIncomeEvent.onDateTimeChange(DateTime dataTime) = AddIncomeDateTimeChangeEvent;
  const factory AddIncomeEvent.onDescriptionChange(String description) = AddIncomeDescChangeEvent;
}