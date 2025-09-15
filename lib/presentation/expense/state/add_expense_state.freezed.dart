// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_expense_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AddExpenseData {

 double get amount; DateTime get dateTime; String get wallet; String get category; String? get description;
/// Create a copy of AddExpenseData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddExpenseDataCopyWith<AddExpenseData> get copyWith => _$AddExpenseDataCopyWithImpl<AddExpenseData>(this as AddExpenseData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddExpenseData&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.dateTime, dateTime) || other.dateTime == dateTime)&&(identical(other.wallet, wallet) || other.wallet == wallet)&&(identical(other.category, category) || other.category == category)&&(identical(other.description, description) || other.description == description));
}


@override
int get hashCode => Object.hash(runtimeType,amount,dateTime,wallet,category,description);

@override
String toString() {
  return 'AddExpenseData(amount: $amount, dateTime: $dateTime, wallet: $wallet, category: $category, description: $description)';
}


}

/// @nodoc
abstract mixin class $AddExpenseDataCopyWith<$Res>  {
  factory $AddExpenseDataCopyWith(AddExpenseData value, $Res Function(AddExpenseData) _then) = _$AddExpenseDataCopyWithImpl;
@useResult
$Res call({
 double amount, DateTime dateTime, String wallet, String category, String? description
});




}
/// @nodoc
class _$AddExpenseDataCopyWithImpl<$Res>
    implements $AddExpenseDataCopyWith<$Res> {
  _$AddExpenseDataCopyWithImpl(this._self, this._then);

  final AddExpenseData _self;
  final $Res Function(AddExpenseData) _then;

/// Create a copy of AddExpenseData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? amount = null,Object? dateTime = null,Object? wallet = null,Object? category = null,Object? description = freezed,}) {
  return _then(_self.copyWith(
amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,dateTime: null == dateTime ? _self.dateTime : dateTime // ignore: cast_nullable_to_non_nullable
as DateTime,wallet: null == wallet ? _self.wallet : wallet // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AddExpenseData].
extension AddExpenseDataPatterns on AddExpenseData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddExpenseData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddExpenseData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddExpenseData value)  $default,){
final _that = this;
switch (_that) {
case _AddExpenseData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddExpenseData value)?  $default,){
final _that = this;
switch (_that) {
case _AddExpenseData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double amount,  DateTime dateTime,  String wallet,  String category,  String? description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddExpenseData() when $default != null:
return $default(_that.amount,_that.dateTime,_that.wallet,_that.category,_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double amount,  DateTime dateTime,  String wallet,  String category,  String? description)  $default,) {final _that = this;
switch (_that) {
case _AddExpenseData():
return $default(_that.amount,_that.dateTime,_that.wallet,_that.category,_that.description);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double amount,  DateTime dateTime,  String wallet,  String category,  String? description)?  $default,) {final _that = this;
switch (_that) {
case _AddExpenseData() when $default != null:
return $default(_that.amount,_that.dateTime,_that.wallet,_that.category,_that.description);case _:
  return null;

}
}

}

/// @nodoc


class _AddExpenseData implements AddExpenseData {
  const _AddExpenseData({required this.amount, required this.dateTime, required this.wallet, required this.category, this.description});
  

@override final  double amount;
@override final  DateTime dateTime;
@override final  String wallet;
@override final  String category;
@override final  String? description;

/// Create a copy of AddExpenseData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddExpenseDataCopyWith<_AddExpenseData> get copyWith => __$AddExpenseDataCopyWithImpl<_AddExpenseData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddExpenseData&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.dateTime, dateTime) || other.dateTime == dateTime)&&(identical(other.wallet, wallet) || other.wallet == wallet)&&(identical(other.category, category) || other.category == category)&&(identical(other.description, description) || other.description == description));
}


@override
int get hashCode => Object.hash(runtimeType,amount,dateTime,wallet,category,description);

@override
String toString() {
  return 'AddExpenseData(amount: $amount, dateTime: $dateTime, wallet: $wallet, category: $category, description: $description)';
}


}

/// @nodoc
abstract mixin class _$AddExpenseDataCopyWith<$Res> implements $AddExpenseDataCopyWith<$Res> {
  factory _$AddExpenseDataCopyWith(_AddExpenseData value, $Res Function(_AddExpenseData) _then) = __$AddExpenseDataCopyWithImpl;
@override @useResult
$Res call({
 double amount, DateTime dateTime, String wallet, String category, String? description
});




}
/// @nodoc
class __$AddExpenseDataCopyWithImpl<$Res>
    implements _$AddExpenseDataCopyWith<$Res> {
  __$AddExpenseDataCopyWithImpl(this._self, this._then);

  final _AddExpenseData _self;
  final $Res Function(_AddExpenseData) _then;

/// Create a copy of AddExpenseData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? amount = null,Object? dateTime = null,Object? wallet = null,Object? category = null,Object? description = freezed,}) {
  return _then(_AddExpenseData(
amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,dateTime: null == dateTime ? _self.dateTime : dateTime // ignore: cast_nullable_to_non_nullable
as DateTime,wallet: null == wallet ? _self.wallet : wallet // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$AddExpenseState {

 AddExpenseData get addExpenseData;
/// Create a copy of AddExpenseState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddExpenseStateCopyWith<AddExpenseState> get copyWith => _$AddExpenseStateCopyWithImpl<AddExpenseState>(this as AddExpenseState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddExpenseState&&(identical(other.addExpenseData, addExpenseData) || other.addExpenseData == addExpenseData));
}


@override
int get hashCode => Object.hash(runtimeType,addExpenseData);

@override
String toString() {
  return 'AddExpenseState(addExpenseData: $addExpenseData)';
}


}

/// @nodoc
abstract mixin class $AddExpenseStateCopyWith<$Res>  {
  factory $AddExpenseStateCopyWith(AddExpenseState value, $Res Function(AddExpenseState) _then) = _$AddExpenseStateCopyWithImpl;
@useResult
$Res call({
 AddExpenseData addExpenseData
});


$AddExpenseDataCopyWith<$Res> get addExpenseData;

}
/// @nodoc
class _$AddExpenseStateCopyWithImpl<$Res>
    implements $AddExpenseStateCopyWith<$Res> {
  _$AddExpenseStateCopyWithImpl(this._self, this._then);

  final AddExpenseState _self;
  final $Res Function(AddExpenseState) _then;

/// Create a copy of AddExpenseState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? addExpenseData = null,}) {
  return _then(_self.copyWith(
addExpenseData: null == addExpenseData ? _self.addExpenseData : addExpenseData // ignore: cast_nullable_to_non_nullable
as AddExpenseData,
  ));
}
/// Create a copy of AddExpenseState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddExpenseDataCopyWith<$Res> get addExpenseData {
  
  return $AddExpenseDataCopyWith<$Res>(_self.addExpenseData, (value) {
    return _then(_self.copyWith(addExpenseData: value));
  });
}
}


/// Adds pattern-matching-related methods to [AddExpenseState].
extension AddExpenseStatePatterns on AddExpenseState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( AddExpenseInitialState value)?  initial,TResult Function( AddExpenseLoadingState value)?  loading,TResult Function( AddExpenseSuccessState value)?  success,TResult Function( AddExpenseErrorState value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case AddExpenseInitialState() when initial != null:
return initial(_that);case AddExpenseLoadingState() when loading != null:
return loading(_that);case AddExpenseSuccessState() when success != null:
return success(_that);case AddExpenseErrorState() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( AddExpenseInitialState value)  initial,required TResult Function( AddExpenseLoadingState value)  loading,required TResult Function( AddExpenseSuccessState value)  success,required TResult Function( AddExpenseErrorState value)  error,}){
final _that = this;
switch (_that) {
case AddExpenseInitialState():
return initial(_that);case AddExpenseLoadingState():
return loading(_that);case AddExpenseSuccessState():
return success(_that);case AddExpenseErrorState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( AddExpenseInitialState value)?  initial,TResult? Function( AddExpenseLoadingState value)?  loading,TResult? Function( AddExpenseSuccessState value)?  success,TResult? Function( AddExpenseErrorState value)?  error,}){
final _that = this;
switch (_that) {
case AddExpenseInitialState() when initial != null:
return initial(_that);case AddExpenseLoadingState() when loading != null:
return loading(_that);case AddExpenseSuccessState() when success != null:
return success(_that);case AddExpenseErrorState() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( AddExpenseData addExpenseData)?  initial,TResult Function( AddExpenseData addExpenseData)?  loading,TResult Function( AddExpenseData addExpenseData,  String? message)?  success,TResult Function( AddExpenseData addExpenseData,  String error)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case AddExpenseInitialState() when initial != null:
return initial(_that.addExpenseData);case AddExpenseLoadingState() when loading != null:
return loading(_that.addExpenseData);case AddExpenseSuccessState() when success != null:
return success(_that.addExpenseData,_that.message);case AddExpenseErrorState() when error != null:
return error(_that.addExpenseData,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( AddExpenseData addExpenseData)  initial,required TResult Function( AddExpenseData addExpenseData)  loading,required TResult Function( AddExpenseData addExpenseData,  String? message)  success,required TResult Function( AddExpenseData addExpenseData,  String error)  error,}) {final _that = this;
switch (_that) {
case AddExpenseInitialState():
return initial(_that.addExpenseData);case AddExpenseLoadingState():
return loading(_that.addExpenseData);case AddExpenseSuccessState():
return success(_that.addExpenseData,_that.message);case AddExpenseErrorState():
return error(_that.addExpenseData,_that.error);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( AddExpenseData addExpenseData)?  initial,TResult? Function( AddExpenseData addExpenseData)?  loading,TResult? Function( AddExpenseData addExpenseData,  String? message)?  success,TResult? Function( AddExpenseData addExpenseData,  String error)?  error,}) {final _that = this;
switch (_that) {
case AddExpenseInitialState() when initial != null:
return initial(_that.addExpenseData);case AddExpenseLoadingState() when loading != null:
return loading(_that.addExpenseData);case AddExpenseSuccessState() when success != null:
return success(_that.addExpenseData,_that.message);case AddExpenseErrorState() when error != null:
return error(_that.addExpenseData,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class AddExpenseInitialState implements AddExpenseState {
  const AddExpenseInitialState({required this.addExpenseData});
  

@override final  AddExpenseData addExpenseData;

/// Create a copy of AddExpenseState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddExpenseInitialStateCopyWith<AddExpenseInitialState> get copyWith => _$AddExpenseInitialStateCopyWithImpl<AddExpenseInitialState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddExpenseInitialState&&(identical(other.addExpenseData, addExpenseData) || other.addExpenseData == addExpenseData));
}


@override
int get hashCode => Object.hash(runtimeType,addExpenseData);

@override
String toString() {
  return 'AddExpenseState.initial(addExpenseData: $addExpenseData)';
}


}

/// @nodoc
abstract mixin class $AddExpenseInitialStateCopyWith<$Res> implements $AddExpenseStateCopyWith<$Res> {
  factory $AddExpenseInitialStateCopyWith(AddExpenseInitialState value, $Res Function(AddExpenseInitialState) _then) = _$AddExpenseInitialStateCopyWithImpl;
@override @useResult
$Res call({
 AddExpenseData addExpenseData
});


@override $AddExpenseDataCopyWith<$Res> get addExpenseData;

}
/// @nodoc
class _$AddExpenseInitialStateCopyWithImpl<$Res>
    implements $AddExpenseInitialStateCopyWith<$Res> {
  _$AddExpenseInitialStateCopyWithImpl(this._self, this._then);

  final AddExpenseInitialState _self;
  final $Res Function(AddExpenseInitialState) _then;

/// Create a copy of AddExpenseState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? addExpenseData = null,}) {
  return _then(AddExpenseInitialState(
addExpenseData: null == addExpenseData ? _self.addExpenseData : addExpenseData // ignore: cast_nullable_to_non_nullable
as AddExpenseData,
  ));
}

/// Create a copy of AddExpenseState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddExpenseDataCopyWith<$Res> get addExpenseData {
  
  return $AddExpenseDataCopyWith<$Res>(_self.addExpenseData, (value) {
    return _then(_self.copyWith(addExpenseData: value));
  });
}
}

/// @nodoc


class AddExpenseLoadingState implements AddExpenseState {
  const AddExpenseLoadingState({required this.addExpenseData});
  

@override final  AddExpenseData addExpenseData;

/// Create a copy of AddExpenseState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddExpenseLoadingStateCopyWith<AddExpenseLoadingState> get copyWith => _$AddExpenseLoadingStateCopyWithImpl<AddExpenseLoadingState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddExpenseLoadingState&&(identical(other.addExpenseData, addExpenseData) || other.addExpenseData == addExpenseData));
}


@override
int get hashCode => Object.hash(runtimeType,addExpenseData);

@override
String toString() {
  return 'AddExpenseState.loading(addExpenseData: $addExpenseData)';
}


}

/// @nodoc
abstract mixin class $AddExpenseLoadingStateCopyWith<$Res> implements $AddExpenseStateCopyWith<$Res> {
  factory $AddExpenseLoadingStateCopyWith(AddExpenseLoadingState value, $Res Function(AddExpenseLoadingState) _then) = _$AddExpenseLoadingStateCopyWithImpl;
@override @useResult
$Res call({
 AddExpenseData addExpenseData
});


@override $AddExpenseDataCopyWith<$Res> get addExpenseData;

}
/// @nodoc
class _$AddExpenseLoadingStateCopyWithImpl<$Res>
    implements $AddExpenseLoadingStateCopyWith<$Res> {
  _$AddExpenseLoadingStateCopyWithImpl(this._self, this._then);

  final AddExpenseLoadingState _self;
  final $Res Function(AddExpenseLoadingState) _then;

/// Create a copy of AddExpenseState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? addExpenseData = null,}) {
  return _then(AddExpenseLoadingState(
addExpenseData: null == addExpenseData ? _self.addExpenseData : addExpenseData // ignore: cast_nullable_to_non_nullable
as AddExpenseData,
  ));
}

/// Create a copy of AddExpenseState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddExpenseDataCopyWith<$Res> get addExpenseData {
  
  return $AddExpenseDataCopyWith<$Res>(_self.addExpenseData, (value) {
    return _then(_self.copyWith(addExpenseData: value));
  });
}
}

/// @nodoc


class AddExpenseSuccessState implements AddExpenseState {
  const AddExpenseSuccessState({required this.addExpenseData, this.message});
  

@override final  AddExpenseData addExpenseData;
 final  String? message;

/// Create a copy of AddExpenseState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddExpenseSuccessStateCopyWith<AddExpenseSuccessState> get copyWith => _$AddExpenseSuccessStateCopyWithImpl<AddExpenseSuccessState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddExpenseSuccessState&&(identical(other.addExpenseData, addExpenseData) || other.addExpenseData == addExpenseData)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,addExpenseData,message);

@override
String toString() {
  return 'AddExpenseState.success(addExpenseData: $addExpenseData, message: $message)';
}


}

/// @nodoc
abstract mixin class $AddExpenseSuccessStateCopyWith<$Res> implements $AddExpenseStateCopyWith<$Res> {
  factory $AddExpenseSuccessStateCopyWith(AddExpenseSuccessState value, $Res Function(AddExpenseSuccessState) _then) = _$AddExpenseSuccessStateCopyWithImpl;
@override @useResult
$Res call({
 AddExpenseData addExpenseData, String? message
});


@override $AddExpenseDataCopyWith<$Res> get addExpenseData;

}
/// @nodoc
class _$AddExpenseSuccessStateCopyWithImpl<$Res>
    implements $AddExpenseSuccessStateCopyWith<$Res> {
  _$AddExpenseSuccessStateCopyWithImpl(this._self, this._then);

  final AddExpenseSuccessState _self;
  final $Res Function(AddExpenseSuccessState) _then;

/// Create a copy of AddExpenseState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? addExpenseData = null,Object? message = freezed,}) {
  return _then(AddExpenseSuccessState(
addExpenseData: null == addExpenseData ? _self.addExpenseData : addExpenseData // ignore: cast_nullable_to_non_nullable
as AddExpenseData,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of AddExpenseState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddExpenseDataCopyWith<$Res> get addExpenseData {
  
  return $AddExpenseDataCopyWith<$Res>(_self.addExpenseData, (value) {
    return _then(_self.copyWith(addExpenseData: value));
  });
}
}

/// @nodoc


class AddExpenseErrorState implements AddExpenseState {
  const AddExpenseErrorState({required this.addExpenseData, required this.error});
  

@override final  AddExpenseData addExpenseData;
 final  String error;

/// Create a copy of AddExpenseState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddExpenseErrorStateCopyWith<AddExpenseErrorState> get copyWith => _$AddExpenseErrorStateCopyWithImpl<AddExpenseErrorState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddExpenseErrorState&&(identical(other.addExpenseData, addExpenseData) || other.addExpenseData == addExpenseData)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,addExpenseData,error);

@override
String toString() {
  return 'AddExpenseState.error(addExpenseData: $addExpenseData, error: $error)';
}


}

/// @nodoc
abstract mixin class $AddExpenseErrorStateCopyWith<$Res> implements $AddExpenseStateCopyWith<$Res> {
  factory $AddExpenseErrorStateCopyWith(AddExpenseErrorState value, $Res Function(AddExpenseErrorState) _then) = _$AddExpenseErrorStateCopyWithImpl;
@override @useResult
$Res call({
 AddExpenseData addExpenseData, String error
});


@override $AddExpenseDataCopyWith<$Res> get addExpenseData;

}
/// @nodoc
class _$AddExpenseErrorStateCopyWithImpl<$Res>
    implements $AddExpenseErrorStateCopyWith<$Res> {
  _$AddExpenseErrorStateCopyWithImpl(this._self, this._then);

  final AddExpenseErrorState _self;
  final $Res Function(AddExpenseErrorState) _then;

/// Create a copy of AddExpenseState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? addExpenseData = null,Object? error = null,}) {
  return _then(AddExpenseErrorState(
addExpenseData: null == addExpenseData ? _self.addExpenseData : addExpenseData // ignore: cast_nullable_to_non_nullable
as AddExpenseData,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of AddExpenseState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddExpenseDataCopyWith<$Res> get addExpenseData {
  
  return $AddExpenseDataCopyWith<$Res>(_self.addExpenseData, (value) {
    return _then(_self.copyWith(addExpenseData: value));
  });
}
}

// dart format on
