

import 'package:e_tracker_upi/core/utils/id_generator.dart';
import 'package:e_tracker_upi/data/model/transaction/transaction_model.dart';
import 'package:e_tracker_upi/domain/usecase/transaction/add_expense_usecase.dart';
import 'package:e_tracker_upi/presentation/expense/event/add_expense_event.dart';
import 'package:e_tracker_upi/presentation/expense/state/add_expense_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddExpenseBloc extends Bloc<AddExpenseEvent,AddExpenseState>{
  final AddExpenseUseCase addExpenseUseCase;
  AddExpenseBloc({required this.addExpenseUseCase}) : super (AddExpenseInitialState(addExpenseData: AddExpenseData(amount: 0, dateTime: DateTime.now(), wallet: "Bank", category: "Food"))){
    on<ExpenseAddEvent>(_addExpense);
    on<AddExpenseAmountChangeEvent>(_onAmountChanged);
    on<AddExpenseCategoryChangeEvent>(_onCategoryChanged);
    on<AddExpenseWalletChangeEvent>(_onWalletChanged);
    on<AddExpenseDescChangeEvent>(_onDescChangeEvent);
    on<AddExpenseDateTimeChangeEvent>(_onDateChangeEvent);
  }

  _addExpense(ExpenseAddEvent event,Emitter<AddExpenseState> emit)async{
    emit(AddExpenseLoadingState(addExpenseData: state.addExpenseData));
    final id  = IdGenerator.generateExpenseId();
    final result = await addExpenseUseCase.call(TransactionModel(
        id: id, category: state.addExpenseData.category,
        wallet: state.addExpenseData.wallet, type: "Expense",
        dateTime: state.addExpenseData.dateTime,
        description: state.addExpenseData.description ?? "",
        createdTime: DateTime.now(),
        amount: state.addExpenseData.amount));
    result.fold((l) => emit(AddExpenseState.error(addExpenseData: state.addExpenseData, error: l)),
        (r) => emit(AddExpenseState.success(addExpenseData: state.addExpenseData,message: r)),);
  }

  _onAmountChanged(AddExpenseAmountChangeEvent event,Emitter<AddExpenseState> emit){
    emit(AddExpenseInitialState(addExpenseData: state.addExpenseData.copyWith(amount: double.parse(event.amount))));
  }

  _onCategoryChanged(AddExpenseCategoryChangeEvent event,Emitter<AddExpenseState> emit){
    emit(AddExpenseInitialState(addExpenseData: state.addExpenseData.copyWith(category: event.category)));
  }

  _onWalletChanged(AddExpenseWalletChangeEvent event,Emitter<AddExpenseState> emit){
    emit(AddExpenseInitialState(addExpenseData: state.addExpenseData.copyWith(wallet: event.wallet)));
  }

  _onDateChangeEvent (AddExpenseDateTimeChangeEvent event, Emitter<AddExpenseState> emit){
    emit(AddExpenseInitialState(addExpenseData: state.addExpenseData.copyWith(dateTime:event.dateTime )));
  }

  _onDescChangeEvent (AddExpenseDescChangeEvent event, Emitter<AddExpenseState> emit){
    emit(AddExpenseInitialState(addExpenseData: state.addExpenseData.copyWith(description: event.description )));
  }

}