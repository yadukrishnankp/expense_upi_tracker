import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_state.freezed.dart';

@freezed
sealed class SignupData with _$SignupData {
  const factory SignupData({
    @Default('') String name,
    @Default('') String email,
    @Default('') String password,
    @Default('') String nameError,
    @Default('') String emailError,
    @Default('') String passwordError,
    @Default(false) bool isNameValid,
    @Default(false) bool isEmailValid,
    @Default(false) bool isPasswordValid,
    @Default(false) bool navigateToLogin,
  }) = _SignupData;
}

@freezed
sealed class SignupState with _$SignupState {
  const factory SignupState.initial({required SignupData data}) = SignupInitialState;
  const factory SignupState.loading({required SignupData data}) = SignupLoadingState;
  const factory SignupState.success({required SignupData data, String? message}) = SignupSuccessState;
  const factory SignupState.error({required SignupData data, required String message}) = SignupErrorState;
}
