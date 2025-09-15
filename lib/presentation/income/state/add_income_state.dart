
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_income_state.freezed.dart';
@freezed
sealed class AddIncomeData with _$AddIncomeData{
  const factory AddIncomeData({
    required double amount,
    required DateTime dateTime,
    required String wallet,
    required String category,
    String? description
})= _AddIncomeData;
}

@freezed
sealed class AddIncomeState with _$AddIncomeState{
  const factory AddIncomeState.initial({required AddIncomeData addIncomeData})=AddIncomeInitialState;
  const factory AddIncomeState.loading({required AddIncomeData addIncomeData})=AddIncomeLoadingState;
  const factory AddIncomeState.success({required AddIncomeData addIncomeData,String? message})=AddIncomeSuccessState;
  const factory AddIncomeState.error({required AddIncomeData addIncomeData,required String error})=AddIncomeErrorState;
}