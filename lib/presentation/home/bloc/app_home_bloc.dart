

import 'package:e_tracker_upi/presentation/home/event/app_home_event.dart';
import 'package:e_tracker_upi/presentation/home/state/app_home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppHomeBloc extends Bloc<AppHomeEvent,AppHomeState>{
  AppHomeBloc() :super (AppHomeState()){
    on<ChangeBottomBarMenu>((event, emit) {
      final value = event.bottomBarMenu;
      emit(state.copyWith(
        bottomBarMenu: value
      ));
    });
    on<ToggleFabMenu>((event, emit) {
      emit(state.copyWith(
        showFabMenu: !state.showFabMenu
      ));
    });
  }
}

