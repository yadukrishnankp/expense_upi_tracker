import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

@freezed
sealed class LoginData with _$LoginData {
  const factory LoginData({
    @Default('') String email,
    @Default('') String password,
    @Default('') String emailError,
    @Default('') String passwordError,
    @Default(false) bool isEmailValid,
    @Default(false) bool isPasswordValid,
    @Default(false) bool navigateToHome,
  }) = _LoginData;
}

@freezed
sealed class LoginState with _$LoginState {
  const factory LoginState.initial({required LoginData data}) = LoginInitialState;
  const factory LoginState.loading({required LoginData data}) = LoginLoadingState;
  const factory LoginState.success({required LoginData data, String? message}) = LoginSuccessState;
  const factory LoginState.error({required LoginData data, required String message}) = LoginErrorState;
}
