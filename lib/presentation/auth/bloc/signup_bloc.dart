


import 'package:e_tracker_upi/data/entity/user_entity.dart';
import 'package:e_tracker_upi/domain/usecase/create_user_usecase.dart';
import 'package:e_tracker_upi/presentation/auth/event/signup_event.dart';
import 'package:e_tracker_upi/presentation/auth/state/signup_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/usecase/signup_usecase.dart';

class SignupBloc extends Bloc<SignupEvent,SignupState> {
  final SignUpUseCase signUpUseCase;
  final CreateUserUseCase createUserUseCase;

  SignupBloc({required this.createUserUseCase, required this.signUpUseCase}) : super(SignupState.initial(data: SignupData())) {
    on<Signup>(_signUp);
    on<CreateUser>(_createUser);
  }

  _signUp(Signup event, Emitter<SignupState> emit) async {
    emit(SignupLoadingState(data: state.data));
    final result = await signUpUseCase.call(event.email, event.password);

    result.fold(
          (failure) {
        print('Sign Up Failed: $failure');
        emit(SignupState.error( data: state.data, message: failure));
      },
          (userId) {
            emit(SignupState.success( data: state.data, ));
            final user = UserEntity(name: event.email, userId: userId, email: event.email);
            add(CreateUser(userEntity: user));
        print('Sign Up Successful: $userId');
      },
    );
  }
   _createUser(CreateUser event,Emitter<SignupState> emit)async{
    try{
      emit(SignupState.loading(data: state.data));
      final result = await createUserUseCase.call(event.userEntity);
      result.fold((failure) =>emit(SignupState.error(data: state.data, message: failure)),
            (success) =>emit(SignupState.success(message: "account created successfully", data: state.data.copyWith(
              navigateToLogin: true
            ))
        ,));
      emit(SignupState.initial(data: state.data.copyWith(navigateToLogin: false)));
    }
    catch(e){
      print("_create user  ${e.toString()}");
    }
   }
}