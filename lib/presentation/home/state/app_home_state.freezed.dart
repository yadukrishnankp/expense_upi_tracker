// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppHomeState {

 BottomBarMenu get bottomBarMenu; bool get showFabMenu;
/// Create a copy of AppHomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppHomeStateCopyWith<AppHomeState> get copyWith => _$AppHomeStateCopyWithImpl<AppHomeState>(this as AppHomeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppHomeState&&(identical(other.bottomBarMenu, bottomBarMenu) || other.bottomBarMenu == bottomBarMenu)&&(identical(other.showFabMenu, showFabMenu) || other.showFabMenu == showFabMenu));
}


@override
int get hashCode => Object.hash(runtimeType,bottomBarMenu,showFabMenu);

@override
String toString() {
  return 'AppHomeState(bottomBarMenu: $bottomBarMenu, showFabMenu: $showFabMenu)';
}


}

/// @nodoc
abstract mixin class $AppHomeStateCopyWith<$Res>  {
  factory $AppHomeStateCopyWith(AppHomeState value, $Res Function(AppHomeState) _then) = _$AppHomeStateCopyWithImpl;
@useResult
$Res call({
 BottomBarMenu bottomBarMenu, bool showFabMenu
});


$BottomBarMenuCopyWith<$Res> get bottomBarMenu;

}
/// @nodoc
class _$AppHomeStateCopyWithImpl<$Res>
    implements $AppHomeStateCopyWith<$Res> {
  _$AppHomeStateCopyWithImpl(this._self, this._then);

  final AppHomeState _self;
  final $Res Function(AppHomeState) _then;

/// Create a copy of AppHomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bottomBarMenu = null,Object? showFabMenu = null,}) {
  return _then(_self.copyWith(
bottomBarMenu: null == bottomBarMenu ? _self.bottomBarMenu : bottomBarMenu // ignore: cast_nullable_to_non_nullable
as BottomBarMenu,showFabMenu: null == showFabMenu ? _self.showFabMenu : showFabMenu // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of AppHomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BottomBarMenuCopyWith<$Res> get bottomBarMenu {
  
  return $BottomBarMenuCopyWith<$Res>(_self.bottomBarMenu, (value) {
    return _then(_self.copyWith(bottomBarMenu: value));
  });
}
}


/// Adds pattern-matching-related methods to [AppHomeState].
extension AppHomeStatePatterns on AppHomeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppHomeState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppHomeState() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppHomeState value)  $default,){
final _that = this;
switch (_that) {
case _AppHomeState():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppHomeState value)?  $default,){
final _that = this;
switch (_that) {
case _AppHomeState() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( BottomBarMenu bottomBarMenu,  bool showFabMenu)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppHomeState() when $default != null:
return $default(_that.bottomBarMenu,_that.showFabMenu);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( BottomBarMenu bottomBarMenu,  bool showFabMenu)  $default,) {final _that = this;
switch (_that) {
case _AppHomeState():
return $default(_that.bottomBarMenu,_that.showFabMenu);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( BottomBarMenu bottomBarMenu,  bool showFabMenu)?  $default,) {final _that = this;
switch (_that) {
case _AppHomeState() when $default != null:
return $default(_that.bottomBarMenu,_that.showFabMenu);case _:
  return null;

}
}

}

/// @nodoc


class _AppHomeState implements AppHomeState {
  const _AppHomeState({this.bottomBarMenu = const BottomBarMenu.home(), this.showFabMenu = false});
  

@override@JsonKey() final  BottomBarMenu bottomBarMenu;
@override@JsonKey() final  bool showFabMenu;

/// Create a copy of AppHomeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppHomeStateCopyWith<_AppHomeState> get copyWith => __$AppHomeStateCopyWithImpl<_AppHomeState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppHomeState&&(identical(other.bottomBarMenu, bottomBarMenu) || other.bottomBarMenu == bottomBarMenu)&&(identical(other.showFabMenu, showFabMenu) || other.showFabMenu == showFabMenu));
}


@override
int get hashCode => Object.hash(runtimeType,bottomBarMenu,showFabMenu);

@override
String toString() {
  return 'AppHomeState(bottomBarMenu: $bottomBarMenu, showFabMenu: $showFabMenu)';
}


}

/// @nodoc
abstract mixin class _$AppHomeStateCopyWith<$Res> implements $AppHomeStateCopyWith<$Res> {
  factory _$AppHomeStateCopyWith(_AppHomeState value, $Res Function(_AppHomeState) _then) = __$AppHomeStateCopyWithImpl;
@override @useResult
$Res call({
 BottomBarMenu bottomBarMenu, bool showFabMenu
});


@override $BottomBarMenuCopyWith<$Res> get bottomBarMenu;

}
/// @nodoc
class __$AppHomeStateCopyWithImpl<$Res>
    implements _$AppHomeStateCopyWith<$Res> {
  __$AppHomeStateCopyWithImpl(this._self, this._then);

  final _AppHomeState _self;
  final $Res Function(_AppHomeState) _then;

/// Create a copy of AppHomeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? bottomBarMenu = null,Object? showFabMenu = null,}) {
  return _then(_AppHomeState(
bottomBarMenu: null == bottomBarMenu ? _self.bottomBarMenu : bottomBarMenu // ignore: cast_nullable_to_non_nullable
as BottomBarMenu,showFabMenu: null == showFabMenu ? _self.showFabMenu : showFabMenu // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of AppHomeState
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
mixin _$BottomBarMenu {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BottomBarMenu);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BottomBarMenu()';
}


}

/// @nodoc
class $BottomBarMenuCopyWith<$Res>  {
$BottomBarMenuCopyWith(BottomBarMenu _, $Res Function(BottomBarMenu) __);
}


/// Adds pattern-matching-related methods to [BottomBarMenu].
extension BottomBarMenuPatterns on BottomBarMenu {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Home value)?  home,TResult Function( _Transactions value)?  transactions,TResult Function( _Notes value)?  notes,TResult Function( _Profile value)?  profile,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Home() when home != null:
return home(_that);case _Transactions() when transactions != null:
return transactions(_that);case _Notes() when notes != null:
return notes(_that);case _Profile() when profile != null:
return profile(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Home value)  home,required TResult Function( _Transactions value)  transactions,required TResult Function( _Notes value)  notes,required TResult Function( _Profile value)  profile,}){
final _that = this;
switch (_that) {
case _Home():
return home(_that);case _Transactions():
return transactions(_that);case _Notes():
return notes(_that);case _Profile():
return profile(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Home value)?  home,TResult? Function( _Transactions value)?  transactions,TResult? Function( _Notes value)?  notes,TResult? Function( _Profile value)?  profile,}){
final _that = this;
switch (_that) {
case _Home() when home != null:
return home(_that);case _Transactions() when transactions != null:
return transactions(_that);case _Notes() when notes != null:
return notes(_that);case _Profile() when profile != null:
return profile(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  home,TResult Function()?  transactions,TResult Function()?  notes,TResult Function()?  profile,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Home() when home != null:
return home();case _Transactions() when transactions != null:
return transactions();case _Notes() when notes != null:
return notes();case _Profile() when profile != null:
return profile();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  home,required TResult Function()  transactions,required TResult Function()  notes,required TResult Function()  profile,}) {final _that = this;
switch (_that) {
case _Home():
return home();case _Transactions():
return transactions();case _Notes():
return notes();case _Profile():
return profile();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  home,TResult? Function()?  transactions,TResult? Function()?  notes,TResult? Function()?  profile,}) {final _that = this;
switch (_that) {
case _Home() when home != null:
return home();case _Transactions() when transactions != null:
return transactions();case _Notes() when notes != null:
return notes();case _Profile() when profile != null:
return profile();case _:
  return null;

}
}

}

/// @nodoc


class _Home implements BottomBarMenu {
  const _Home();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Home);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BottomBarMenu.home()';
}


}




/// @nodoc


class _Transactions implements BottomBarMenu {
  const _Transactions();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Transactions);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BottomBarMenu.transactions()';
}


}




/// @nodoc


class _Notes implements BottomBarMenu {
  const _Notes();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Notes);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BottomBarMenu.notes()';
}


}




/// @nodoc


class _Profile implements BottomBarMenu {
  const _Profile();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Profile);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BottomBarMenu.profile()';
}


}




// dart format on
