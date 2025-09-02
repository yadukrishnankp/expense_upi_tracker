
import 'package:freezed_annotation/freezed_annotation.dart';


part 'app_home_state.freezed.dart';
@freezed
sealed class AppHomeState with _$AppHomeState{
  const factory AppHomeState({
    @Default(BottomBarMenu.home()) BottomBarMenu bottomBarMenu,
    @Default(false) bool showFabMenu,
  }) = _AppHomeState;
}


@freezed
sealed class BottomBarMenu with _$BottomBarMenu {
  const factory BottomBarMenu.home() = _Home;
  const factory BottomBarMenu.transactions() = _Transactions;
  const factory BottomBarMenu.notes() = _Notes;
  const factory BottomBarMenu.profile() = _Profile;
}

