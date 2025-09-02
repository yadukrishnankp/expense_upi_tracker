// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_home_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppHomeEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppHomeEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppHomeEvent()';
}


}

/// @nodoc
class $AppHomeEventCopyWith<$Res>  {
$AppHomeEventCopyWith(AppHomeEvent _, $Res Function(AppHomeEvent) __);
}


/// Adds pattern-matching-related methods to [AppHomeEvent].
extension AppHomeEventPatterns on AppHomeEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ChangeBottomBarMenu value)?  changeBottomBarMenu,TResult Function( ToggleFabMenu value)?  toggleFabMenu,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ChangeBottomBarMenu() when changeBottomBarMenu != null:
return changeBottomBarMenu(_that);case ToggleFabMenu() when toggleFabMenu != null:
return toggleFabMenu(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ChangeBottomBarMenu value)  changeBottomBarMenu,required TResult Function( ToggleFabMenu value)  toggleFabMenu,}){
final _that = this;
switch (_that) {
case ChangeBottomBarMenu():
return changeBottomBarMenu(_that);case ToggleFabMenu():
return toggleFabMenu(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ChangeBottomBarMenu value)?  changeBottomBarMenu,TResult? Function( ToggleFabMenu value)?  toggleFabMenu,}){
final _that = this;
switch (_that) {
case ChangeBottomBarMenu() when changeBottomBarMenu != null:
return changeBottomBarMenu(_that);case ToggleFabMenu() when toggleFabMenu != null:
return toggleFabMenu(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( BottomBarMenu bottomBarMenu)?  changeBottomBarMenu,TResult Function()?  toggleFabMenu,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ChangeBottomBarMenu() when changeBottomBarMenu != null:
return changeBottomBarMenu(_that.bottomBarMenu);case ToggleFabMenu() when toggleFabMenu != null:
return toggleFabMenu();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( BottomBarMenu bottomBarMenu)  changeBottomBarMenu,required TResult Function()  toggleFabMenu,}) {final _that = this;
switch (_that) {
case ChangeBottomBarMenu():
return changeBottomBarMenu(_that.bottomBarMenu);case ToggleFabMenu():
return toggleFabMenu();}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( BottomBarMenu bottomBarMenu)?  changeBottomBarMenu,TResult? Function()?  toggleFabMenu,}) {final _that = this;
switch (_that) {
case ChangeBottomBarMenu() when changeBottomBarMenu != null:
return changeBottomBarMenu(_that.bottomBarMenu);case ToggleFabMenu() when toggleFabMenu != null:
return toggleFabMenu();case _:
  return null;

}
}

}

/// @nodoc


class ChangeBottomBarMenu implements AppHomeEvent {
  const ChangeBottomBarMenu(this.bottomBarMenu);
  

 final  BottomBarMenu bottomBarMenu;

/// Create a copy of AppHomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangeBottomBarMenuCopyWith<ChangeBottomBarMenu> get copyWith => _$ChangeBottomBarMenuCopyWithImpl<ChangeBottomBarMenu>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangeBottomBarMenu&&(identical(other.bottomBarMenu, bottomBarMenu) || other.bottomBarMenu == bottomBarMenu));
}


@override
int get hashCode => Object.hash(runtimeType,bottomBarMenu);

@override
String toString() {
  return 'AppHomeEvent.changeBottomBarMenu(bottomBarMenu: $bottomBarMenu)';
}


}

/// @nodoc
abstract mixin class $ChangeBottomBarMenuCopyWith<$Res> implements $AppHomeEventCopyWith<$Res> {
  factory $ChangeBottomBarMenuCopyWith(ChangeBottomBarMenu value, $Res Function(ChangeBottomBarMenu) _then) = _$ChangeBottomBarMenuCopyWithImpl;
@useResult
$Res call({
 BottomBarMenu bottomBarMenu
});


$BottomBarMenuCopyWith<$Res> get bottomBarMenu;

}
/// @nodoc
class _$ChangeBottomBarMenuCopyWithImpl<$Res>
    implements $ChangeBottomBarMenuCopyWith<$Res> {
  _$ChangeBottomBarMenuCopyWithImpl(this._self, this._then);

  final ChangeBottomBarMenu _self;
  final $Res Function(ChangeBottomBarMenu) _then;

/// Create a copy of AppHomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? bottomBarMenu = null,}) {
  return _then(ChangeBottomBarMenu(
null == bottomBarMenu ? _self.bottomBarMenu : bottomBarMenu // ignore: cast_nullable_to_non_nullable
as BottomBarMenu,
  ));
}

/// Create a copy of AppHomeEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BottomBarMenuCopyWith<$Res> get bottomBarMenu {
  
  return $BottomBarMenuCopyWith<$Res>(_self.bottomBarMenu, (value) {
    return _then(_self.copyWith(bottomBarMenu: value));
  });
}
}

/// @nodoc


class ToggleFabMenu implements AppHomeEvent {
  const ToggleFabMenu();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ToggleFabMenu);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppHomeEvent.toggleFabMenu()';
}


}




// dart format on
