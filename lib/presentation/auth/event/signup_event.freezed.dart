// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SignupEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignupEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignupEvent()';
}


}

/// @nodoc
class $SignupEventCopyWith<$Res>  {
$SignupEventCopyWith(SignupEvent _, $Res Function(SignupEvent) __);
}


/// Adds pattern-matching-related methods to [SignupEvent].
extension SignupEventPatterns on SignupEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Signup value)?  signup,TResult Function( CreateUser value)?  createUser,TResult Function( ValidateEmail value)?  validateEmail,TResult Function( ValidatePassword value)?  validatePassword,TResult Function( ValidateName value)?  validateName,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Signup() when signup != null:
return signup(_that);case CreateUser() when createUser != null:
return createUser(_that);case ValidateEmail() when validateEmail != null:
return validateEmail(_that);case ValidatePassword() when validatePassword != null:
return validatePassword(_that);case ValidateName() when validateName != null:
return validateName(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Signup value)  signup,required TResult Function( CreateUser value)  createUser,required TResult Function( ValidateEmail value)  validateEmail,required TResult Function( ValidatePassword value)  validatePassword,required TResult Function( ValidateName value)  validateName,}){
final _that = this;
switch (_that) {
case Signup():
return signup(_that);case CreateUser():
return createUser(_that);case ValidateEmail():
return validateEmail(_that);case ValidatePassword():
return validatePassword(_that);case ValidateName():
return validateName(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Signup value)?  signup,TResult? Function( CreateUser value)?  createUser,TResult? Function( ValidateEmail value)?  validateEmail,TResult? Function( ValidatePassword value)?  validatePassword,TResult? Function( ValidateName value)?  validateName,}){
final _that = this;
switch (_that) {
case Signup() when signup != null:
return signup(_that);case CreateUser() when createUser != null:
return createUser(_that);case ValidateEmail() when validateEmail != null:
return validateEmail(_that);case ValidatePassword() when validatePassword != null:
return validatePassword(_that);case ValidateName() when validateName != null:
return validateName(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String email,  String password,  String name)?  signup,TResult Function( UserModel userModel)?  createUser,TResult Function( String email)?  validateEmail,TResult Function( String password)?  validatePassword,TResult Function( String name)?  validateName,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Signup() when signup != null:
return signup(_that.email,_that.password,_that.name);case CreateUser() when createUser != null:
return createUser(_that.userModel);case ValidateEmail() when validateEmail != null:
return validateEmail(_that.email);case ValidatePassword() when validatePassword != null:
return validatePassword(_that.password);case ValidateName() when validateName != null:
return validateName(_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String email,  String password,  String name)  signup,required TResult Function( UserModel userModel)  createUser,required TResult Function( String email)  validateEmail,required TResult Function( String password)  validatePassword,required TResult Function( String name)  validateName,}) {final _that = this;
switch (_that) {
case Signup():
return signup(_that.email,_that.password,_that.name);case CreateUser():
return createUser(_that.userModel);case ValidateEmail():
return validateEmail(_that.email);case ValidatePassword():
return validatePassword(_that.password);case ValidateName():
return validateName(_that.name);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String email,  String password,  String name)?  signup,TResult? Function( UserModel userModel)?  createUser,TResult? Function( String email)?  validateEmail,TResult? Function( String password)?  validatePassword,TResult? Function( String name)?  validateName,}) {final _that = this;
switch (_that) {
case Signup() when signup != null:
return signup(_that.email,_that.password,_that.name);case CreateUser() when createUser != null:
return createUser(_that.userModel);case ValidateEmail() when validateEmail != null:
return validateEmail(_that.email);case ValidatePassword() when validatePassword != null:
return validatePassword(_that.password);case ValidateName() when validateName != null:
return validateName(_that.name);case _:
  return null;

}
}

}

/// @nodoc


class Signup implements SignupEvent {
  const Signup({required this.email, required this.password, required this.name});
  

 final  String email;
 final  String password;
 final  String name;

/// Create a copy of SignupEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignupCopyWith<Signup> get copyWith => _$SignupCopyWithImpl<Signup>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Signup&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,email,password,name);

@override
String toString() {
  return 'SignupEvent.signup(email: $email, password: $password, name: $name)';
}


}

/// @nodoc
abstract mixin class $SignupCopyWith<$Res> implements $SignupEventCopyWith<$Res> {
  factory $SignupCopyWith(Signup value, $Res Function(Signup) _then) = _$SignupCopyWithImpl;
@useResult
$Res call({
 String email, String password, String name
});




}
/// @nodoc
class _$SignupCopyWithImpl<$Res>
    implements $SignupCopyWith<$Res> {
  _$SignupCopyWithImpl(this._self, this._then);

  final Signup _self;
  final $Res Function(Signup) _then;

/// Create a copy of SignupEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,Object? name = null,}) {
  return _then(Signup(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class CreateUser implements SignupEvent {
  const CreateUser({required this.userModel});
  

 final  UserModel userModel;

/// Create a copy of SignupEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateUserCopyWith<CreateUser> get copyWith => _$CreateUserCopyWithImpl<CreateUser>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateUser&&(identical(other.userModel, userModel) || other.userModel == userModel));
}


@override
int get hashCode => Object.hash(runtimeType,userModel);

@override
String toString() {
  return 'SignupEvent.createUser(userModel: $userModel)';
}


}

/// @nodoc
abstract mixin class $CreateUserCopyWith<$Res> implements $SignupEventCopyWith<$Res> {
  factory $CreateUserCopyWith(CreateUser value, $Res Function(CreateUser) _then) = _$CreateUserCopyWithImpl;
@useResult
$Res call({
 UserModel userModel
});


$UserModelCopyWith<$Res> get userModel;

}
/// @nodoc
class _$CreateUserCopyWithImpl<$Res>
    implements $CreateUserCopyWith<$Res> {
  _$CreateUserCopyWithImpl(this._self, this._then);

  final CreateUser _self;
  final $Res Function(CreateUser) _then;

/// Create a copy of SignupEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userModel = null,}) {
  return _then(CreateUser(
userModel: null == userModel ? _self.userModel : userModel // ignore: cast_nullable_to_non_nullable
as UserModel,
  ));
}

/// Create a copy of SignupEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserModelCopyWith<$Res> get userModel {
  
  return $UserModelCopyWith<$Res>(_self.userModel, (value) {
    return _then(_self.copyWith(userModel: value));
  });
}
}

/// @nodoc


class ValidateEmail implements SignupEvent {
  const ValidateEmail({required this.email});
  

 final  String email;

/// Create a copy of SignupEvent
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
  return 'SignupEvent.validateEmail(email: $email)';
}


}

/// @nodoc
abstract mixin class $ValidateEmailCopyWith<$Res> implements $SignupEventCopyWith<$Res> {
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

/// Create a copy of SignupEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,}) {
  return _then(ValidateEmail(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ValidatePassword implements SignupEvent {
  const ValidatePassword({required this.password});
  

 final  String password;

/// Create a copy of SignupEvent
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
  return 'SignupEvent.validatePassword(password: $password)';
}


}

/// @nodoc
abstract mixin class $ValidatePasswordCopyWith<$Res> implements $SignupEventCopyWith<$Res> {
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

/// Create a copy of SignupEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? password = null,}) {
  return _then(ValidatePassword(
password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ValidateName implements SignupEvent {
  const ValidateName({required this.name});
  

 final  String name;

/// Create a copy of SignupEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ValidateNameCopyWith<ValidateName> get copyWith => _$ValidateNameCopyWithImpl<ValidateName>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ValidateName&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'SignupEvent.validateName(name: $name)';
}


}

/// @nodoc
abstract mixin class $ValidateNameCopyWith<$Res> implements $SignupEventCopyWith<$Res> {
  factory $ValidateNameCopyWith(ValidateName value, $Res Function(ValidateName) _then) = _$ValidateNameCopyWithImpl;
@useResult
$Res call({
 String name
});




}
/// @nodoc
class _$ValidateNameCopyWithImpl<$Res>
    implements $ValidateNameCopyWith<$Res> {
  _$ValidateNameCopyWithImpl(this._self, this._then);

  final ValidateName _self;
  final $Res Function(ValidateName) _then;

/// Create a copy of SignupEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? name = null,}) {
  return _then(ValidateName(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
