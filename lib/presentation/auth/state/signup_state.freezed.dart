// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SignupData {

 String get name; String get email; String get password; String get nameError; String get emailError; String get passwordError; bool get isNameValid; bool get isEmailValid; bool get isPasswordValid; bool get navigateToLogin;
/// Create a copy of SignupData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignupDataCopyWith<SignupData> get copyWith => _$SignupDataCopyWithImpl<SignupData>(this as SignupData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignupData&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.nameError, nameError) || other.nameError == nameError)&&(identical(other.emailError, emailError) || other.emailError == emailError)&&(identical(other.passwordError, passwordError) || other.passwordError == passwordError)&&(identical(other.isNameValid, isNameValid) || other.isNameValid == isNameValid)&&(identical(other.isEmailValid, isEmailValid) || other.isEmailValid == isEmailValid)&&(identical(other.isPasswordValid, isPasswordValid) || other.isPasswordValid == isPasswordValid)&&(identical(other.navigateToLogin, navigateToLogin) || other.navigateToLogin == navigateToLogin));
}


@override
int get hashCode => Object.hash(runtimeType,name,email,password,nameError,emailError,passwordError,isNameValid,isEmailValid,isPasswordValid,navigateToLogin);

@override
String toString() {
  return 'SignupData(name: $name, email: $email, password: $password, nameError: $nameError, emailError: $emailError, passwordError: $passwordError, isNameValid: $isNameValid, isEmailValid: $isEmailValid, isPasswordValid: $isPasswordValid, navigateToLogin: $navigateToLogin)';
}


}

/// @nodoc
abstract mixin class $SignupDataCopyWith<$Res>  {
  factory $SignupDataCopyWith(SignupData value, $Res Function(SignupData) _then) = _$SignupDataCopyWithImpl;
@useResult
$Res call({
 String name, String email, String password, String nameError, String emailError, String passwordError, bool isNameValid, bool isEmailValid, bool isPasswordValid, bool navigateToLogin
});




}
/// @nodoc
class _$SignupDataCopyWithImpl<$Res>
    implements $SignupDataCopyWith<$Res> {
  _$SignupDataCopyWithImpl(this._self, this._then);

  final SignupData _self;
  final $Res Function(SignupData) _then;

/// Create a copy of SignupData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? email = null,Object? password = null,Object? nameError = null,Object? emailError = null,Object? passwordError = null,Object? isNameValid = null,Object? isEmailValid = null,Object? isPasswordValid = null,Object? navigateToLogin = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,nameError: null == nameError ? _self.nameError : nameError // ignore: cast_nullable_to_non_nullable
as String,emailError: null == emailError ? _self.emailError : emailError // ignore: cast_nullable_to_non_nullable
as String,passwordError: null == passwordError ? _self.passwordError : passwordError // ignore: cast_nullable_to_non_nullable
as String,isNameValid: null == isNameValid ? _self.isNameValid : isNameValid // ignore: cast_nullable_to_non_nullable
as bool,isEmailValid: null == isEmailValid ? _self.isEmailValid : isEmailValid // ignore: cast_nullable_to_non_nullable
as bool,isPasswordValid: null == isPasswordValid ? _self.isPasswordValid : isPasswordValid // ignore: cast_nullable_to_non_nullable
as bool,navigateToLogin: null == navigateToLogin ? _self.navigateToLogin : navigateToLogin // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SignupData].
extension SignupDataPatterns on SignupData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SignupData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SignupData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SignupData value)  $default,){
final _that = this;
switch (_that) {
case _SignupData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SignupData value)?  $default,){
final _that = this;
switch (_that) {
case _SignupData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String email,  String password,  String nameError,  String emailError,  String passwordError,  bool isNameValid,  bool isEmailValid,  bool isPasswordValid,  bool navigateToLogin)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SignupData() when $default != null:
return $default(_that.name,_that.email,_that.password,_that.nameError,_that.emailError,_that.passwordError,_that.isNameValid,_that.isEmailValid,_that.isPasswordValid,_that.navigateToLogin);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String email,  String password,  String nameError,  String emailError,  String passwordError,  bool isNameValid,  bool isEmailValid,  bool isPasswordValid,  bool navigateToLogin)  $default,) {final _that = this;
switch (_that) {
case _SignupData():
return $default(_that.name,_that.email,_that.password,_that.nameError,_that.emailError,_that.passwordError,_that.isNameValid,_that.isEmailValid,_that.isPasswordValid,_that.navigateToLogin);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String email,  String password,  String nameError,  String emailError,  String passwordError,  bool isNameValid,  bool isEmailValid,  bool isPasswordValid,  bool navigateToLogin)?  $default,) {final _that = this;
switch (_that) {
case _SignupData() when $default != null:
return $default(_that.name,_that.email,_that.password,_that.nameError,_that.emailError,_that.passwordError,_that.isNameValid,_that.isEmailValid,_that.isPasswordValid,_that.navigateToLogin);case _:
  return null;

}
}

}

/// @nodoc


class _SignupData implements SignupData {
  const _SignupData({this.name = '', this.email = '', this.password = '', this.nameError = '', this.emailError = '', this.passwordError = '', this.isNameValid = false, this.isEmailValid = false, this.isPasswordValid = false, this.navigateToLogin = false});
  

@override@JsonKey() final  String name;
@override@JsonKey() final  String email;
@override@JsonKey() final  String password;
@override@JsonKey() final  String nameError;
@override@JsonKey() final  String emailError;
@override@JsonKey() final  String passwordError;
@override@JsonKey() final  bool isNameValid;
@override@JsonKey() final  bool isEmailValid;
@override@JsonKey() final  bool isPasswordValid;
@override@JsonKey() final  bool navigateToLogin;

/// Create a copy of SignupData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignupDataCopyWith<_SignupData> get copyWith => __$SignupDataCopyWithImpl<_SignupData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignupData&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.nameError, nameError) || other.nameError == nameError)&&(identical(other.emailError, emailError) || other.emailError == emailError)&&(identical(other.passwordError, passwordError) || other.passwordError == passwordError)&&(identical(other.isNameValid, isNameValid) || other.isNameValid == isNameValid)&&(identical(other.isEmailValid, isEmailValid) || other.isEmailValid == isEmailValid)&&(identical(other.isPasswordValid, isPasswordValid) || other.isPasswordValid == isPasswordValid)&&(identical(other.navigateToLogin, navigateToLogin) || other.navigateToLogin == navigateToLogin));
}


@override
int get hashCode => Object.hash(runtimeType,name,email,password,nameError,emailError,passwordError,isNameValid,isEmailValid,isPasswordValid,navigateToLogin);

@override
String toString() {
  return 'SignupData(name: $name, email: $email, password: $password, nameError: $nameError, emailError: $emailError, passwordError: $passwordError, isNameValid: $isNameValid, isEmailValid: $isEmailValid, isPasswordValid: $isPasswordValid, navigateToLogin: $navigateToLogin)';
}


}

/// @nodoc
abstract mixin class _$SignupDataCopyWith<$Res> implements $SignupDataCopyWith<$Res> {
  factory _$SignupDataCopyWith(_SignupData value, $Res Function(_SignupData) _then) = __$SignupDataCopyWithImpl;
@override @useResult
$Res call({
 String name, String email, String password, String nameError, String emailError, String passwordError, bool isNameValid, bool isEmailValid, bool isPasswordValid, bool navigateToLogin
});




}
/// @nodoc
class __$SignupDataCopyWithImpl<$Res>
    implements _$SignupDataCopyWith<$Res> {
  __$SignupDataCopyWithImpl(this._self, this._then);

  final _SignupData _self;
  final $Res Function(_SignupData) _then;

/// Create a copy of SignupData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? email = null,Object? password = null,Object? nameError = null,Object? emailError = null,Object? passwordError = null,Object? isNameValid = null,Object? isEmailValid = null,Object? isPasswordValid = null,Object? navigateToLogin = null,}) {
  return _then(_SignupData(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,nameError: null == nameError ? _self.nameError : nameError // ignore: cast_nullable_to_non_nullable
as String,emailError: null == emailError ? _self.emailError : emailError // ignore: cast_nullable_to_non_nullable
as String,passwordError: null == passwordError ? _self.passwordError : passwordError // ignore: cast_nullable_to_non_nullable
as String,isNameValid: null == isNameValid ? _self.isNameValid : isNameValid // ignore: cast_nullable_to_non_nullable
as bool,isEmailValid: null == isEmailValid ? _self.isEmailValid : isEmailValid // ignore: cast_nullable_to_non_nullable
as bool,isPasswordValid: null == isPasswordValid ? _self.isPasswordValid : isPasswordValid // ignore: cast_nullable_to_non_nullable
as bool,navigateToLogin: null == navigateToLogin ? _self.navigateToLogin : navigateToLogin // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$SignupState {

 SignupData get data;
/// Create a copy of SignupState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignupStateCopyWith<SignupState> get copyWith => _$SignupStateCopyWithImpl<SignupState>(this as SignupState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignupState&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'SignupState(data: $data)';
}


}

/// @nodoc
abstract mixin class $SignupStateCopyWith<$Res>  {
  factory $SignupStateCopyWith(SignupState value, $Res Function(SignupState) _then) = _$SignupStateCopyWithImpl;
@useResult
$Res call({
 SignupData data
});


$SignupDataCopyWith<$Res> get data;

}
/// @nodoc
class _$SignupStateCopyWithImpl<$Res>
    implements $SignupStateCopyWith<$Res> {
  _$SignupStateCopyWithImpl(this._self, this._then);

  final SignupState _self;
  final $Res Function(SignupState) _then;

/// Create a copy of SignupState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as SignupData,
  ));
}
/// Create a copy of SignupState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SignupDataCopyWith<$Res> get data {
  
  return $SignupDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [SignupState].
extension SignupStatePatterns on SignupState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SignupInitialState value)?  initial,TResult Function( SignupLoadingState value)?  loading,TResult Function( SignupSuccessState value)?  success,TResult Function( SignupErrorState value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SignupInitialState() when initial != null:
return initial(_that);case SignupLoadingState() when loading != null:
return loading(_that);case SignupSuccessState() when success != null:
return success(_that);case SignupErrorState() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SignupInitialState value)  initial,required TResult Function( SignupLoadingState value)  loading,required TResult Function( SignupSuccessState value)  success,required TResult Function( SignupErrorState value)  error,}){
final _that = this;
switch (_that) {
case SignupInitialState():
return initial(_that);case SignupLoadingState():
return loading(_that);case SignupSuccessState():
return success(_that);case SignupErrorState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SignupInitialState value)?  initial,TResult? Function( SignupLoadingState value)?  loading,TResult? Function( SignupSuccessState value)?  success,TResult? Function( SignupErrorState value)?  error,}){
final _that = this;
switch (_that) {
case SignupInitialState() when initial != null:
return initial(_that);case SignupLoadingState() when loading != null:
return loading(_that);case SignupSuccessState() when success != null:
return success(_that);case SignupErrorState() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( SignupData data)?  initial,TResult Function( SignupData data)?  loading,TResult Function( SignupData data,  String? message)?  success,TResult Function( SignupData data,  String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SignupInitialState() when initial != null:
return initial(_that.data);case SignupLoadingState() when loading != null:
return loading(_that.data);case SignupSuccessState() when success != null:
return success(_that.data,_that.message);case SignupErrorState() when error != null:
return error(_that.data,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( SignupData data)  initial,required TResult Function( SignupData data)  loading,required TResult Function( SignupData data,  String? message)  success,required TResult Function( SignupData data,  String message)  error,}) {final _that = this;
switch (_that) {
case SignupInitialState():
return initial(_that.data);case SignupLoadingState():
return loading(_that.data);case SignupSuccessState():
return success(_that.data,_that.message);case SignupErrorState():
return error(_that.data,_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( SignupData data)?  initial,TResult? Function( SignupData data)?  loading,TResult? Function( SignupData data,  String? message)?  success,TResult? Function( SignupData data,  String message)?  error,}) {final _that = this;
switch (_that) {
case SignupInitialState() when initial != null:
return initial(_that.data);case SignupLoadingState() when loading != null:
return loading(_that.data);case SignupSuccessState() when success != null:
return success(_that.data,_that.message);case SignupErrorState() when error != null:
return error(_that.data,_that.message);case _:
  return null;

}
}

}

/// @nodoc


class SignupInitialState implements SignupState {
  const SignupInitialState({required this.data});
  

@override final  SignupData data;

/// Create a copy of SignupState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignupInitialStateCopyWith<SignupInitialState> get copyWith => _$SignupInitialStateCopyWithImpl<SignupInitialState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignupInitialState&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'SignupState.initial(data: $data)';
}


}

/// @nodoc
abstract mixin class $SignupInitialStateCopyWith<$Res> implements $SignupStateCopyWith<$Res> {
  factory $SignupInitialStateCopyWith(SignupInitialState value, $Res Function(SignupInitialState) _then) = _$SignupInitialStateCopyWithImpl;
@override @useResult
$Res call({
 SignupData data
});


@override $SignupDataCopyWith<$Res> get data;

}
/// @nodoc
class _$SignupInitialStateCopyWithImpl<$Res>
    implements $SignupInitialStateCopyWith<$Res> {
  _$SignupInitialStateCopyWithImpl(this._self, this._then);

  final SignupInitialState _self;
  final $Res Function(SignupInitialState) _then;

/// Create a copy of SignupState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(SignupInitialState(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as SignupData,
  ));
}

/// Create a copy of SignupState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SignupDataCopyWith<$Res> get data {
  
  return $SignupDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

/// @nodoc


class SignupLoadingState implements SignupState {
  const SignupLoadingState({required this.data});
  

@override final  SignupData data;

/// Create a copy of SignupState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignupLoadingStateCopyWith<SignupLoadingState> get copyWith => _$SignupLoadingStateCopyWithImpl<SignupLoadingState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignupLoadingState&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'SignupState.loading(data: $data)';
}


}

/// @nodoc
abstract mixin class $SignupLoadingStateCopyWith<$Res> implements $SignupStateCopyWith<$Res> {
  factory $SignupLoadingStateCopyWith(SignupLoadingState value, $Res Function(SignupLoadingState) _then) = _$SignupLoadingStateCopyWithImpl;
@override @useResult
$Res call({
 SignupData data
});


@override $SignupDataCopyWith<$Res> get data;

}
/// @nodoc
class _$SignupLoadingStateCopyWithImpl<$Res>
    implements $SignupLoadingStateCopyWith<$Res> {
  _$SignupLoadingStateCopyWithImpl(this._self, this._then);

  final SignupLoadingState _self;
  final $Res Function(SignupLoadingState) _then;

/// Create a copy of SignupState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(SignupLoadingState(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as SignupData,
  ));
}

/// Create a copy of SignupState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SignupDataCopyWith<$Res> get data {
  
  return $SignupDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

/// @nodoc


class SignupSuccessState implements SignupState {
  const SignupSuccessState({required this.data, this.message});
  

@override final  SignupData data;
 final  String? message;

/// Create a copy of SignupState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignupSuccessStateCopyWith<SignupSuccessState> get copyWith => _$SignupSuccessStateCopyWithImpl<SignupSuccessState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignupSuccessState&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,data,message);

@override
String toString() {
  return 'SignupState.success(data: $data, message: $message)';
}


}

/// @nodoc
abstract mixin class $SignupSuccessStateCopyWith<$Res> implements $SignupStateCopyWith<$Res> {
  factory $SignupSuccessStateCopyWith(SignupSuccessState value, $Res Function(SignupSuccessState) _then) = _$SignupSuccessStateCopyWithImpl;
@override @useResult
$Res call({
 SignupData data, String? message
});


@override $SignupDataCopyWith<$Res> get data;

}
/// @nodoc
class _$SignupSuccessStateCopyWithImpl<$Res>
    implements $SignupSuccessStateCopyWith<$Res> {
  _$SignupSuccessStateCopyWithImpl(this._self, this._then);

  final SignupSuccessState _self;
  final $Res Function(SignupSuccessState) _then;

/// Create a copy of SignupState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? message = freezed,}) {
  return _then(SignupSuccessState(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as SignupData,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of SignupState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SignupDataCopyWith<$Res> get data {
  
  return $SignupDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

/// @nodoc


class SignupErrorState implements SignupState {
  const SignupErrorState({required this.data, required this.message});
  

@override final  SignupData data;
 final  String message;

/// Create a copy of SignupState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignupErrorStateCopyWith<SignupErrorState> get copyWith => _$SignupErrorStateCopyWithImpl<SignupErrorState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignupErrorState&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,data,message);

@override
String toString() {
  return 'SignupState.error(data: $data, message: $message)';
}


}

/// @nodoc
abstract mixin class $SignupErrorStateCopyWith<$Res> implements $SignupStateCopyWith<$Res> {
  factory $SignupErrorStateCopyWith(SignupErrorState value, $Res Function(SignupErrorState) _then) = _$SignupErrorStateCopyWithImpl;
@override @useResult
$Res call({
 SignupData data, String message
});


@override $SignupDataCopyWith<$Res> get data;

}
/// @nodoc
class _$SignupErrorStateCopyWithImpl<$Res>
    implements $SignupErrorStateCopyWith<$Res> {
  _$SignupErrorStateCopyWithImpl(this._self, this._then);

  final SignupErrorState _self;
  final $Res Function(SignupErrorState) _then;

/// Create a copy of SignupState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? message = null,}) {
  return _then(SignupErrorState(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as SignupData,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of SignupState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SignupDataCopyWith<$Res> get data {
  
  return $SignupDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
