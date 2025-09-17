// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TransactionEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TransactionEvent()';
}


}

/// @nodoc
class $TransactionEventCopyWith<$Res>  {
$TransactionEventCopyWith(TransactionEvent _, $Res Function(TransactionEvent) __);
}


/// Adds pattern-matching-related methods to [TransactionEvent].
extension TransactionEventPatterns on TransactionEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( FilterTypeChangeEvent value)?  onFilterTypeChangeEvent,TResult Function( FilterWalletChangeEvent value)?  onFilterWalletChangeEvent,TResult Function( FilterCategoryChangeEvent value)?  onFilterCategoryChangeEvent,TResult Function( SortByDateChangeEvent value)?  onSortByDateChangeEvent,TResult Function( ResetEvent value)?  onReset,TResult Function( DateChangeEvent value)?  onDateChange,TResult Function( GetTransactionEvent value)?  onGetTransaction,required TResult orElse(),}){
final _that = this;
switch (_that) {
case FilterTypeChangeEvent() when onFilterTypeChangeEvent != null:
return onFilterTypeChangeEvent(_that);case FilterWalletChangeEvent() when onFilterWalletChangeEvent != null:
return onFilterWalletChangeEvent(_that);case FilterCategoryChangeEvent() when onFilterCategoryChangeEvent != null:
return onFilterCategoryChangeEvent(_that);case SortByDateChangeEvent() when onSortByDateChangeEvent != null:
return onSortByDateChangeEvent(_that);case ResetEvent() when onReset != null:
return onReset(_that);case DateChangeEvent() when onDateChange != null:
return onDateChange(_that);case GetTransactionEvent() when onGetTransaction != null:
return onGetTransaction(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( FilterTypeChangeEvent value)  onFilterTypeChangeEvent,required TResult Function( FilterWalletChangeEvent value)  onFilterWalletChangeEvent,required TResult Function( FilterCategoryChangeEvent value)  onFilterCategoryChangeEvent,required TResult Function( SortByDateChangeEvent value)  onSortByDateChangeEvent,required TResult Function( ResetEvent value)  onReset,required TResult Function( DateChangeEvent value)  onDateChange,required TResult Function( GetTransactionEvent value)  onGetTransaction,}){
final _that = this;
switch (_that) {
case FilterTypeChangeEvent():
return onFilterTypeChangeEvent(_that);case FilterWalletChangeEvent():
return onFilterWalletChangeEvent(_that);case FilterCategoryChangeEvent():
return onFilterCategoryChangeEvent(_that);case SortByDateChangeEvent():
return onSortByDateChangeEvent(_that);case ResetEvent():
return onReset(_that);case DateChangeEvent():
return onDateChange(_that);case GetTransactionEvent():
return onGetTransaction(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( FilterTypeChangeEvent value)?  onFilterTypeChangeEvent,TResult? Function( FilterWalletChangeEvent value)?  onFilterWalletChangeEvent,TResult? Function( FilterCategoryChangeEvent value)?  onFilterCategoryChangeEvent,TResult? Function( SortByDateChangeEvent value)?  onSortByDateChangeEvent,TResult? Function( ResetEvent value)?  onReset,TResult? Function( DateChangeEvent value)?  onDateChange,TResult? Function( GetTransactionEvent value)?  onGetTransaction,}){
final _that = this;
switch (_that) {
case FilterTypeChangeEvent() when onFilterTypeChangeEvent != null:
return onFilterTypeChangeEvent(_that);case FilterWalletChangeEvent() when onFilterWalletChangeEvent != null:
return onFilterWalletChangeEvent(_that);case FilterCategoryChangeEvent() when onFilterCategoryChangeEvent != null:
return onFilterCategoryChangeEvent(_that);case SortByDateChangeEvent() when onSortByDateChangeEvent != null:
return onSortByDateChangeEvent(_that);case ResetEvent() when onReset != null:
return onReset(_that);case DateChangeEvent() when onDateChange != null:
return onDateChange(_that);case GetTransactionEvent() when onGetTransaction != null:
return onGetTransaction(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String name)?  onFilterTypeChangeEvent,TResult Function( String name)?  onFilterWalletChangeEvent,TResult Function( String name)?  onFilterCategoryChangeEvent,TResult Function( String name)?  onSortByDateChangeEvent,TResult Function()?  onReset,TResult Function( DateTime date)?  onDateChange,TResult Function()?  onGetTransaction,required TResult orElse(),}) {final _that = this;
switch (_that) {
case FilterTypeChangeEvent() when onFilterTypeChangeEvent != null:
return onFilterTypeChangeEvent(_that.name);case FilterWalletChangeEvent() when onFilterWalletChangeEvent != null:
return onFilterWalletChangeEvent(_that.name);case FilterCategoryChangeEvent() when onFilterCategoryChangeEvent != null:
return onFilterCategoryChangeEvent(_that.name);case SortByDateChangeEvent() when onSortByDateChangeEvent != null:
return onSortByDateChangeEvent(_that.name);case ResetEvent() when onReset != null:
return onReset();case DateChangeEvent() when onDateChange != null:
return onDateChange(_that.date);case GetTransactionEvent() when onGetTransaction != null:
return onGetTransaction();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String name)  onFilterTypeChangeEvent,required TResult Function( String name)  onFilterWalletChangeEvent,required TResult Function( String name)  onFilterCategoryChangeEvent,required TResult Function( String name)  onSortByDateChangeEvent,required TResult Function()  onReset,required TResult Function( DateTime date)  onDateChange,required TResult Function()  onGetTransaction,}) {final _that = this;
switch (_that) {
case FilterTypeChangeEvent():
return onFilterTypeChangeEvent(_that.name);case FilterWalletChangeEvent():
return onFilterWalletChangeEvent(_that.name);case FilterCategoryChangeEvent():
return onFilterCategoryChangeEvent(_that.name);case SortByDateChangeEvent():
return onSortByDateChangeEvent(_that.name);case ResetEvent():
return onReset();case DateChangeEvent():
return onDateChange(_that.date);case GetTransactionEvent():
return onGetTransaction();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String name)?  onFilterTypeChangeEvent,TResult? Function( String name)?  onFilterWalletChangeEvent,TResult? Function( String name)?  onFilterCategoryChangeEvent,TResult? Function( String name)?  onSortByDateChangeEvent,TResult? Function()?  onReset,TResult? Function( DateTime date)?  onDateChange,TResult? Function()?  onGetTransaction,}) {final _that = this;
switch (_that) {
case FilterTypeChangeEvent() when onFilterTypeChangeEvent != null:
return onFilterTypeChangeEvent(_that.name);case FilterWalletChangeEvent() when onFilterWalletChangeEvent != null:
return onFilterWalletChangeEvent(_that.name);case FilterCategoryChangeEvent() when onFilterCategoryChangeEvent != null:
return onFilterCategoryChangeEvent(_that.name);case SortByDateChangeEvent() when onSortByDateChangeEvent != null:
return onSortByDateChangeEvent(_that.name);case ResetEvent() when onReset != null:
return onReset();case DateChangeEvent() when onDateChange != null:
return onDateChange(_that.date);case GetTransactionEvent() when onGetTransaction != null:
return onGetTransaction();case _:
  return null;

}
}

}

/// @nodoc


class FilterTypeChangeEvent implements TransactionEvent {
  const FilterTypeChangeEvent(this.name);
  

 final  String name;

/// Create a copy of TransactionEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FilterTypeChangeEventCopyWith<FilterTypeChangeEvent> get copyWith => _$FilterTypeChangeEventCopyWithImpl<FilterTypeChangeEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FilterTypeChangeEvent&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'TransactionEvent.onFilterTypeChangeEvent(name: $name)';
}


}

/// @nodoc
abstract mixin class $FilterTypeChangeEventCopyWith<$Res> implements $TransactionEventCopyWith<$Res> {
  factory $FilterTypeChangeEventCopyWith(FilterTypeChangeEvent value, $Res Function(FilterTypeChangeEvent) _then) = _$FilterTypeChangeEventCopyWithImpl;
@useResult
$Res call({
 String name
});




}
/// @nodoc
class _$FilterTypeChangeEventCopyWithImpl<$Res>
    implements $FilterTypeChangeEventCopyWith<$Res> {
  _$FilterTypeChangeEventCopyWithImpl(this._self, this._then);

  final FilterTypeChangeEvent _self;
  final $Res Function(FilterTypeChangeEvent) _then;

/// Create a copy of TransactionEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? name = null,}) {
  return _then(FilterTypeChangeEvent(
null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class FilterWalletChangeEvent implements TransactionEvent {
  const FilterWalletChangeEvent(this.name);
  

 final  String name;

/// Create a copy of TransactionEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FilterWalletChangeEventCopyWith<FilterWalletChangeEvent> get copyWith => _$FilterWalletChangeEventCopyWithImpl<FilterWalletChangeEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FilterWalletChangeEvent&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'TransactionEvent.onFilterWalletChangeEvent(name: $name)';
}


}

/// @nodoc
abstract mixin class $FilterWalletChangeEventCopyWith<$Res> implements $TransactionEventCopyWith<$Res> {
  factory $FilterWalletChangeEventCopyWith(FilterWalletChangeEvent value, $Res Function(FilterWalletChangeEvent) _then) = _$FilterWalletChangeEventCopyWithImpl;
@useResult
$Res call({
 String name
});




}
/// @nodoc
class _$FilterWalletChangeEventCopyWithImpl<$Res>
    implements $FilterWalletChangeEventCopyWith<$Res> {
  _$FilterWalletChangeEventCopyWithImpl(this._self, this._then);

  final FilterWalletChangeEvent _self;
  final $Res Function(FilterWalletChangeEvent) _then;

/// Create a copy of TransactionEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? name = null,}) {
  return _then(FilterWalletChangeEvent(
null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class FilterCategoryChangeEvent implements TransactionEvent {
  const FilterCategoryChangeEvent(this.name);
  

 final  String name;

/// Create a copy of TransactionEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FilterCategoryChangeEventCopyWith<FilterCategoryChangeEvent> get copyWith => _$FilterCategoryChangeEventCopyWithImpl<FilterCategoryChangeEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FilterCategoryChangeEvent&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'TransactionEvent.onFilterCategoryChangeEvent(name: $name)';
}


}

/// @nodoc
abstract mixin class $FilterCategoryChangeEventCopyWith<$Res> implements $TransactionEventCopyWith<$Res> {
  factory $FilterCategoryChangeEventCopyWith(FilterCategoryChangeEvent value, $Res Function(FilterCategoryChangeEvent) _then) = _$FilterCategoryChangeEventCopyWithImpl;
@useResult
$Res call({
 String name
});




}
/// @nodoc
class _$FilterCategoryChangeEventCopyWithImpl<$Res>
    implements $FilterCategoryChangeEventCopyWith<$Res> {
  _$FilterCategoryChangeEventCopyWithImpl(this._self, this._then);

  final FilterCategoryChangeEvent _self;
  final $Res Function(FilterCategoryChangeEvent) _then;

/// Create a copy of TransactionEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? name = null,}) {
  return _then(FilterCategoryChangeEvent(
null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SortByDateChangeEvent implements TransactionEvent {
  const SortByDateChangeEvent(this.name);
  

 final  String name;

/// Create a copy of TransactionEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SortByDateChangeEventCopyWith<SortByDateChangeEvent> get copyWith => _$SortByDateChangeEventCopyWithImpl<SortByDateChangeEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SortByDateChangeEvent&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'TransactionEvent.onSortByDateChangeEvent(name: $name)';
}


}

/// @nodoc
abstract mixin class $SortByDateChangeEventCopyWith<$Res> implements $TransactionEventCopyWith<$Res> {
  factory $SortByDateChangeEventCopyWith(SortByDateChangeEvent value, $Res Function(SortByDateChangeEvent) _then) = _$SortByDateChangeEventCopyWithImpl;
@useResult
$Res call({
 String name
});




}
/// @nodoc
class _$SortByDateChangeEventCopyWithImpl<$Res>
    implements $SortByDateChangeEventCopyWith<$Res> {
  _$SortByDateChangeEventCopyWithImpl(this._self, this._then);

  final SortByDateChangeEvent _self;
  final $Res Function(SortByDateChangeEvent) _then;

/// Create a copy of TransactionEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? name = null,}) {
  return _then(SortByDateChangeEvent(
null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ResetEvent implements TransactionEvent {
  const ResetEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResetEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TransactionEvent.onReset()';
}


}




/// @nodoc


class DateChangeEvent implements TransactionEvent {
  const DateChangeEvent(this.date);
  

 final  DateTime date;

/// Create a copy of TransactionEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DateChangeEventCopyWith<DateChangeEvent> get copyWith => _$DateChangeEventCopyWithImpl<DateChangeEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DateChangeEvent&&(identical(other.date, date) || other.date == date));
}


@override
int get hashCode => Object.hash(runtimeType,date);

@override
String toString() {
  return 'TransactionEvent.onDateChange(date: $date)';
}


}

/// @nodoc
abstract mixin class $DateChangeEventCopyWith<$Res> implements $TransactionEventCopyWith<$Res> {
  factory $DateChangeEventCopyWith(DateChangeEvent value, $Res Function(DateChangeEvent) _then) = _$DateChangeEventCopyWithImpl;
@useResult
$Res call({
 DateTime date
});




}
/// @nodoc
class _$DateChangeEventCopyWithImpl<$Res>
    implements $DateChangeEventCopyWith<$Res> {
  _$DateChangeEventCopyWithImpl(this._self, this._then);

  final DateChangeEvent _self;
  final $Res Function(DateChangeEvent) _then;

/// Create a copy of TransactionEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? date = null,}) {
  return _then(DateChangeEvent(
null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

/// @nodoc


class GetTransactionEvent implements TransactionEvent {
  const GetTransactionEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetTransactionEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TransactionEvent.onGetTransaction()';
}


}




// dart format on
