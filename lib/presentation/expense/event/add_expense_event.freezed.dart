// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_expense_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AddExpenseEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddExpenseEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddExpenseEvent()';
}


}

/// @nodoc
class $AddExpenseEventCopyWith<$Res>  {
$AddExpenseEventCopyWith(AddExpenseEvent _, $Res Function(AddExpenseEvent) __);
}


/// Adds pattern-matching-related methods to [AddExpenseEvent].
extension AddExpenseEventPatterns on AddExpenseEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ExpenseAddEvent value)?  addExpense,TResult Function( AddExpenseAmountChangeEvent value)?  onAmountChange,TResult Function( AddExpenseCategoryChangeEvent value)?  onCategoryChange,TResult Function( AddExpenseWalletChangeEvent value)?  onWalletChange,TResult Function( AddExpenseDateTimeChangeEvent value)?  onDateTimeChange,TResult Function( AddExpenseDescChangeEvent value)?  onDescriptionChange,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ExpenseAddEvent() when addExpense != null:
return addExpense(_that);case AddExpenseAmountChangeEvent() when onAmountChange != null:
return onAmountChange(_that);case AddExpenseCategoryChangeEvent() when onCategoryChange != null:
return onCategoryChange(_that);case AddExpenseWalletChangeEvent() when onWalletChange != null:
return onWalletChange(_that);case AddExpenseDateTimeChangeEvent() when onDateTimeChange != null:
return onDateTimeChange(_that);case AddExpenseDescChangeEvent() when onDescriptionChange != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ExpenseAddEvent value)  addExpense,required TResult Function( AddExpenseAmountChangeEvent value)  onAmountChange,required TResult Function( AddExpenseCategoryChangeEvent value)  onCategoryChange,required TResult Function( AddExpenseWalletChangeEvent value)  onWalletChange,required TResult Function( AddExpenseDateTimeChangeEvent value)  onDateTimeChange,required TResult Function( AddExpenseDescChangeEvent value)  onDescriptionChange,}){
final _that = this;
switch (_that) {
case ExpenseAddEvent():
return addExpense(_that);case AddExpenseAmountChangeEvent():
return onAmountChange(_that);case AddExpenseCategoryChangeEvent():
return onCategoryChange(_that);case AddExpenseWalletChangeEvent():
return onWalletChange(_that);case AddExpenseDateTimeChangeEvent():
return onDateTimeChange(_that);case AddExpenseDescChangeEvent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ExpenseAddEvent value)?  addExpense,TResult? Function( AddExpenseAmountChangeEvent value)?  onAmountChange,TResult? Function( AddExpenseCategoryChangeEvent value)?  onCategoryChange,TResult? Function( AddExpenseWalletChangeEvent value)?  onWalletChange,TResult? Function( AddExpenseDateTimeChangeEvent value)?  onDateTimeChange,TResult? Function( AddExpenseDescChangeEvent value)?  onDescriptionChange,}){
final _that = this;
switch (_that) {
case ExpenseAddEvent() when addExpense != null:
return addExpense(_that);case AddExpenseAmountChangeEvent() when onAmountChange != null:
return onAmountChange(_that);case AddExpenseCategoryChangeEvent() when onCategoryChange != null:
return onCategoryChange(_that);case AddExpenseWalletChangeEvent() when onWalletChange != null:
return onWalletChange(_that);case AddExpenseDateTimeChangeEvent() when onDateTimeChange != null:
return onDateTimeChange(_that);case AddExpenseDescChangeEvent() when onDescriptionChange != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  addExpense,TResult Function( String amount)?  onAmountChange,TResult Function( String category)?  onCategoryChange,TResult Function( String wallet)?  onWalletChange,TResult Function( DateTime dateTime)?  onDateTimeChange,TResult Function( String description)?  onDescriptionChange,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ExpenseAddEvent() when addExpense != null:
return addExpense();case AddExpenseAmountChangeEvent() when onAmountChange != null:
return onAmountChange(_that.amount);case AddExpenseCategoryChangeEvent() when onCategoryChange != null:
return onCategoryChange(_that.category);case AddExpenseWalletChangeEvent() when onWalletChange != null:
return onWalletChange(_that.wallet);case AddExpenseDateTimeChangeEvent() when onDateTimeChange != null:
return onDateTimeChange(_that.dateTime);case AddExpenseDescChangeEvent() when onDescriptionChange != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  addExpense,required TResult Function( String amount)  onAmountChange,required TResult Function( String category)  onCategoryChange,required TResult Function( String wallet)  onWalletChange,required TResult Function( DateTime dateTime)  onDateTimeChange,required TResult Function( String description)  onDescriptionChange,}) {final _that = this;
switch (_that) {
case ExpenseAddEvent():
return addExpense();case AddExpenseAmountChangeEvent():
return onAmountChange(_that.amount);case AddExpenseCategoryChangeEvent():
return onCategoryChange(_that.category);case AddExpenseWalletChangeEvent():
return onWalletChange(_that.wallet);case AddExpenseDateTimeChangeEvent():
return onDateTimeChange(_that.dateTime);case AddExpenseDescChangeEvent():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  addExpense,TResult? Function( String amount)?  onAmountChange,TResult? Function( String category)?  onCategoryChange,TResult? Function( String wallet)?  onWalletChange,TResult? Function( DateTime dateTime)?  onDateTimeChange,TResult? Function( String description)?  onDescriptionChange,}) {final _that = this;
switch (_that) {
case ExpenseAddEvent() when addExpense != null:
return addExpense();case AddExpenseAmountChangeEvent() when onAmountChange != null:
return onAmountChange(_that.amount);case AddExpenseCategoryChangeEvent() when onCategoryChange != null:
return onCategoryChange(_that.category);case AddExpenseWalletChangeEvent() when onWalletChange != null:
return onWalletChange(_that.wallet);case AddExpenseDateTimeChangeEvent() when onDateTimeChange != null:
return onDateTimeChange(_that.dateTime);case AddExpenseDescChangeEvent() when onDescriptionChange != null:
return onDescriptionChange(_that.description);case _:
  return null;

}
}

}

/// @nodoc


class ExpenseAddEvent implements AddExpenseEvent {
  const ExpenseAddEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExpenseAddEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddExpenseEvent.addExpense()';
}


}




/// @nodoc


class AddExpenseAmountChangeEvent implements AddExpenseEvent {
  const AddExpenseAmountChangeEvent(this.amount);
  

 final  String amount;

/// Create a copy of AddExpenseEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddExpenseAmountChangeEventCopyWith<AddExpenseAmountChangeEvent> get copyWith => _$AddExpenseAmountChangeEventCopyWithImpl<AddExpenseAmountChangeEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddExpenseAmountChangeEvent&&(identical(other.amount, amount) || other.amount == amount));
}


@override
int get hashCode => Object.hash(runtimeType,amount);

@override
String toString() {
  return 'AddExpenseEvent.onAmountChange(amount: $amount)';
}


}

/// @nodoc
abstract mixin class $AddExpenseAmountChangeEventCopyWith<$Res> implements $AddExpenseEventCopyWith<$Res> {
  factory $AddExpenseAmountChangeEventCopyWith(AddExpenseAmountChangeEvent value, $Res Function(AddExpenseAmountChangeEvent) _then) = _$AddExpenseAmountChangeEventCopyWithImpl;
@useResult
$Res call({
 String amount
});




}
/// @nodoc
class _$AddExpenseAmountChangeEventCopyWithImpl<$Res>
    implements $AddExpenseAmountChangeEventCopyWith<$Res> {
  _$AddExpenseAmountChangeEventCopyWithImpl(this._self, this._then);

  final AddExpenseAmountChangeEvent _self;
  final $Res Function(AddExpenseAmountChangeEvent) _then;

/// Create a copy of AddExpenseEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? amount = null,}) {
  return _then(AddExpenseAmountChangeEvent(
null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class AddExpenseCategoryChangeEvent implements AddExpenseEvent {
  const AddExpenseCategoryChangeEvent(this.category);
  

 final  String category;

/// Create a copy of AddExpenseEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddExpenseCategoryChangeEventCopyWith<AddExpenseCategoryChangeEvent> get copyWith => _$AddExpenseCategoryChangeEventCopyWithImpl<AddExpenseCategoryChangeEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddExpenseCategoryChangeEvent&&(identical(other.category, category) || other.category == category));
}


@override
int get hashCode => Object.hash(runtimeType,category);

@override
String toString() {
  return 'AddExpenseEvent.onCategoryChange(category: $category)';
}


}

/// @nodoc
abstract mixin class $AddExpenseCategoryChangeEventCopyWith<$Res> implements $AddExpenseEventCopyWith<$Res> {
  factory $AddExpenseCategoryChangeEventCopyWith(AddExpenseCategoryChangeEvent value, $Res Function(AddExpenseCategoryChangeEvent) _then) = _$AddExpenseCategoryChangeEventCopyWithImpl;
@useResult
$Res call({
 String category
});




}
/// @nodoc
class _$AddExpenseCategoryChangeEventCopyWithImpl<$Res>
    implements $AddExpenseCategoryChangeEventCopyWith<$Res> {
  _$AddExpenseCategoryChangeEventCopyWithImpl(this._self, this._then);

  final AddExpenseCategoryChangeEvent _self;
  final $Res Function(AddExpenseCategoryChangeEvent) _then;

/// Create a copy of AddExpenseEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? category = null,}) {
  return _then(AddExpenseCategoryChangeEvent(
null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class AddExpenseWalletChangeEvent implements AddExpenseEvent {
  const AddExpenseWalletChangeEvent(this.wallet);
  

 final  String wallet;

/// Create a copy of AddExpenseEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddExpenseWalletChangeEventCopyWith<AddExpenseWalletChangeEvent> get copyWith => _$AddExpenseWalletChangeEventCopyWithImpl<AddExpenseWalletChangeEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddExpenseWalletChangeEvent&&(identical(other.wallet, wallet) || other.wallet == wallet));
}


@override
int get hashCode => Object.hash(runtimeType,wallet);

@override
String toString() {
  return 'AddExpenseEvent.onWalletChange(wallet: $wallet)';
}


}

/// @nodoc
abstract mixin class $AddExpenseWalletChangeEventCopyWith<$Res> implements $AddExpenseEventCopyWith<$Res> {
  factory $AddExpenseWalletChangeEventCopyWith(AddExpenseWalletChangeEvent value, $Res Function(AddExpenseWalletChangeEvent) _then) = _$AddExpenseWalletChangeEventCopyWithImpl;
@useResult
$Res call({
 String wallet
});




}
/// @nodoc
class _$AddExpenseWalletChangeEventCopyWithImpl<$Res>
    implements $AddExpenseWalletChangeEventCopyWith<$Res> {
  _$AddExpenseWalletChangeEventCopyWithImpl(this._self, this._then);

  final AddExpenseWalletChangeEvent _self;
  final $Res Function(AddExpenseWalletChangeEvent) _then;

/// Create a copy of AddExpenseEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? wallet = null,}) {
  return _then(AddExpenseWalletChangeEvent(
null == wallet ? _self.wallet : wallet // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class AddExpenseDateTimeChangeEvent implements AddExpenseEvent {
  const AddExpenseDateTimeChangeEvent(this.dateTime);
  

 final  DateTime dateTime;

/// Create a copy of AddExpenseEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddExpenseDateTimeChangeEventCopyWith<AddExpenseDateTimeChangeEvent> get copyWith => _$AddExpenseDateTimeChangeEventCopyWithImpl<AddExpenseDateTimeChangeEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddExpenseDateTimeChangeEvent&&(identical(other.dateTime, dateTime) || other.dateTime == dateTime));
}


@override
int get hashCode => Object.hash(runtimeType,dateTime);

@override
String toString() {
  return 'AddExpenseEvent.onDateTimeChange(dateTime: $dateTime)';
}


}

/// @nodoc
abstract mixin class $AddExpenseDateTimeChangeEventCopyWith<$Res> implements $AddExpenseEventCopyWith<$Res> {
  factory $AddExpenseDateTimeChangeEventCopyWith(AddExpenseDateTimeChangeEvent value, $Res Function(AddExpenseDateTimeChangeEvent) _then) = _$AddExpenseDateTimeChangeEventCopyWithImpl;
@useResult
$Res call({
 DateTime dateTime
});




}
/// @nodoc
class _$AddExpenseDateTimeChangeEventCopyWithImpl<$Res>
    implements $AddExpenseDateTimeChangeEventCopyWith<$Res> {
  _$AddExpenseDateTimeChangeEventCopyWithImpl(this._self, this._then);

  final AddExpenseDateTimeChangeEvent _self;
  final $Res Function(AddExpenseDateTimeChangeEvent) _then;

/// Create a copy of AddExpenseEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? dateTime = null,}) {
  return _then(AddExpenseDateTimeChangeEvent(
null == dateTime ? _self.dateTime : dateTime // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

/// @nodoc


class AddExpenseDescChangeEvent implements AddExpenseEvent {
  const AddExpenseDescChangeEvent(this.description);
  

 final  String description;

/// Create a copy of AddExpenseEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddExpenseDescChangeEventCopyWith<AddExpenseDescChangeEvent> get copyWith => _$AddExpenseDescChangeEventCopyWithImpl<AddExpenseDescChangeEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddExpenseDescChangeEvent&&(identical(other.description, description) || other.description == description));
}


@override
int get hashCode => Object.hash(runtimeType,description);

@override
String toString() {
  return 'AddExpenseEvent.onDescriptionChange(description: $description)';
}


}

/// @nodoc
abstract mixin class $AddExpenseDescChangeEventCopyWith<$Res> implements $AddExpenseEventCopyWith<$Res> {
  factory $AddExpenseDescChangeEventCopyWith(AddExpenseDescChangeEvent value, $Res Function(AddExpenseDescChangeEvent) _then) = _$AddExpenseDescChangeEventCopyWithImpl;
@useResult
$Res call({
 String description
});




}
/// @nodoc
class _$AddExpenseDescChangeEventCopyWithImpl<$Res>
    implements $AddExpenseDescChangeEventCopyWith<$Res> {
  _$AddExpenseDescChangeEventCopyWithImpl(this._self, this._then);

  final AddExpenseDescChangeEvent _self;
  final $Res Function(AddExpenseDescChangeEvent) _then;

/// Create a copy of AddExpenseEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? description = null,}) {
  return _then(AddExpenseDescChangeEvent(
null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
