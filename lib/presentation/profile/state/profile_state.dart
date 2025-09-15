import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/model/auth/user_model.dart';

part 'profile_state.freezed.dart';

@freezed
sealed class ProfileData with _$ProfileData {
  const factory ProfileData({
    @Default(true)  bool isLoggedIn,
    UserModel? user
  }) = _ProfileData;
}

@freezed
sealed class ProfileState with _$ProfileState {
  const factory ProfileState.initial({required ProfileData profileData}) = ProfileInitialState;
  const factory ProfileState.loading({required ProfileData profileData}) = ProfileLoadingState;
  const factory ProfileState.success({required ProfileData profileData}) = ProfileSuccessState;
  const factory ProfileState.error({required String message, required ProfileData profileData}) = ProfileErrorState;
}

