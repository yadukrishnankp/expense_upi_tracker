// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProfileData {

 bool get isLoggedIn; UserModel? get user;
/// Create a copy of ProfileData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileDataCopyWith<ProfileData> get copyWith => _$ProfileDataCopyWithImpl<ProfileData>(this as ProfileData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileData&&(identical(other.isLoggedIn, isLoggedIn) || other.isLoggedIn == isLoggedIn)&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,isLoggedIn,user);

@override
String toString() {
  return 'ProfileData(isLoggedIn: $isLoggedIn, user: $user)';
}


}

/// @nodoc
abstract mixin class $ProfileDataCopyWith<$Res>  {
  factory $ProfileDataCopyWith(ProfileData value, $Res Function(ProfileData) _then) = _$ProfileDataCopyWithImpl;
@useResult
$Res call({
 bool isLoggedIn, UserModel? user
});


$UserModelCopyWith<$Res>? get user;

}
/// @nodoc
class _$ProfileDataCopyWithImpl<$Res>
    implements $ProfileDataCopyWith<$Res> {
  _$ProfileDataCopyWithImpl(this._self, this._then);

  final ProfileData _self;
  final $Res Function(ProfileData) _then;

/// Create a copy of ProfileData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoggedIn = null,Object? user = freezed,}) {
  return _then(_self.copyWith(
isLoggedIn: null == isLoggedIn ? _self.isLoggedIn : isLoggedIn // ignore: cast_nullable_to_non_nullable
as bool,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserModel?,
  ));
}
/// Create a copy of ProfileData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserModelCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserModelCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProfileData].
extension ProfileDataPatterns on ProfileData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileData value)  $default,){
final _that = this;
switch (_that) {
case _ProfileData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileData value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoggedIn,  UserModel? user)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileData() when $default != null:
return $default(_that.isLoggedIn,_that.user);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoggedIn,  UserModel? user)  $default,) {final _that = this;
switch (_that) {
case _ProfileData():
return $default(_that.isLoggedIn,_that.user);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoggedIn,  UserModel? user)?  $default,) {final _that = this;
switch (_that) {
case _ProfileData() when $default != null:
return $default(_that.isLoggedIn,_that.user);case _:
  return null;

}
}

}

/// @nodoc


class _ProfileData implements ProfileData {
  const _ProfileData({this.isLoggedIn = true, this.user});
  

@override@JsonKey() final  bool isLoggedIn;
@override final  UserModel? user;

/// Create a copy of ProfileData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileDataCopyWith<_ProfileData> get copyWith => __$ProfileDataCopyWithImpl<_ProfileData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileData&&(identical(other.isLoggedIn, isLoggedIn) || other.isLoggedIn == isLoggedIn)&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,isLoggedIn,user);

@override
String toString() {
  return 'ProfileData(isLoggedIn: $isLoggedIn, user: $user)';
}


}

/// @nodoc
abstract mixin class _$ProfileDataCopyWith<$Res> implements $ProfileDataCopyWith<$Res> {
  factory _$ProfileDataCopyWith(_ProfileData value, $Res Function(_ProfileData) _then) = __$ProfileDataCopyWithImpl;
@override @useResult
$Res call({
 bool isLoggedIn, UserModel? user
});


@override $UserModelCopyWith<$Res>? get user;

}
/// @nodoc
class __$ProfileDataCopyWithImpl<$Res>
    implements _$ProfileDataCopyWith<$Res> {
  __$ProfileDataCopyWithImpl(this._self, this._then);

  final _ProfileData _self;
  final $Res Function(_ProfileData) _then;

/// Create a copy of ProfileData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoggedIn = null,Object? user = freezed,}) {
  return _then(_ProfileData(
isLoggedIn: null == isLoggedIn ? _self.isLoggedIn : isLoggedIn // ignore: cast_nullable_to_non_nullable
as bool,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserModel?,
  ));
}

/// Create a copy of ProfileData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserModelCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserModelCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

/// @nodoc
mixin _$ProfileState {

 ProfileData get profileData;
/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileStateCopyWith<ProfileState> get copyWith => _$ProfileStateCopyWithImpl<ProfileState>(this as ProfileState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileState&&(identical(other.profileData, profileData) || other.profileData == profileData));
}


@override
int get hashCode => Object.hash(runtimeType,profileData);

@override
String toString() {
  return 'ProfileState(profileData: $profileData)';
}


}

/// @nodoc
abstract mixin class $ProfileStateCopyWith<$Res>  {
  factory $ProfileStateCopyWith(ProfileState value, $Res Function(ProfileState) _then) = _$ProfileStateCopyWithImpl;
@useResult
$Res call({
 ProfileData profileData
});


$ProfileDataCopyWith<$Res> get profileData;

}
/// @nodoc
class _$ProfileStateCopyWithImpl<$Res>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._self, this._then);

  final ProfileState _self;
  final $Res Function(ProfileState) _then;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? profileData = null,}) {
  return _then(_self.copyWith(
profileData: null == profileData ? _self.profileData : profileData // ignore: cast_nullable_to_non_nullable
as ProfileData,
  ));
}
/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfileDataCopyWith<$Res> get profileData {
  
  return $ProfileDataCopyWith<$Res>(_self.profileData, (value) {
    return _then(_self.copyWith(profileData: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProfileState].
extension ProfileStatePatterns on ProfileState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ProfileInitialState value)?  initial,TResult Function( ProfileLoadingState value)?  loading,TResult Function( ProfileSuccessState value)?  success,TResult Function( ProfileErrorState value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ProfileInitialState() when initial != null:
return initial(_that);case ProfileLoadingState() when loading != null:
return loading(_that);case ProfileSuccessState() when success != null:
return success(_that);case ProfileErrorState() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ProfileInitialState value)  initial,required TResult Function( ProfileLoadingState value)  loading,required TResult Function( ProfileSuccessState value)  success,required TResult Function( ProfileErrorState value)  error,}){
final _that = this;
switch (_that) {
case ProfileInitialState():
return initial(_that);case ProfileLoadingState():
return loading(_that);case ProfileSuccessState():
return success(_that);case ProfileErrorState():
return error(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ProfileInitialState value)?  initial,TResult? Function( ProfileLoadingState value)?  loading,TResult? Function( ProfileSuccessState value)?  success,TResult? Function( ProfileErrorState value)?  error,}){
final _that = this;
switch (_that) {
case ProfileInitialState() when initial != null:
return initial(_that);case ProfileLoadingState() when loading != null:
return loading(_that);case ProfileSuccessState() when success != null:
return success(_that);case ProfileErrorState() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( ProfileData profileData)?  initial,TResult Function( ProfileData profileData)?  loading,TResult Function( ProfileData profileData)?  success,TResult Function( String message,  ProfileData profileData)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ProfileInitialState() when initial != null:
return initial(_that.profileData);case ProfileLoadingState() when loading != null:
return loading(_that.profileData);case ProfileSuccessState() when success != null:
return success(_that.profileData);case ProfileErrorState() when error != null:
return error(_that.message,_that.profileData);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( ProfileData profileData)  initial,required TResult Function( ProfileData profileData)  loading,required TResult Function( ProfileData profileData)  success,required TResult Function( String message,  ProfileData profileData)  error,}) {final _that = this;
switch (_that) {
case ProfileInitialState():
return initial(_that.profileData);case ProfileLoadingState():
return loading(_that.profileData);case ProfileSuccessState():
return success(_that.profileData);case ProfileErrorState():
return error(_that.message,_that.profileData);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( ProfileData profileData)?  initial,TResult? Function( ProfileData profileData)?  loading,TResult? Function( ProfileData profileData)?  success,TResult? Function( String message,  ProfileData profileData)?  error,}) {final _that = this;
switch (_that) {
case ProfileInitialState() when initial != null:
return initial(_that.profileData);case ProfileLoadingState() when loading != null:
return loading(_that.profileData);case ProfileSuccessState() when success != null:
return success(_that.profileData);case ProfileErrorState() when error != null:
return error(_that.message,_that.profileData);case _:
  return null;

}
}

}

/// @nodoc


class ProfileInitialState implements ProfileState {
  const ProfileInitialState({required this.profileData});
  

@override final  ProfileData profileData;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileInitialStateCopyWith<ProfileInitialState> get copyWith => _$ProfileInitialStateCopyWithImpl<ProfileInitialState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileInitialState&&(identical(other.profileData, profileData) || other.profileData == profileData));
}


@override
int get hashCode => Object.hash(runtimeType,profileData);

@override
String toString() {
  return 'ProfileState.initial(profileData: $profileData)';
}


}

/// @nodoc
abstract mixin class $ProfileInitialStateCopyWith<$Res> implements $ProfileStateCopyWith<$Res> {
  factory $ProfileInitialStateCopyWith(ProfileInitialState value, $Res Function(ProfileInitialState) _then) = _$ProfileInitialStateCopyWithImpl;
@override @useResult
$Res call({
 ProfileData profileData
});


@override $ProfileDataCopyWith<$Res> get profileData;

}
/// @nodoc
class _$ProfileInitialStateCopyWithImpl<$Res>
    implements $ProfileInitialStateCopyWith<$Res> {
  _$ProfileInitialStateCopyWithImpl(this._self, this._then);

  final ProfileInitialState _self;
  final $Res Function(ProfileInitialState) _then;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? profileData = null,}) {
  return _then(ProfileInitialState(
profileData: null == profileData ? _self.profileData : profileData // ignore: cast_nullable_to_non_nullable
as ProfileData,
  ));
}

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfileDataCopyWith<$Res> get profileData {
  
  return $ProfileDataCopyWith<$Res>(_self.profileData, (value) {
    return _then(_self.copyWith(profileData: value));
  });
}
}

/// @nodoc


class ProfileLoadingState implements ProfileState {
  const ProfileLoadingState({required this.profileData});
  

@override final  ProfileData profileData;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileLoadingStateCopyWith<ProfileLoadingState> get copyWith => _$ProfileLoadingStateCopyWithImpl<ProfileLoadingState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileLoadingState&&(identical(other.profileData, profileData) || other.profileData == profileData));
}


@override
int get hashCode => Object.hash(runtimeType,profileData);

@override
String toString() {
  return 'ProfileState.loading(profileData: $profileData)';
}


}

/// @nodoc
abstract mixin class $ProfileLoadingStateCopyWith<$Res> implements $ProfileStateCopyWith<$Res> {
  factory $ProfileLoadingStateCopyWith(ProfileLoadingState value, $Res Function(ProfileLoadingState) _then) = _$ProfileLoadingStateCopyWithImpl;
@override @useResult
$Res call({
 ProfileData profileData
});


@override $ProfileDataCopyWith<$Res> get profileData;

}
/// @nodoc
class _$ProfileLoadingStateCopyWithImpl<$Res>
    implements $ProfileLoadingStateCopyWith<$Res> {
  _$ProfileLoadingStateCopyWithImpl(this._self, this._then);

  final ProfileLoadingState _self;
  final $Res Function(ProfileLoadingState) _then;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? profileData = null,}) {
  return _then(ProfileLoadingState(
profileData: null == profileData ? _self.profileData : profileData // ignore: cast_nullable_to_non_nullable
as ProfileData,
  ));
}

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfileDataCopyWith<$Res> get profileData {
  
  return $ProfileDataCopyWith<$Res>(_self.profileData, (value) {
    return _then(_self.copyWith(profileData: value));
  });
}
}

/// @nodoc


class ProfileSuccessState implements ProfileState {
  const ProfileSuccessState({required this.profileData});
  

@override final  ProfileData profileData;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileSuccessStateCopyWith<ProfileSuccessState> get copyWith => _$ProfileSuccessStateCopyWithImpl<ProfileSuccessState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileSuccessState&&(identical(other.profileData, profileData) || other.profileData == profileData));
}


@override
int get hashCode => Object.hash(runtimeType,profileData);

@override
String toString() {
  return 'ProfileState.success(profileData: $profileData)';
}


}

/// @nodoc
abstract mixin class $ProfileSuccessStateCopyWith<$Res> implements $ProfileStateCopyWith<$Res> {
  factory $ProfileSuccessStateCopyWith(ProfileSuccessState value, $Res Function(ProfileSuccessState) _then) = _$ProfileSuccessStateCopyWithImpl;
@override @useResult
$Res call({
 ProfileData profileData
});


@override $ProfileDataCopyWith<$Res> get profileData;

}
/// @nodoc
class _$ProfileSuccessStateCopyWithImpl<$Res>
    implements $ProfileSuccessStateCopyWith<$Res> {
  _$ProfileSuccessStateCopyWithImpl(this._self, this._then);

  final ProfileSuccessState _self;
  final $Res Function(ProfileSuccessState) _then;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? profileData = null,}) {
  return _then(ProfileSuccessState(
profileData: null == profileData ? _self.profileData : profileData // ignore: cast_nullable_to_non_nullable
as ProfileData,
  ));
}

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfileDataCopyWith<$Res> get profileData {
  
  return $ProfileDataCopyWith<$Res>(_self.profileData, (value) {
    return _then(_self.copyWith(profileData: value));
  });
}
}

/// @nodoc


class ProfileErrorState implements ProfileState {
  const ProfileErrorState({required this.message, required this.profileData});
  

 final  String message;
@override final  ProfileData profileData;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileErrorStateCopyWith<ProfileErrorState> get copyWith => _$ProfileErrorStateCopyWithImpl<ProfileErrorState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileErrorState&&(identical(other.message, message) || other.message == message)&&(identical(other.profileData, profileData) || other.profileData == profileData));
}


@override
int get hashCode => Object.hash(runtimeType,message,profileData);

@override
String toString() {
  return 'ProfileState.error(message: $message, profileData: $profileData)';
}


}

/// @nodoc
abstract mixin class $ProfileErrorStateCopyWith<$Res> implements $ProfileStateCopyWith<$Res> {
  factory $ProfileErrorStateCopyWith(ProfileErrorState value, $Res Function(ProfileErrorState) _then) = _$ProfileErrorStateCopyWithImpl;
@override @useResult
$Res call({
 String message, ProfileData profileData
});


@override $ProfileDataCopyWith<$Res> get profileData;

}
/// @nodoc
class _$ProfileErrorStateCopyWithImpl<$Res>
    implements $ProfileErrorStateCopyWith<$Res> {
  _$ProfileErrorStateCopyWithImpl(this._self, this._then);

  final ProfileErrorState _self;
  final $Res Function(ProfileErrorState) _then;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? profileData = null,}) {
  return _then(ProfileErrorState(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,profileData: null == profileData ? _self.profileData : profileData // ignore: cast_nullable_to_non_nullable
as ProfileData,
  ));
}

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfileDataCopyWith<$Res> get profileData {
  
  return $ProfileDataCopyWith<$Res>(_self.profileData, (value) {
    return _then(_self.copyWith(profileData: value));
  });
}
}

// dart format on
