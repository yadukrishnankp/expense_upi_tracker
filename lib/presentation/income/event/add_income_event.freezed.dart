// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_income_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AddIncomeEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddIncomeEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddIncomeEvent()';
}


}

/// @nodoc
class $AddIncomeEventCopyWith<$Res>  {
$AddIncomeEventCopyWith(AddIncomeEvent _, $Res Function(AddIncomeEvent) __);
}


/// Adds pattern-matching-related methods to [AddIncomeEvent].
extension AddIncomeEventPatterns on AddIncomeEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( IncomeAddEvent value)?  addIncome,TResult Function( AddIncomeAmountChangeEvent value)?  onAmountChange,TResult Function( AddIncomeCategoryChangeEvent value)?  onCategoryChange,TResult Function( AddIncomeWalletChangeEvent value)?  onWalletChange,TResult Function( AddIncomeDateTimeChangeEvent value)?  onDateTimeChange,TResult Function( AddIncomeDescChangeEvent value)?  onDescriptionChange,required TResult orElse(),}){
final _that = this;
switch (_that) {
case IncomeAddEvent() when addIncome != null:
return addIncome(_that);case AddIncomeAmountChangeEvent() when onAmountChange != null:
return onAmountChange(_that);case AddIncomeCategoryChangeEvent() when onCategoryChange != null:
return onCategoryChange(_that);case AddIncomeWalletChangeEvent() when onWalletChange != null:
return onWalletChange(_that);case AddIncomeDateTimeChangeEvent() when onDateTimeChange != null:
return onDateTimeChange(_that);case AddIncomeDescChangeEvent() when onDescriptionChange != null:
return onDescriptionChange(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( IncomeAddEvent value)  addIncome,required TResult Function( AddIncomeAmountChangeEvent value)  onAmountChange,required TResult Function( AddIncomeCategoryChangeEvent value)  onCategoryChange,required TResult Function( AddIncomeWalletChangeEvent value)  onWalletChange,required TResult Function( AddIncomeDateTimeChangeEvent value)  onDateTimeChange,required TResult Function( AddIncomeDescChangeEvent value)  onDescriptionChange,}){
final _that = this;
switch (_that) {
case IncomeAddEvent():
return addIncome(_that);case AddIncomeAmountChangeEvent():
return onAmountChange(_that);case AddIncomeCategoryChangeEvent():
return onCategoryChange(_that);case AddIncomeWalletChangeEvent():
return onWalletChange(_that);case AddIncomeDateTimeChangeEvent():
return onDateTimeChange(_that);case AddIncomeDescChangeEvent():
return onDescriptionChange(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( IncomeAddEvent value)?  addIncome,TResult? Function( AddIncomeAmountChangeEvent value)?  onAmountChange,TResult? Function( AddIncomeCategoryChangeEvent value)?  onCategoryChange,TResult? Function( AddIncomeWalletChangeEvent value)?  onWalletChange,TResult? Function( AddIncomeDateTimeChangeEvent value)?  onDateTimeChange,TResult? Function( AddIncomeDescChangeEvent value)?  onDescriptionChange,}){
final _that = this;
switch (_that) {
case IncomeAddEvent() when addIncome != null:
return addIncome(_that);case AddIncomeAmountChangeEvent() when onAmountChange != null:
return onAmountChange(_that);case AddIncomeCategoryChangeEvent() when onCategoryChange != null:
return onCategoryChange(_that);case AddIncomeWalletChangeEvent() when onWalletChange != null:
return onWalletChange(_that);case AddIncomeDateTimeChangeEvent() when onDateTimeChange != null:
return onDateTimeChange(_that);case AddIncomeDescChangeEvent() when onDescriptionChange != null:
return onDescriptionChange(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  addIncome,TResult Function( String amount)?  onAmountChange,TResult Function( String category)?  onCategoryChange,TResult Function( String wallet)?  onWalletChange,TResult Function( DateTime dataTime)?  onDateTimeChange,TResult Function( String description)?  onDescriptionChange,required TResult orElse(),}) {final _that = this;
switch (_that) {
case IncomeAddEvent() when addIncome != null:
return addIncome();case AddIncomeAmountChangeEvent() when onAmountChange != null:
return onAmountChange(_that.amount);case AddIncomeCategoryChangeEvent() when onCategoryChange != null:
return onCategoryChange(_that.category);case AddIncomeWalletChangeEvent() when onWalletChange != null:
return onWalletChange(_that.wallet);case AddIncomeDateTimeChangeEvent() when onDateTimeChange != null:
return onDateTimeChange(_that.dataTime);case AddIncomeDescChangeEvent() when onDescriptionChange != null:
return onDescriptionChange(_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  addIncome,required TResult Function( String amount)  onAmountChange,required TResult Function( String category)  onCategoryChange,required TResult Function( String wallet)  onWalletChange,required TResult Function( DateTime dataTime)  onDateTimeChange,required TResult Function( String description)  onDescriptionChange,}) {final _that = this;
switch (_that) {
case IncomeAddEvent():
return addIncome();case AddIncomeAmountChangeEvent():
return onAmountChange(_that.amount);case AddIncomeCategoryChangeEvent():
return onCategoryChange(_that.category);case AddIncomeWalletChangeEvent():
return onWalletChange(_that.wallet);case AddIncomeDateTimeChangeEvent():
return onDateTimeChange(_that.dataTime);case AddIncomeDescChangeEvent():
return onDescriptionChange(_that.description);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  addIncome,TResult? Function( String amount)?  onAmountChange,TResult? Function( String category)?  onCategoryChange,TResult? Function( String wallet)?  onWalletChange,TResult? Function( DateTime dataTime)?  onDateTimeChange,TResult? Function( String description)?  onDescriptionChange,}) {final _that = this;
switch (_that) {
case IncomeAddEvent() when addIncome != null:
return addIncome();case AddIncomeAmountChangeEvent() when onAmountChange != null:
return onAmountChange(_that.amount);case AddIncomeCategoryChangeEvent() when onCategoryChange != null:
return onCategoryChange(_that.category);case AddIncomeWalletChangeEvent() when onWalletChange != null:
return onWalletChange(_that.wallet);case AddIncomeDateTimeChangeEvent() when onDateTimeChange != null:
return onDateTimeChange(_that.dataTime);case AddIncomeDescChangeEvent() when onDescriptionChange != null:
return onDescriptionChange(_that.description);case _:
  return null;

}
}

}

/// @nodoc


class IncomeAddEvent implements AddIncomeEvent {
  const IncomeAddEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IncomeAddEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddIncomeEvent.addIncome()';
}


}




/// @nodoc


class AddIncomeAmountChangeEvent implements AddIncomeEvent {
  const AddIncomeAmountChangeEvent(this.amount);
  

 final  String amount;

/// Create a copy of AddIncomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddIncomeAmountChangeEventCopyWith<AddIncomeAmountChangeEvent> get copyWith => _$AddIncomeAmountChangeEventCopyWithImpl<AddIncomeAmountChangeEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddIncomeAmountChangeEvent&&(identical(other.amount, amount) || other.amount == amount));
}


@override
int get hashCode => Object.hash(runtimeType,amount);

@override
String toString() {
  return 'AddIncomeEvent.onAmountChange(amount: $amount)';
}


}

/// @nodoc
abstract mixin class $AddIncomeAmountChangeEventCopyWith<$Res> implements $AddIncomeEventCopyWith<$Res> {
  factory $AddIncomeAmountChangeEventCopyWith(AddIncomeAmountChangeEvent value, $Res Function(AddIncomeAmountChangeEvent) _then) = _$AddIncomeAmountChangeEventCopyWithImpl;
@useResult
$Res call({
 String amount
});




}
/// @nodoc
class _$AddIncomeAmountChangeEventCopyWithImpl<$Res>
    implements $AddIncomeAmountChangeEventCopyWith<$Res> {
  _$AddIncomeAmountChangeEventCopyWithImpl(this._self, this._then);

  final AddIncomeAmountChangeEvent _self;
  final $Res Function(AddIncomeAmountChangeEvent) _then;

/// Create a copy of AddIncomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? amount = null,}) {
  return _then(AddIncomeAmountChangeEvent(
null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class AddIncomeCategoryChangeEvent implements AddIncomeEvent {
  const AddIncomeCategoryChangeEvent(this.category);
  

 final  String category;

/// Create a copy of AddIncomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddIncomeCategoryChangeEventCopyWith<AddIncomeCategoryChangeEvent> get copyWith => _$AddIncomeCategoryChangeEventCopyWithImpl<AddIncomeCategoryChangeEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddIncomeCategoryChangeEvent&&(identical(other.category, category) || other.category == category));
}


@override
int get hashCode => Object.hash(runtimeType,category);

@override
String toString() {
  return 'AddIncomeEvent.onCategoryChange(category: $category)';
}


}

/// @nodoc
abstract mixin class $AddIncomeCategoryChangeEventCopyWith<$Res> implements $AddIncomeEventCopyWith<$Res> {
  factory $AddIncomeCategoryChangeEventCopyWith(AddIncomeCategoryChangeEvent value, $Res Function(AddIncomeCategoryChangeEvent) _then) = _$AddIncomeCategoryChangeEventCopyWithImpl;
@useResult
$Res call({
 String category
});




}
/// @nodoc
class _$AddIncomeCategoryChangeEventCopyWithImpl<$Res>
    implements $AddIncomeCategoryChangeEventCopyWith<$Res> {
  _$AddIncomeCategoryChangeEventCopyWithImpl(this._self, this._then);

  final AddIncomeCategoryChangeEvent _self;
  final $Res Function(AddIncomeCategoryChangeEvent) _then;

/// Create a copy of AddIncomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? category = null,}) {
  return _then(AddIncomeCategoryChangeEvent(
null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class AddIncomeWalletChangeEvent implements AddIncomeEvent {
  const AddIncomeWalletChangeEvent(this.wallet);
  

 final  String wallet;

/// Create a copy of AddIncomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddIncomeWalletChangeEventCopyWith<AddIncomeWalletChangeEvent> get copyWith => _$AddIncomeWalletChangeEventCopyWithImpl<AddIncomeWalletChangeEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddIncomeWalletChangeEvent&&(identical(other.wallet, wallet) || other.wallet == wallet));
}


@override
int get hashCode => Object.hash(runtimeType,wallet);

@override
String toString() {
  return 'AddIncomeEvent.onWalletChange(wallet: $wallet)';
}


}

/// @nodoc
abstract mixin class $AddIncomeWalletChangeEventCopyWith<$Res> implements $AddIncomeEventCopyWith<$Res> {
  factory $AddIncomeWalletChangeEventCopyWith(AddIncomeWalletChangeEvent value, $Res Function(AddIncomeWalletChangeEvent) _then) = _$AddIncomeWalletChangeEventCopyWithImpl;
@useResult
$Res call({
 String wallet
});




}
/// @nodoc
class _$AddIncomeWalletChangeEventCopyWithImpl<$Res>
    implements $AddIncomeWalletChangeEventCopyWith<$Res> {
  _$AddIncomeWalletChangeEventCopyWithImpl(this._self, this._then);

  final AddIncomeWalletChangeEvent _self;
  final $Res Function(AddIncomeWalletChangeEvent) _then;

/// Create a copy of AddIncomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? wallet = null,}) {
  return _then(AddIncomeWalletChangeEvent(
null == wallet ? _self.wallet : wallet // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class AddIncomeDateTimeChangeEvent implements AddIncomeEvent {
  const AddIncomeDateTimeChangeEvent(this.dataTime);
  

 final  DateTime dataTime;

/// Create a copy of AddIncomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddIncomeDateTimeChangeEventCopyWith<AddIncomeDateTimeChangeEvent> get copyWith => _$AddIncomeDateTimeChangeEventCopyWithImpl<AddIncomeDateTimeChangeEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddIncomeDateTimeChangeEvent&&(identical(other.dataTime, dataTime) || other.dataTime == dataTime));
}


@override
int get hashCode => Object.hash(runtimeType,dataTime);

@override
String toString() {
  return 'AddIncomeEvent.onDateTimeChange(dataTime: $dataTime)';
}


}

/// @nodoc
abstract mixin class $AddIncomeDateTimeChangeEventCopyWith<$Res> implements $AddIncomeEventCopyWith<$Res> {
  factory $AddIncomeDateTimeChangeEventCopyWith(AddIncomeDateTimeChangeEvent value, $Res Function(AddIncomeDateTimeChangeEvent) _then) = _$AddIncomeDateTimeChangeEventCopyWithImpl;
@useResult
$Res call({
 DateTime dataTime
});




}
/// @nodoc
class _$AddIncomeDateTimeChangeEventCopyWithImpl<$Res>
    implements $AddIncomeDateTimeChangeEventCopyWith<$Res> {
  _$AddIncomeDateTimeChangeEventCopyWithImpl(this._self, this._then);

  final AddIncomeDateTimeChangeEvent _self;
  final $Res Function(AddIncomeDateTimeChangeEvent) _then;

/// Create a copy of AddIncomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? dataTime = null,}) {
  return _then(AddIncomeDateTimeChangeEvent(
null == dataTime ? _self.dataTime : dataTime // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

/// @nodoc


class AddIncomeDescChangeEvent implements AddIncomeEvent {
  const AddIncomeDescChangeEvent(this.description);
  

 final  String description;

/// Create a copy of AddIncomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddIncomeDescChangeEventCopyWith<AddIncomeDescChangeEvent> get copyWith => _$AddIncomeDescChangeEventCopyWithImpl<AddIncomeDescChangeEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddIncomeDescChangeEvent&&(identical(other.description, description) || other.description == description));
}


@override
int get hashCode => Object.hash(runtimeType,description);

@override
String toString() {
  return 'AddIncomeEvent.onDescriptionChange(description: $description)';
}


}

/// @nodoc
abstract mixin class $AddIncomeDescChangeEventCopyWith<$Res> implements $AddIncomeEventCopyWith<$Res> {
  factory $AddIncomeDescChangeEventCopyWith(AddIncomeDescChangeEvent value, $Res Function(AddIncomeDescChangeEvent) _then) = _$AddIncomeDescChangeEventCopyWithImpl;
@useResult
$Res call({
 String description
});




}
/// @nodoc
class _$AddIncomeDescChangeEventCopyWithImpl<$Res>
    implements $AddIncomeDescChangeEventCopyWith<$Res> {
  _$AddIncomeDescChangeEventCopyWithImpl(this._self, this._then);

  final AddIncomeDescChangeEvent _self;
  final $Res Function(AddIncomeDescChangeEvent) _then;

/// Create a copy of AddIncomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? description = null,}) {
  return _then(AddIncomeDescChangeEvent(
null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
