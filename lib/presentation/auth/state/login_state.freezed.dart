// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LoginData {

 String get email; String get password; String get emailError; String get passwordError; bool get isEmailValid; bool get isPasswordValid; bool get navigateToHome;
/// Create a copy of LoginData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginDataCopyWith<LoginData> get copyWith => _$LoginDataCopyWithImpl<LoginData>(this as LoginData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginData&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.emailError, emailError) || other.emailError == emailError)&&(identical(other.passwordError, passwordError) || other.passwordError == passwordError)&&(identical(other.isEmailValid, isEmailValid) || other.isEmailValid == isEmailValid)&&(identical(other.isPasswordValid, isPasswordValid) || other.isPasswordValid == isPasswordValid)&&(identical(other.navigateToHome, navigateToHome) || other.navigateToHome == navigateToHome));
}


@override
int get hashCode => Object.hash(runtimeType,email,password,emailError,passwordError,isEmailValid,isPasswordValid,navigateToHome);

@override
String toString() {
  return 'LoginData(email: $email, password: $password, emailError: $emailError, passwordError: $passwordError, isEmailValid: $isEmailValid, isPasswordValid: $isPasswordValid, navigateToHome: $navigateToHome)';
}


}

/// @nodoc
abstract mixin class $LoginDataCopyWith<$Res>  {
  factory $LoginDataCopyWith(LoginData value, $Res Function(LoginData) _then) = _$LoginDataCopyWithImpl;
@useResult
$Res call({
 String email, String password, String emailError, String passwordError, bool isEmailValid, bool isPasswordValid, bool navigateToHome
});




}
/// @nodoc
class _$LoginDataCopyWithImpl<$Res>
    implements $LoginDataCopyWith<$Res> {
  _$LoginDataCopyWithImpl(this._self, this._then);

  final LoginData _self;
  final $Res Function(LoginData) _then;

/// Create a copy of LoginData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? password = null,Object? emailError = null,Object? passwordError = null,Object? isEmailValid = null,Object? isPasswordValid = null,Object? navigateToHome = null,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,emailError: null == emailError ? _self.emailError : emailError // ignore: cast_nullable_to_non_nullable
as String,passwordError: null == passwordError ? _self.passwordError : passwordError // ignore: cast_nullable_to_non_nullable
as String,isEmailValid: null == isEmailValid ? _self.isEmailValid : isEmailValid // ignore: cast_nullable_to_non_nullable
as bool,isPasswordValid: null == isPasswordValid ? _self.isPasswordValid : isPasswordValid // ignore: cast_nullable_to_non_nullable
as bool,navigateToHome: null == navigateToHome ? _self.navigateToHome : navigateToHome // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [LoginData].
extension LoginDataPatterns on LoginData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoginData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoginData value)  $default,){
final _that = this;
switch (_that) {
case _LoginData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoginData value)?  $default,){
final _that = this;
switch (_that) {
case _LoginData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String email,  String password,  String emailError,  String passwordError,  bool isEmailValid,  bool isPasswordValid,  bool navigateToHome)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginData() when $default != null:
return $default(_that.email,_that.password,_that.emailError,_that.passwordError,_that.isEmailValid,_that.isPasswordValid,_that.navigateToHome);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String email,  String password,  String emailError,  String passwordError,  bool isEmailValid,  bool isPasswordValid,  bool navigateToHome)  $default,) {final _that = this;
switch (_that) {
case _LoginData():
return $default(_that.email,_that.password,_that.emailError,_that.passwordError,_that.isEmailValid,_that.isPasswordValid,_that.navigateToHome);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String email,  String password,  String emailError,  String passwordError,  bool isEmailValid,  bool isPasswordValid,  bool navigateToHome)?  $default,) {final _that = this;
switch (_that) {
case _LoginData() when $default != null:
return $default(_that.email,_that.password,_that.emailError,_that.passwordError,_that.isEmailValid,_that.isPasswordValid,_that.navigateToHome);case _:
  return null;

}
}

}

/// @nodoc


class _LoginData implements LoginData {
  const _LoginData({this.email = '', this.password = '', this.emailError = '', this.passwordError = '', this.isEmailValid = false, this.isPasswordValid = false, this.navigateToHome = false});
  

@override@JsonKey() final  String email;
@override@JsonKey() final  String password;
@override@JsonKey() final  String emailError;
@override@JsonKey() final  String passwordError;
@override@JsonKey() final  bool isEmailValid;
@override@JsonKey() final  bool isPasswordValid;
@override@JsonKey() final  bool navigateToHome;

/// Create a copy of LoginData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginDataCopyWith<_LoginData> get copyWith => __$LoginDataCopyWithImpl<_LoginData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginData&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.emailError, emailError) || other.emailError == emailError)&&(identical(other.passwordError, passwordError) || other.passwordError == passwordError)&&(identical(other.isEmailValid, isEmailValid) || other.isEmailValid == isEmailValid)&&(identical(other.isPasswordValid, isPasswordValid) || other.isPasswordValid == isPasswordValid)&&(identical(other.navigateToHome, navigateToHome) || other.navigateToHome == navigateToHome));
}


@override
int get hashCode => Object.hash(runtimeType,email,password,emailError,passwordError,isEmailValid,isPasswordValid,navigateToHome);

@override
String toString() {
  return 'LoginData(email: $email, password: $password, emailError: $emailError, passwordError: $passwordError, isEmailValid: $isEmailValid, isPasswordValid: $isPasswordValid, navigateToHome: $navigateToHome)';
}


}

/// @nodoc
abstract mixin class _$LoginDataCopyWith<$Res> implements $LoginDataCopyWith<$Res> {
  factory _$LoginDataCopyWith(_LoginData value, $Res Function(_LoginData) _then) = __$LoginDataCopyWithImpl;
@override @useResult
$Res call({
 String email, String password, String emailError, String passwordError, bool isEmailValid, bool isPasswordValid, bool navigateToHome
});




}
/// @nodoc
class __$LoginDataCopyWithImpl<$Res>
    implements _$LoginDataCopyWith<$Res> {
  __$LoginDataCopyWithImpl(this._self, this._then);

  final _LoginData _self;
  final $Res Function(_LoginData) _then;

/// Create a copy of LoginData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,Object? emailError = null,Object? passwordError = null,Object? isEmailValid = null,Object? isPasswordValid = null,Object? navigateToHome = null,}) {
  return _then(_LoginData(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,emailError: null == emailError ? _self.emailError : emailError // ignore: cast_nullable_to_non_nullable
as String,passwordError: null == passwordError ? _self.passwordError : passwordError // ignore: cast_nullable_to_non_nullable
as String,isEmailValid: null == isEmailValid ? _self.isEmailValid : isEmailValid // ignore: cast_nullable_to_non_nullable
as bool,isPasswordValid: null == isPasswordValid ? _self.isPasswordValid : isPasswordValid // ignore: cast_nullable_to_non_nullable
as bool,navigateToHome: null == navigateToHome ? _self.navigateToHome : navigateToHome // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$LoginState {

 LoginData get data;
/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginStateCopyWith<LoginState> get copyWith => _$LoginStateCopyWithImpl<LoginState>(this as LoginState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginState&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'LoginState(data: $data)';
}


}

/// @nodoc
abstract mixin class $LoginStateCopyWith<$Res>  {
  factory $LoginStateCopyWith(LoginState value, $Res Function(LoginState) _then) = _$LoginStateCopyWithImpl;
@useResult
$Res call({
 LoginData data
});


$LoginDataCopyWith<$Res> get data;

}
/// @nodoc
class _$LoginStateCopyWithImpl<$Res>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._self, this._then);

  final LoginState _self;
  final $Res Function(LoginState) _then;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as LoginData,
  ));
}
/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoginDataCopyWith<$Res> get data {
  
  return $LoginDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [LoginState].
extension LoginStatePatterns on LoginState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoginInitialState value)?  initial,TResult Function( LoginLoadingState value)?  loading,TResult Function( LoginSuccessState value)?  success,TResult Function( LoginErrorState value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoginInitialState() when initial != null:
return initial(_that);case LoginLoadingState() when loading != null:
return loading(_that);case LoginSuccessState() when success != null:
return success(_that);case LoginErrorState() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoginInitialState value)  initial,required TResult Function( LoginLoadingState value)  loading,required TResult Function( LoginSuccessState value)  success,required TResult Function( LoginErrorState value)  error,}){
final _that = this;
switch (_that) {
case LoginInitialState():
return initial(_that);case LoginLoadingState():
return loading(_that);case LoginSuccessState():
return success(_that);case LoginErrorState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoginInitialState value)?  initial,TResult? Function( LoginLoadingState value)?  loading,TResult? Function( LoginSuccessState value)?  success,TResult? Function( LoginErrorState value)?  error,}){
final _that = this;
switch (_that) {
case LoginInitialState() when initial != null:
return initial(_that);case LoginLoadingState() when loading != null:
return loading(_that);case LoginSuccessState() when success != null:
return success(_that);case LoginErrorState() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( LoginData data)?  initial,TResult Function( LoginData data)?  loading,TResult Function( LoginData data,  String? message)?  success,TResult Function( LoginData data,  String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoginInitialState() when initial != null:
return initial(_that.data);case LoginLoadingState() when loading != null:
return loading(_that.data);case LoginSuccessState() when success != null:
return success(_that.data,_that.message);case LoginErrorState() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( LoginData data)  initial,required TResult Function( LoginData data)  loading,required TResult Function( LoginData data,  String? message)  success,required TResult Function( LoginData data,  String message)  error,}) {final _that = this;
switch (_that) {
case LoginInitialState():
return initial(_that.data);case LoginLoadingState():
return loading(_that.data);case LoginSuccessState():
return success(_that.data,_that.message);case LoginErrorState():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( LoginData data)?  initial,TResult? Function( LoginData data)?  loading,TResult? Function( LoginData data,  String? message)?  success,TResult? Function( LoginData data,  String message)?  error,}) {final _that = this;
switch (_that) {
case LoginInitialState() when initial != null:
return initial(_that.data);case LoginLoadingState() when loading != null:
return loading(_that.data);case LoginSuccessState() when success != null:
return success(_that.data,_that.message);case LoginErrorState() when error != null:
return error(_that.data,_that.message);case _:
  return null;

}
}

}

/// @nodoc


class LoginInitialState implements LoginState {
  const LoginInitialState({required this.data});
  

@override final  LoginData data;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginInitialStateCopyWith<LoginInitialState> get copyWith => _$LoginInitialStateCopyWithImpl<LoginInitialState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginInitialState&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'LoginState.initial(data: $data)';
}


}

/// @nodoc
abstract mixin class $LoginInitialStateCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory $LoginInitialStateCopyWith(LoginInitialState value, $Res Function(LoginInitialState) _then) = _$LoginInitialStateCopyWithImpl;
@override @useResult
$Res call({
 LoginData data
});


@override $LoginDataCopyWith<$Res> get data;

}
/// @nodoc
class _$LoginInitialStateCopyWithImpl<$Res>
    implements $LoginInitialStateCopyWith<$Res> {
  _$LoginInitialStateCopyWithImpl(this._self, this._then);

  final LoginInitialState _self;
  final $Res Function(LoginInitialState) _then;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(LoginInitialState(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as LoginData,
  ));
}

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoginDataCopyWith<$Res> get data {
  
  return $LoginDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

/// @nodoc


class LoginLoadingState implements LoginState {
  const LoginLoadingState({required this.data});
  

@override final  LoginData data;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginLoadingStateCopyWith<LoginLoadingState> get copyWith => _$LoginLoadingStateCopyWithImpl<LoginLoadingState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginLoadingState&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'LoginState.loading(data: $data)';
}


}

/// @nodoc
abstract mixin class $LoginLoadingStateCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory $LoginLoadingStateCopyWith(LoginLoadingState value, $Res Function(LoginLoadingState) _then) = _$LoginLoadingStateCopyWithImpl;
@override @useResult
$Res call({
 LoginData data
});


@override $LoginDataCopyWith<$Res> get data;

}
/// @nodoc
class _$LoginLoadingStateCopyWithImpl<$Res>
    implements $LoginLoadingStateCopyWith<$Res> {
  _$LoginLoadingStateCopyWithImpl(this._self, this._then);

  final LoginLoadingState _self;
  final $Res Function(LoginLoadingState) _then;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(LoginLoadingState(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as LoginData,
  ));
}

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoginDataCopyWith<$Res> get data {
  
  return $LoginDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

/// @nodoc


class LoginSuccessState implements LoginState {
  const LoginSuccessState({required this.data, this.message});
  

@override final  LoginData data;
 final  String? message;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginSuccessStateCopyWith<LoginSuccessState> get copyWith => _$LoginSuccessStateCopyWithImpl<LoginSuccessState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginSuccessState&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,data,message);

@override
String toString() {
  return 'LoginState.success(data: $data, message: $message)';
}


}

/// @nodoc
abstract mixin class $LoginSuccessStateCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory $LoginSuccessStateCopyWith(LoginSuccessState value, $Res Function(LoginSuccessState) _then) = _$LoginSuccessStateCopyWithImpl;
@override @useResult
$Res call({
 LoginData data, String? message
});


@override $LoginDataCopyWith<$Res> get data;

}
/// @nodoc
class _$LoginSuccessStateCopyWithImpl<$Res>
    implements $LoginSuccessStateCopyWith<$Res> {
  _$LoginSuccessStateCopyWithImpl(this._self, this._then);

  final LoginSuccessState _self;
  final $Res Function(LoginSuccessState) _then;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? message = freezed,}) {
  return _then(LoginSuccessState(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as LoginData,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoginDataCopyWith<$Res> get data {
  
  return $LoginDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

/// @nodoc


class LoginErrorState implements LoginState {
  const LoginErrorState({required this.data, required this.message});
  

@override final  LoginData data;
 final  String message;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginErrorStateCopyWith<LoginErrorState> get copyWith => _$LoginErrorStateCopyWithImpl<LoginErrorState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginErrorState&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,data,message);

@override
String toString() {
  return 'LoginState.error(data: $data, message: $message)';
}


}

/// @nodoc
abstract mixin class $LoginErrorStateCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory $LoginErrorStateCopyWith(LoginErrorState value, $Res Function(LoginErrorState) _then) = _$LoginErrorStateCopyWithImpl;
@override @useResult
$Res call({
 LoginData data, String message
});


@override $LoginDataCopyWith<$Res> get data;

}
/// @nodoc
class _$LoginErrorStateCopyWithImpl<$Res>
    implements $LoginErrorStateCopyWith<$Res> {
  _$LoginErrorStateCopyWithImpl(this._self, this._then);

  final LoginErrorState _self;
  final $Res Function(LoginErrorState) _then;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? message = null,}) {
  return _then(LoginErrorState(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as LoginData,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoginDataCopyWith<$Res> get data {
  
  return $LoginDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
