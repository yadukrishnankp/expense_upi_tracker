import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_state.freezed.dart';

@freezed
class SplashState with _$SplashState {
  const factory SplashState.initial() = SplashInitialState;
  const factory SplashState.loading() = SplashLoadingState;
  const factory SplashState.success() = SplashSuccessState;
  const factory SplashState.error(String message) = SplashErrorState;
}

