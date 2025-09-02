// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LoginEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginEvent()';
}


}

/// @nodoc
class $LoginEventCopyWith<$Res>  {
$LoginEventCopyWith(LoginEvent _, $Res Function(LoginEvent) __);
}


/// Adds pattern-matching-related methods to [LoginEvent].
extension LoginEventPatterns on LoginEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoginSubmitted value)?  login,TResult Function( ValidateEmail value)?  validateEmail,TResult Function( ValidatePassword value)?  validatePassword,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoginSubmitted() when login != null:
return login(_that);case ValidateEmail() when validateEmail != null:
return validateEmail(_that);case ValidatePassword() when validatePassword != null:
return validatePassword(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoginSubmitted value)  login,required TResult Function( ValidateEmail value)  validateEmail,required TResult Function( ValidatePassword value)  validatePassword,}){
final _that = this;
switch (_that) {
case LoginSubmitted():
return login(_that);case ValidateEmail():
return validateEmail(_that);case ValidatePassword():
return validatePassword(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoginSubmitted value)?  login,TResult? Function( ValidateEmail value)?  validateEmail,TResult? Function( ValidatePassword value)?  validatePassword,}){
final _that = this;
switch (_that) {
case LoginSubmitted() when login != null:
return login(_that);case ValidateEmail() when validateEmail != null:
return validateEmail(_that);case ValidatePassword() when validatePassword != null:
return validatePassword(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String email,  String password)?  login,TResult Function( String email)?  validateEmail,TResult Function( String password)?  validatePassword,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoginSubmitted() when login != null:
return login(_that.email,_that.password);case ValidateEmail() when validateEmail != null:
return validateEmail(_that.email);case ValidatePassword() when validatePassword != null:
return validatePassword(_that.password);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String email,  String password)  login,required TResult Function( String email)  validateEmail,required TResult Function( String password)  validatePassword,}) {final _that = this;
switch (_that) {
case LoginSubmitted():
return login(_that.email,_that.password);case ValidateEmail():
return validateEmail(_that.email);case ValidatePassword():
return validatePassword(_that.password);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String email,  String password)?  login,TResult? Function( String email)?  validateEmail,TResult? Function( String password)?  validatePassword,}) {final _that = this;
switch (_that) {
case LoginSubmitted() when login != null:
return login(_that.email,_that.password);case ValidateEmail() when validateEmail != null:
return validateEmail(_that.email);case ValidatePassword() when validatePassword != null:
return validatePassword(_that.password);case _:
  return null;

}
}

}

/// @nodoc


class LoginSubmitted implements LoginEvent {
  const LoginSubmitted({required this.email, required this.password});
  

 final  String email;
 final  String password;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginSubmittedCopyWith<LoginSubmitted> get copyWith => _$LoginSubmittedCopyWithImpl<LoginSubmitted>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginSubmitted&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,email,password);

@override
String toString() {
  return 'LoginEvent.login(email: $email, password: $password)';
}


}

/// @nodoc
abstract mixin class $LoginSubmittedCopyWith<$Res> implements $LoginEventCopyWith<$Res> {
  factory $LoginSubmittedCopyWith(LoginSubmitted value, $Res Function(LoginSubmitted) _then) = _$LoginSubmittedCopyWithImpl;
@useResult
$Res call({
 String email, String password
});




}
/// @nodoc
class _$LoginSubmittedCopyWithImpl<$Res>
    implements $LoginSubmittedCopyWith<$Res> {
  _$LoginSubmittedCopyWithImpl(this._self, this._then);

  final LoginSubmitted _self;
  final $Res Function(LoginSubmitted) _then;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,}) {
  return _then(LoginSubmitted(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ValidateEmail implements LoginEvent {
  const ValidateEmail(this.email);
  

 final  String email;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ValidateEmailCopyWith<ValidateEmail> get copyWith => _$ValidateEmailCopyWithImpl<ValidateEmail>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ValidateEmail&&(identical(other.email, email) || other.email == email));
}


@override
int get hashCode => Object.hash(runtimeType,email);

@override
String toString() {
  return 'LoginEvent.validateEmail(email: $email)';
}


}

/// @nodoc
abstract mixin class $ValidateEmailCopyWith<$Res> implements $LoginEventCopyWith<$Res> {
  factory $ValidateEmailCopyWith(ValidateEmail value, $Res Function(ValidateEmail) _then) = _$ValidateEmailCopyWithImpl;
@useResult
$Res call({
 String email
});




}
/// @nodoc
class _$ValidateEmailCopyWithImpl<$Res>
    implements $ValidateEmailCopyWith<$Res> {
  _$ValidateEmailCopyWithImpl(this._self, this._then);

  final ValidateEmail _self;
  final $Res Function(ValidateEmail) _then;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,}) {
  return _then(ValidateEmail(
null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ValidatePassword implements LoginEvent {
  const ValidatePassword(this.password);
  

 final  String password;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ValidatePasswordCopyWith<ValidatePassword> get copyWith => _$ValidatePasswordCopyWithImpl<ValidatePassword>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ValidatePassword&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,password);

@override
String toString() {
  return 'LoginEvent.validatePassword(password: $password)';
}


}

/// @nodoc
abstract mixin class $ValidatePasswordCopyWith<$Res> implements $LoginEventCopyWith<$Res> {
  factory $ValidatePasswordCopyWith(ValidatePassword value, $Res Function(ValidatePassword) _then) = _$ValidatePasswordCopyWithImpl;
@useResult
$Res call({
 String password
});




}
/// @nodoc
class _$ValidatePasswordCopyWithImpl<$Res>
    implements $ValidatePasswordCopyWith<$Res> {
  _$ValidatePasswordCopyWithImpl(this._self, this._then);

  final ValidatePassword _self;
  final $Res Function(ValidatePassword) _then;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? password = null,}) {
  return _then(ValidatePassword(
null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
