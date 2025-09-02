

import 'package:freezed_annotation/freezed_annotation.dart';
import '../state/app_home_state.dart';
part 'app_home_event.freezed.dart';
@freezed
sealed class AppHomeEvent with _$AppHomeEvent {
  const factory AppHomeEvent.changeBottomBarMenu(
    BottomBarMenu bottomBarMenu,
  ) = ChangeBottomBarMenu;
  const factory AppHomeEvent.toggleFabMenu() = ToggleFabMenu;
}