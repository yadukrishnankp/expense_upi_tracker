
import 'package:e_tracker_upi/presentation/splash/event/splash_event.dart';
import 'package:e_tracker_upi/presentation/splash/state/splash_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/repo/preference_repo.dart';

class SplashBloc extends Bloc<SplashEvent,SplashState> {
  final PreferenceRepo preferenceRepo;
   SplashBloc({required this.preferenceRepo}): super(SplashInitialState()){
     on<SplashInitializeEvent>(_appInitialize);
   }

    _appInitialize(SplashEvent event,Emitter<SplashState> emit) async {
      String? userId = await  preferenceRepo.getUserId();

      if ( userId != "" ) {
        print("_appInitialize ${userId}");
        emit(const SplashState.success());
      } else {

        emit(const SplashState.error("User not logged in"));
      }
    }
}