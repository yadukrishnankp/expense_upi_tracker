import 'package:e_tracker_upi/presentation/home/bloc/app_home_bloc.dart';
import 'package:e_tracker_upi/presentation/profile/bloc/profile_bloc.dart';

import '../../../core/injection_container.dart';

class HomeInjectionContainer {
  static void init() {
    if (!  sl.isRegistered<AppHomeBloc>()) {
      sl.registerLazySingleton<AppHomeBloc>(() => AppHomeBloc());
    }
    if(!sl.isRegistered<ProfileBloc>()){
      sl.registerLazySingleton(() => ProfileBloc(getUserUseCase: sl(), authRepo: sl(), preferenceRepo: sl()),);
    }
  }
}
