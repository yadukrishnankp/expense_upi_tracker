

import 'package:e_tracker_upi/domain/repo/preference_repo.dart';
import 'package:e_tracker_upi/domain/usecase/auth/signin_usecase.dart';
import 'package:e_tracker_upi/presentation/auth/event/login_event.dart';
import 'package:e_tracker_upi/presentation/auth/state/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBloc extends Bloc <LoginEvent,LoginState> {
  final SignInUseCase signInUseCase;
  final PreferenceRepo preferenceRepo;
  LoginBloc({required this.preferenceRepo, required this.signInUseCase}) :super(LoginState.initial(data: LoginData())) {
    on<LoginSubmitted>(_onLoginSubmitted);
    on<ValidateEmail>((event, emit) {

    },);
    on<ValidatePassword>((event, emit) {

    },);
  }

  _onLoginSubmitted(LoginSubmitted event, Emitter<LoginState> emit) async {
    emit(LoginState.loading(data: state.data));
    final result = await signInUseCase.call(event.email, event.password);
    result.fold((failure) {
      emit(LoginState.error(data: state.data, message: failure));
    }, (success) {
      if(success.isNotEmpty){
        preferenceRepo.saveUserId(success);
      }
      emit(LoginState.success(data: state.data.copyWith(
        navigateToHome: true
      ),
          message: success));
      emit(LoginState.initial(data: state.data.copyWith(navigateToHome: false)));
    }, );
  }


}