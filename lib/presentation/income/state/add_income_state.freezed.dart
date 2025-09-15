// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_income_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AddIncomeData {

 double get amount; DateTime get dateTime; String get wallet; String get category; String? get description;
/// Create a copy of AddIncomeData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddIncomeDataCopyWith<AddIncomeData> get copyWith => _$AddIncomeDataCopyWithImpl<AddIncomeData>(this as AddIncomeData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddIncomeData&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.dateTime, dateTime) || other.dateTime == dateTime)&&(identical(other.wallet, wallet) || other.wallet == wallet)&&(identical(other.category, category) || other.category == category)&&(identical(other.description, description) || other.description == description));
}


@override
int get hashCode => Object.hash(runtimeType,amount,dateTime,wallet,category,description);

@override
String toString() {
  return 'AddIncomeData(amount: $amount, dateTime: $dateTime, wallet: $wallet, category: $category, description: $description)';
}


}

/// @nodoc
abstract mixin class $AddIncomeDataCopyWith<$Res>  {
  factory $AddIncomeDataCopyWith(AddIncomeData value, $Res Function(AddIncomeData) _then) = _$AddIncomeDataCopyWithImpl;
@useResult
$Res call({
 double amount, DateTime dateTime, String wallet, String category, String? description
});




}
/// @nodoc
class _$AddIncomeDataCopyWithImpl<$Res>
    implements $AddIncomeDataCopyWith<$Res> {
  _$AddIncomeDataCopyWithImpl(this._self, this._then);

  final AddIncomeData _self;
  final $Res Function(AddIncomeData) _then;

/// Create a copy of AddIncomeData
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


/// Adds pattern-matching-related methods to [AddIncomeData].
extension AddIncomeDataPatterns on AddIncomeData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddIncomeData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddIncomeData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddIncomeData value)  $default,){
final _that = this;
switch (_that) {
case _AddIncomeData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddIncomeData value)?  $default,){
final _that = this;
switch (_that) {
case _AddIncomeData() when $default != null:
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
case _AddIncomeData() when $default != null:
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
case _AddIncomeData():
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
case _AddIncomeData() when $default != null:
return $default(_that.amount,_that.dateTime,_that.wallet,_that.category,_that.description);case _:
  return null;

}
}

}

/// @nodoc


class _AddIncomeData implements AddIncomeData {
  const _AddIncomeData({required this.amount, required this.dateTime, required this.wallet, required this.category, this.description});
  

@override final  double amount;
@override final  DateTime dateTime;
@override final  String wallet;
@override final  String category;
@override final  String? description;

/// Create a copy of AddIncomeData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddIncomeDataCopyWith<_AddIncomeData> get copyWith => __$AddIncomeDataCopyWithImpl<_AddIncomeData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddIncomeData&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.dateTime, dateTime) || other.dateTime == dateTime)&&(identical(other.wallet, wallet) || other.wallet == wallet)&&(identical(other.category, category) || other.category == category)&&(identical(other.description, description) || other.description == description));
}


@override
int get hashCode => Object.hash(runtimeType,amount,dateTime,wallet,category,description);

@override
String toString() {
  return 'AddIncomeData(amount: $amount, dateTime: $dateTime, wallet: $wallet, category: $category, description: $description)';
}


}

/// @nodoc
abstract mixin class _$AddIncomeDataCopyWith<$Res> implements $AddIncomeDataCopyWith<$Res> {
  factory _$AddIncomeDataCopyWith(_AddIncomeData value, $Res Function(_AddIncomeData) _then) = __$AddIncomeDataCopyWithImpl;
@override @useResult
$Res call({
 double amount, DateTime dateTime, String wallet, String category, String? description
});




}
/// @nodoc
class __$AddIncomeDataCopyWithImpl<$Res>
    implements _$AddIncomeDataCopyWith<$Res> {
  __$AddIncomeDataCopyWithImpl(this._self, this._then);

  final _AddIncomeData _self;
  final $Res Function(_AddIncomeData) _then;

/// Create a copy of AddIncomeData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? amount = null,Object? dateTime = null,Object? wallet = null,Object? category = null,Object? description = freezed,}) {
  return _then(_AddIncomeData(
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
mixin _$AddIncomeState {

 AddIncomeData get addIncomeData;
/// Create a copy of AddIncomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddIncomeStateCopyWith<AddIncomeState> get copyWith => _$AddIncomeStateCopyWithImpl<AddIncomeState>(this as AddIncomeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddIncomeState&&(identical(other.addIncomeData, addIncomeData) || other.addIncomeData == addIncomeData));
}


@override
int get hashCode => Object.hash(runtimeType,addIncomeData);

@override
String toString() {
  return 'AddIncomeState(addIncomeData: $addIncomeData)';
}


}

/// @nodoc
abstract mixin class $AddIncomeStateCopyWith<$Res>  {
  factory $AddIncomeStateCopyWith(AddIncomeState value, $Res Function(AddIncomeState) _then) = _$AddIncomeStateCopyWithImpl;
@useResult
$Res call({
 AddIncomeData addIncomeData
});


$AddIncomeDataCopyWith<$Res> get addIncomeData;

}
/// @nodoc
class _$AddIncomeStateCopyWithImpl<$Res>
    implements $AddIncomeStateCopyWith<$Res> {
  _$AddIncomeStateCopyWithImpl(this._self, this._then);

  final AddIncomeState _self;
  final $Res Function(AddIncomeState) _then;

/// Create a copy of AddIncomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? addIncomeData = null,}) {
  return _then(_self.copyWith(
addIncomeData: null == addIncomeData ? _self.addIncomeData : addIncomeData // ignore: cast_nullable_to_non_nullable
as AddIncomeData,
  ));
}
/// Create a copy of AddIncomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddIncomeDataCopyWith<$Res> get addIncomeData {
  
  return $AddIncomeDataCopyWith<$Res>(_self.addIncomeData, (value) {
    return _then(_self.copyWith(addIncomeData: value));
  });
}
}


/// Adds pattern-matching-related methods to [AddIncomeState].
extension AddIncomeStatePatterns on AddIncomeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( AddIncomeInitialState value)?  initial,TResult Function( AddIncomeLoadingState value)?  loading,TResult Function( AddIncomeSuccessState value)?  success,TResult Function( AddIncomeErrorState value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case AddIncomeInitialState() when initial != null:
return initial(_that);case AddIncomeLoadingState() when loading != null:
return loading(_that);case AddIncomeSuccessState() when success != null:
return success(_that);case AddIncomeErrorState() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( AddIncomeInitialState value)  initial,required TResult Function( AddIncomeLoadingState value)  loading,required TResult Function( AddIncomeSuccessState value)  success,required TResult Function( AddIncomeErrorState value)  error,}){
final _that = this;
switch (_that) {
case AddIncomeInitialState():
return initial(_that);case AddIncomeLoadingState():
return loading(_that);case AddIncomeSuccessState():
return success(_that);case AddIncomeErrorState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( AddIncomeInitialState value)?  initial,TResult? Function( AddIncomeLoadingState value)?  loading,TResult? Function( AddIncomeSuccessState value)?  success,TResult? Function( AddIncomeErrorState value)?  error,}){
final _that = this;
switch (_that) {
case AddIncomeInitialState() when initial != null:
return initial(_that);case AddIncomeLoadingState() when loading != null:
return loading(_that);case AddIncomeSuccessState() when success != null:
return success(_that);case AddIncomeErrorState() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( AddIncomeData addIncomeData)?  initial,TResult Function( AddIncomeData addIncomeData)?  loading,TResult Function( AddIncomeData addIncomeData,  String? message)?  success,TResult Function( AddIncomeData addIncomeData,  String error)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case AddIncomeInitialState() when initial != null:
return initial(_that.addIncomeData);case AddIncomeLoadingState() when loading != null:
return loading(_that.addIncomeData);case AddIncomeSuccessState() when success != null:
return success(_that.addIncomeData,_that.message);case AddIncomeErrorState() when error != null:
return error(_that.addIncomeData,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( AddIncomeData addIncomeData)  initial,required TResult Function( AddIncomeData addIncomeData)  loading,required TResult Function( AddIncomeData addIncomeData,  String? message)  success,required TResult Function( AddIncomeData addIncomeData,  String error)  error,}) {final _that = this;
switch (_that) {
case AddIncomeInitialState():
return initial(_that.addIncomeData);case AddIncomeLoadingState():
return loading(_that.addIncomeData);case AddIncomeSuccessState():
return success(_that.addIncomeData,_that.message);case AddIncomeErrorState():
return error(_that.addIncomeData,_that.error);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( AddIncomeData addIncomeData)?  initial,TResult? Function( AddIncomeData addIncomeData)?  loading,TResult? Function( AddIncomeData addIncomeData,  String? message)?  success,TResult? Function( AddIncomeData addIncomeData,  String error)?  error,}) {final _that = this;
switch (_that) {
case AddIncomeInitialState() when initial != null:
return initial(_that.addIncomeData);case AddIncomeLoadingState() when loading != null:
return loading(_that.addIncomeData);case AddIncomeSuccessState() when success != null:
return success(_that.addIncomeData,_that.message);case AddIncomeErrorState() when error != null:
return error(_that.addIncomeData,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class AddIncomeInitialState implements AddIncomeState {
  const AddIncomeInitialState({required this.addIncomeData});
  

@override final  AddIncomeData addIncomeData;

/// Create a copy of AddIncomeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddIncomeInitialStateCopyWith<AddIncomeInitialState> get copyWith => _$AddIncomeInitialStateCopyWithImpl<AddIncomeInitialState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddIncomeInitialState&&(identical(other.addIncomeData, addIncomeData) || other.addIncomeData == addIncomeData));
}


@override
int get hashCode => Object.hash(runtimeType,addIncomeData);

@override
String toString() {
  return 'AddIncomeState.initial(addIncomeData: $addIncomeData)';
}


}

/// @nodoc
abstract mixin class $AddIncomeInitialStateCopyWith<$Res> implements $AddIncomeStateCopyWith<$Res> {
  factory $AddIncomeInitialStateCopyWith(AddIncomeInitialState value, $Res Function(AddIncomeInitialState) _then) = _$AddIncomeInitialStateCopyWithImpl;
@override @useResult
$Res call({
 AddIncomeData addIncomeData
});


@override $AddIncomeDataCopyWith<$Res> get addIncomeData;

}
/// @nodoc
class _$AddIncomeInitialStateCopyWithImpl<$Res>
    implements $AddIncomeInitialStateCopyWith<$Res> {
  _$AddIncomeInitialStateCopyWithImpl(this._self, this._then);

  final AddIncomeInitialState _self;
  final $Res Function(AddIncomeInitialState) _then;

/// Create a copy of AddIncomeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? addIncomeData = null,}) {
  return _then(AddIncomeInitialState(
addIncomeData: null == addIncomeData ? _self.addIncomeData : addIncomeData // ignore: cast_nullable_to_non_nullable
as AddIncomeData,
  ));
}

/// Create a copy of AddIncomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddIncomeDataCopyWith<$Res> get addIncomeData {
  
  return $AddIncomeDataCopyWith<$Res>(_self.addIncomeData, (value) {
    return _then(_self.copyWith(addIncomeData: value));
  });
}
}

/// @nodoc


class AddIncomeLoadingState implements AddIncomeState {
  const AddIncomeLoadingState({required this.addIncomeData});
  

@override final  AddIncomeData addIncomeData;

/// Create a copy of AddIncomeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddIncomeLoadingStateCopyWith<AddIncomeLoadingState> get copyWith => _$AddIncomeLoadingStateCopyWithImpl<AddIncomeLoadingState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddIncomeLoadingState&&(identical(other.addIncomeData, addIncomeData) || other.addIncomeData == addIncomeData));
}


@override
int get hashCode => Object.hash(runtimeType,addIncomeData);

@override
String toString() {
  return 'AddIncomeState.loading(addIncomeData: $addIncomeData)';
}


}

/// @nodoc
abstract mixin class $AddIncomeLoadingStateCopyWith<$Res> implements $AddIncomeStateCopyWith<$Res> {
  factory $AddIncomeLoadingStateCopyWith(AddIncomeLoadingState value, $Res Function(AddIncomeLoadingState) _then) = _$AddIncomeLoadingStateCopyWithImpl;
@override @useResult
$Res call({
 AddIncomeData addIncomeData
});


@override $AddIncomeDataCopyWith<$Res> get addIncomeData;

}
/// @nodoc
class _$AddIncomeLoadingStateCopyWithImpl<$Res>
    implements $AddIncomeLoadingStateCopyWith<$Res> {
  _$AddIncomeLoadingStateCopyWithImpl(this._self, this._then);

  final AddIncomeLoadingState _self;
  final $Res Function(AddIncomeLoadingState) _then;

/// Create a copy of AddIncomeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? addIncomeData = null,}) {
  return _then(AddIncomeLoadingState(
addIncomeData: null == addIncomeData ? _self.addIncomeData : addIncomeData // ignore: cast_nullable_to_non_nullable
as AddIncomeData,
  ));
}

/// Create a copy of AddIncomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddIncomeDataCopyWith<$Res> get addIncomeData {
  
  return $AddIncomeDataCopyWith<$Res>(_self.addIncomeData, (value) {
    return _then(_self.copyWith(addIncomeData: value));
  });
}
}

/// @nodoc


class AddIncomeSuccessState implements AddIncomeState {
  const AddIncomeSuccessState({required this.addIncomeData, this.message});
  

@override final  AddIncomeData addIncomeData;
 final  String? message;

/// Create a copy of AddIncomeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddIncomeSuccessStateCopyWith<AddIncomeSuccessState> get copyWith => _$AddIncomeSuccessStateCopyWithImpl<AddIncomeSuccessState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddIncomeSuccessState&&(identical(other.addIncomeData, addIncomeData) || other.addIncomeData == addIncomeData)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,addIncomeData,message);

@override
String toString() {
  return 'AddIncomeState.success(addIncomeData: $addIncomeData, message: $message)';
}


}

/// @nodoc
abstract mixin class $AddIncomeSuccessStateCopyWith<$Res> implements $AddIncomeStateCopyWith<$Res> {
  factory $AddIncomeSuccessStateCopyWith(AddIncomeSuccessState value, $Res Function(AddIncomeSuccessState) _then) = _$AddIncomeSuccessStateCopyWithImpl;
@override @useResult
$Res call({
 AddIncomeData addIncomeData, String? message
});


@override $AddIncomeDataCopyWith<$Res> get addIncomeData;

}
/// @nodoc
class _$AddIncomeSuccessStateCopyWithImpl<$Res>
    implements $AddIncomeSuccessStateCopyWith<$Res> {
  _$AddIncomeSuccessStateCopyWithImpl(this._self, this._then);

  final AddIncomeSuccessState _self;
  final $Res Function(AddIncomeSuccessState) _then;

/// Create a copy of AddIncomeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? addIncomeData = null,Object? message = freezed,}) {
  return _then(AddIncomeSuccessState(
addIncomeData: null == addIncomeData ? _self.addIncomeData : addIncomeData // ignore: cast_nullable_to_non_nullable
as AddIncomeData,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of AddIncomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddIncomeDataCopyWith<$Res> get addIncomeData {
  
  return $AddIncomeDataCopyWith<$Res>(_self.addIncomeData, (value) {
    return _then(_self.copyWith(addIncomeData: value));
  });
}
}

/// @nodoc


class AddIncomeErrorState implements AddIncomeState {
  const AddIncomeErrorState({required this.addIncomeData, required this.error});
  

@override final  AddIncomeData addIncomeData;
 final  String error;

/// Create a copy of AddIncomeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddIncomeErrorStateCopyWith<AddIncomeErrorState> get copyWith => _$AddIncomeErrorStateCopyWithImpl<AddIncomeErrorState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddIncomeErrorState&&(identical(other.addIncomeData, addIncomeData) || other.addIncomeData == addIncomeData)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,addIncomeData,error);

@override
String toString() {
  return 'AddIncomeState.error(addIncomeData: $addIncomeData, error: $error)';
}


}

/// @nodoc
abstract mixin class $AddIncomeErrorStateCopyWith<$Res> implements $AddIncomeStateCopyWith<$Res> {
  factory $AddIncomeErrorStateCopyWith(AddIncomeErrorState value, $Res Function(AddIncomeErrorState) _then) = _$AddIncomeErrorStateCopyWithImpl;
@override @useResult
$Res call({
 AddIncomeData addIncomeData, String error
});


@override $AddIncomeDataCopyWith<$Res> get addIncomeData;

}
/// @nodoc
class _$AddIncomeErrorStateCopyWithImpl<$Res>
    implements $AddIncomeErrorStateCopyWith<$Res> {
  _$AddIncomeErrorStateCopyWithImpl(this._self, this._then);

  final AddIncomeErrorState _self;
  final $Res Function(AddIncomeErrorState) _then;

/// Create a copy of AddIncomeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? addIncomeData = null,Object? error = null,}) {
  return _then(AddIncomeErrorState(
addIncomeData: null == addIncomeData ? _self.addIncomeData : addIncomeData // ignore: cast_nullable_to_non_nullable
as AddIncomeData,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of AddIncomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddIncomeDataCopyWith<$Res> get addIncomeData {
  
  return $AddIncomeDataCopyWith<$Res>(_self.addIncomeData, (value) {
    return _then(_self.copyWith(addIncomeData: value));
  });
}
}

// dart format on
