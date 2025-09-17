import 'dart:async';

import 'package:e_tracker_upi/core/network/state/firestore_fetch_state.dart';
import 'package:e_tracker_upi/core/utils/app_date_time_utils.dart';
import 'package:e_tracker_upi/domain/entity/transaction/transaction_entity.dart';
import 'package:e_tracker_upi/domain/usecase/transaction/get_transaction_between_date_usecase.dart';
import 'package:e_tracker_upi/presentation/home/event/home_event.dart';
import 'package:e_tracker_upi/presentation/home/state/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetTransactionBetweenDateUseCase getTransactionBetweenDateUseCase;

  HomeBloc({required this.getTransactionBetweenDateUseCase})
    : super(HomeState()) {
    on<GetRecentTransactionEvent>(_getRecentTransaction);
    on<GetTransactionByMonthEvent>(_getRecentTransactionByMonth);
    on<OnDateRangeChangeEvent>(_onDateChangeEvent);
  }

  _getRecentTransaction(
    GetRecentTransactionEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(transactionList: FirestoreFetchState.loading()));
    var dateModel;
    switch (state.dateRange) {
      case DateRange.Today:
        dateModel = AppDateTimeUtils.getDayRange(DateTime.now());
      case DateRange.Weekly:
        dateModel = AppDateTimeUtils.getWeekRange(DateTime.now());
      case DateRange.Monthly:
        dateModel = AppDateTimeUtils.getMonthStartAndEnd(DateTime.now());
    }
    final result = await getTransactionBetweenDateUseCase.call(
      dateModel,
      limit: true,
    );
    result.fold(
      (l) {
        emit(state.copyWith(transactionList: FirestoreFetchState.failure(l)));
      },
      (r) {
        emit(state.copyWith(transactionList: FirestoreFetchState.success(r)));
      },
    );
  }

  _getRecentTransactionByMonth(
    GetTransactionByMonthEvent event,
    Emitter<HomeState> emit,
  ) async {
    final dateModel = AppDateTimeUtils.getMonthStartAndEnd(event.month);
    final result = await getTransactionBetweenDateUseCase.call(dateModel);
    result.fold((l) {

    }, (r) {
      emit(state.copyWith(
        monthlyTransactionList: r
      ));
      _monthlyReport(r, emit);
    });
  }

  _monthlyReport(List<TransactionEntity> list, Emitter<HomeState> emit) {
    double income = 0.0;
    double expense = 0.0;
    double netBalance = 0.0;
    print("list ${list.length}");
    list.forEach((e) {
      if (e.type == "Expense") {
        expense = expense + e.amount;
      } else if (e.type == "Income") {
        income = income + e.amount;
      }
    });
    netBalance = income - expense;
    print(("_monthlyReport :  income ${income} expense ${expense} netbalance ${netBalance}"));
    emit(
      state.copyWith(
        monthlyReport: state.monthlyReport.copyWith(
          expense: expense,
          income: income,
          netBalance: netBalance,
        ),
      ),
    );
  }

  _onDateChangeEvent(OnDateRangeChangeEvent event, Emitter<HomeState> emit) {
    switch (event.dateRange) {
      case "Today":
        emit(
          state.copyWith(
            dateRangeItem: state.dateRangeItem.map((e) {
              if (e.name == "Today") {
                return e.copyWith(isSelected: true);
              } else {
                return e.copyWith(isSelected: false);
              }
            }).toList(),
            dateRange: DateRange.Today,
          ),
        );
        add(HomeEvent.getRecentTransaction());
      case "Weekly":
        emit(
          state.copyWith(
            dateRangeItem: state.dateRangeItem.map((e) {
              if (e.name == "Weekly") {
                return e.copyWith(isSelected: true);
              } else {
                return e.copyWith(isSelected: false);
              }
            }).toList(),
            dateRange: DateRange.Weekly,
          ),
        );
        add(HomeEvent.getRecentTransaction());
      case "Monthly":
        emit(
          state.copyWith(
            dateRangeItem: state.dateRangeItem.map((e) {
              if (e.name == "Monthly") {
                return e.copyWith(isSelected: true);
              } else {
                return e.copyWith(isSelected: false);
              }
            }).toList(),
            dateRange: DateRange.Monthly,
          ),
        );
        add(HomeEvent.getRecentTransaction());
    }
  }
}
