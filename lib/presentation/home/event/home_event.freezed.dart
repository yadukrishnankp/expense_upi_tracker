// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent()';
}


}

/// @nodoc
class $HomeEventCopyWith<$Res>  {
$HomeEventCopyWith(HomeEvent _, $Res Function(HomeEvent) __);
}


/// Adds pattern-matching-related methods to [HomeEvent].
extension HomeEventPatterns on HomeEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GetRecentTransactionEvent value)?  getRecentTransaction,TResult Function( GetTransactionByMonthEvent value)?  getTransactionByMonth,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GetRecentTransactionEvent() when getRecentTransaction != null:
return getRecentTransaction(_that);case GetTransactionByMonthEvent() when getTransactionByMonth != null:
return getTransactionByMonth(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GetRecentTransactionEvent value)  getRecentTransaction,required TResult Function( GetTransactionByMonthEvent value)  getTransactionByMonth,}){
final _that = this;
switch (_that) {
case GetRecentTransactionEvent():
return getRecentTransaction(_that);case GetTransactionByMonthEvent():
return getTransactionByMonth(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GetRecentTransactionEvent value)?  getRecentTransaction,TResult? Function( GetTransactionByMonthEvent value)?  getTransactionByMonth,}){
final _that = this;
switch (_that) {
case GetRecentTransactionEvent() when getRecentTransaction != null:
return getRecentTransaction(_that);case GetTransactionByMonthEvent() when getTransactionByMonth != null:
return getTransactionByMonth(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  getRecentTransaction,TResult Function( DateTime month)?  getTransactionByMonth,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GetRecentTransactionEvent() when getRecentTransaction != null:
return getRecentTransaction();case GetTransactionByMonthEvent() when getTransactionByMonth != null:
return getTransactionByMonth(_that.month);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  getRecentTransaction,required TResult Function( DateTime month)  getTransactionByMonth,}) {final _that = this;
switch (_that) {
case GetRecentTransactionEvent():
return getRecentTransaction();case GetTransactionByMonthEvent():
return getTransactionByMonth(_that.month);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  getRecentTransaction,TResult? Function( DateTime month)?  getTransactionByMonth,}) {final _that = this;
switch (_that) {
case GetRecentTransactionEvent() when getRecentTransaction != null:
return getRecentTransaction();case GetTransactionByMonthEvent() when getTransactionByMonth != null:
return getTransactionByMonth(_that.month);case _:
  return null;

}
}

}

/// @nodoc


class GetRecentTransactionEvent implements HomeEvent {
  const GetRecentTransactionEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetRecentTransactionEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent.getRecentTransaction()';
}


}




/// @nodoc


class GetTransactionByMonthEvent implements HomeEvent {
  const GetTransactionByMonthEvent(this.month);
  

 final  DateTime month;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetTransactionByMonthEventCopyWith<GetTransactionByMonthEvent> get copyWith => _$GetTransactionByMonthEventCopyWithImpl<GetTransactionByMonthEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetTransactionByMonthEvent&&(identical(other.month, month) || other.month == month));
}


@override
int get hashCode => Object.hash(runtimeType,month);

@override
String toString() {
  return 'HomeEvent.getTransactionByMonth(month: $month)';
}


}

/// @nodoc
abstract mixin class $GetTransactionByMonthEventCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory $GetTransactionByMonthEventCopyWith(GetTransactionByMonthEvent value, $Res Function(GetTransactionByMonthEvent) _then) = _$GetTransactionByMonthEventCopyWithImpl;
@useResult
$Res call({
 DateTime month
});




}
/// @nodoc
class _$GetTransactionByMonthEventCopyWithImpl<$Res>
    implements $GetTransactionByMonthEventCopyWith<$Res> {
  _$GetTransactionByMonthEventCopyWithImpl(this._self, this._then);

  final GetTransactionByMonthEvent _self;
  final $Res Function(GetTransactionByMonthEvent) _then;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? month = null,}) {
  return _then(GetTransactionByMonthEvent(
null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
