
import 'package:e_tracker_upi/core/utils/id_generator.dart';
import 'package:e_tracker_upi/data/model/transaction/transaction_model.dart';
import 'package:e_tracker_upi/domain/usecase/transaction/add_income_usecase.dart';
import 'package:e_tracker_upi/presentation/income/event/add_income_event.dart';
import 'package:e_tracker_upi/presentation/income/state/add_income_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddIncomeBloc extends Bloc<AddIncomeEvent,AddIncomeState>{
  final AddIncomeUseCase addExpenseUseCase;
    AddIncomeBloc ({required this.addExpenseUseCase}) :super (AddIncomeState.initial(addIncomeData: AddIncomeData(
        amount: 0,
      category: "Salary",
      wallet: "Bank",
      dateTime: DateTime.now()
    ))){
      on<IncomeAddEvent>(_addIncome);
      on<AddIncomeAmountChangeEvent>(_onAmountChange);
      on<AddIncomeCategoryChangeEvent>(_onCategoryChange);
      on<AddIncomeWalletChangeEvent>(_onWalletChangeEvent);
      on<AddIncomeDescChangeEvent>(_onDescEvent);
      on<AddIncomeDateTimeChangeEvent>(_onDateTimeChangeEvent);
    }

    _addIncome(IncomeAddEvent event,Emitter<AddIncomeState> emit)async{
      emit(AddIncomeLoadingState(addIncomeData: state.addIncomeData));
      final id = IdGenerator.generateIncomeId();
      final result =await  addExpenseUseCase.call(TransactionModel(id: id, category: state.addIncomeData.category, wallet: state.addIncomeData.wallet, type: "Income", dateTime: state.addIncomeData.dateTime, createdTime: DateTime.now(), amount: state.addIncomeData.amount,
      description: state.addIncomeData.description ?? ""));
      result.fold((l) =>emit(AddIncomeErrorState(addIncomeData: state.addIncomeData, error:l))
        , (r) =>emit(AddIncomeState.success(addIncomeData: state.addIncomeData,message: r ?? "")) ,);
    }

    _onAmountChange(AddIncomeAmountChangeEvent event , Emitter<AddIncomeState> emit){
      emit(AddIncomeInitialState(addIncomeData: state.addIncomeData.copyWith(amount: double.parse(event.amount))));
    }
    _onCategoryChange(AddIncomeCategoryChangeEvent event , Emitter<AddIncomeState> emit){
      emit(AddIncomeInitialState(addIncomeData: state.addIncomeData.copyWith(category: event.category)));
    }

    _onWalletChangeEvent(AddIncomeWalletChangeEvent event , Emitter<AddIncomeState> emit){
      emit(AddIncomeInitialState(addIncomeData: state.addIncomeData.copyWith(wallet: event.wallet)));
    }

    _onDescEvent(AddIncomeDescChangeEvent event , Emitter<AddIncomeState> emit){
      emit(AddIncomeInitialState(addIncomeData: state.addIncomeData.copyWith(description: event.description)));
    }
    _onDateTimeChangeEvent(AddIncomeDateTimeChangeEvent event , Emitter<AddIncomeState> emit){
      emit(AddIncomeInitialState(addIncomeData: state.addIncomeData.copyWith(dateTime:  event.dataTime)));
    }
}