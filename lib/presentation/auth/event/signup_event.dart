import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/entity/user_entity.dart';

part 'signup_event.freezed.dart';

@freezed
sealed class SignupEvent with _$SignupEvent {
  const factory SignupEvent.signup({
    required String email,
    required String password,
    required String name
  }) = Signup;

  const factory SignupEvent.createUser({
    required UserEntity userEntity,
  }) = CreateUser;

  const factory SignupEvent.validateEmail({
    required String email,
  }) = ValidateEmail;

  const factory SignupEvent.validatePassword({
    required String password,
  }) = ValidatePassword;

  const factory SignupEvent.validateName({
    required String name,
  }) = ValidateName;
}
