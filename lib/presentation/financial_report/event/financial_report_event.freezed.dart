// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'financial_report_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FinancialReportEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FinancialReportEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FinancialReportEvent()';
}


}

/// @nodoc
class $FinancialReportEventCopyWith<$Res>  {
$FinancialReportEventCopyWith(FinancialReportEvent _, $Res Function(FinancialReportEvent) __);
}


/// Adds pattern-matching-related methods to [FinancialReportEvent].
extension FinancialReportEventPatterns on FinancialReportEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( TypeChangeEvent value)?  onTypeChange,TResult Function( GetTransactionEvent value)?  getTransaction,TResult Function( DateChangeEvent value)?  onDateChange,TResult Function( SegmentChangeEvent value)?  onSegmentChange,required TResult orElse(),}){
final _that = this;
switch (_that) {
case TypeChangeEvent() when onTypeChange != null:
return onTypeChange(_that);case GetTransactionEvent() when getTransaction != null:
return getTransaction(_that);case DateChangeEvent() when onDateChange != null:
return onDateChange(_that);case SegmentChangeEvent() when onSegmentChange != null:
return onSegmentChange(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( TypeChangeEvent value)  onTypeChange,required TResult Function( GetTransactionEvent value)  getTransaction,required TResult Function( DateChangeEvent value)  onDateChange,required TResult Function( SegmentChangeEvent value)  onSegmentChange,}){
final _that = this;
switch (_that) {
case TypeChangeEvent():
return onTypeChange(_that);case GetTransactionEvent():
return getTransaction(_that);case DateChangeEvent():
return onDateChange(_that);case SegmentChangeEvent():
return onSegmentChange(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( TypeChangeEvent value)?  onTypeChange,TResult? Function( GetTransactionEvent value)?  getTransaction,TResult? Function( DateChangeEvent value)?  onDateChange,TResult? Function( SegmentChangeEvent value)?  onSegmentChange,}){
final _that = this;
switch (_that) {
case TypeChangeEvent() when onTypeChange != null:
return onTypeChange(_that);case GetTransactionEvent() when getTransaction != null:
return getTransaction(_that);case DateChangeEvent() when onDateChange != null:
return onDateChange(_that);case SegmentChangeEvent() when onSegmentChange != null:
return onSegmentChange(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( TransactionType type)?  onTypeChange,TResult Function()?  getTransaction,TResult Function( DateTime date)?  onDateChange,TResult Function( Segment segment)?  onSegmentChange,required TResult orElse(),}) {final _that = this;
switch (_that) {
case TypeChangeEvent() when onTypeChange != null:
return onTypeChange(_that.type);case GetTransactionEvent() when getTransaction != null:
return getTransaction();case DateChangeEvent() when onDateChange != null:
return onDateChange(_that.date);case SegmentChangeEvent() when onSegmentChange != null:
return onSegmentChange(_that.segment);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( TransactionType type)  onTypeChange,required TResult Function()  getTransaction,required TResult Function( DateTime date)  onDateChange,required TResult Function( Segment segment)  onSegmentChange,}) {final _that = this;
switch (_that) {
case TypeChangeEvent():
return onTypeChange(_that.type);case GetTransactionEvent():
return getTransaction();case DateChangeEvent():
return onDateChange(_that.date);case SegmentChangeEvent():
return onSegmentChange(_that.segment);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( TransactionType type)?  onTypeChange,TResult? Function()?  getTransaction,TResult? Function( DateTime date)?  onDateChange,TResult? Function( Segment segment)?  onSegmentChange,}) {final _that = this;
switch (_that) {
case TypeChangeEvent() when onTypeChange != null:
return onTypeChange(_that.type);case GetTransactionEvent() when getTransaction != null:
return getTransaction();case DateChangeEvent() when onDateChange != null:
return onDateChange(_that.date);case SegmentChangeEvent() when onSegmentChange != null:
return onSegmentChange(_that.segment);case _:
  return null;

}
}

}

/// @nodoc


class TypeChangeEvent implements FinancialReportEvent {
  const TypeChangeEvent(this.type);
  

 final  TransactionType type;

/// Create a copy of FinancialReportEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TypeChangeEventCopyWith<TypeChangeEvent> get copyWith => _$TypeChangeEventCopyWithImpl<TypeChangeEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TypeChangeEvent&&(identical(other.type, type) || other.type == type));
}


@override
int get hashCode => Object.hash(runtimeType,type);

@override
String toString() {
  return 'FinancialReportEvent.onTypeChange(type: $type)';
}


}

/// @nodoc
abstract mixin class $TypeChangeEventCopyWith<$Res> implements $FinancialReportEventCopyWith<$Res> {
  factory $TypeChangeEventCopyWith(TypeChangeEvent value, $Res Function(TypeChangeEvent) _then) = _$TypeChangeEventCopyWithImpl;
@useResult
$Res call({
 TransactionType type
});




}
/// @nodoc
class _$TypeChangeEventCopyWithImpl<$Res>
    implements $TypeChangeEventCopyWith<$Res> {
  _$TypeChangeEventCopyWithImpl(this._self, this._then);

  final TypeChangeEvent _self;
  final $Res Function(TypeChangeEvent) _then;

/// Create a copy of FinancialReportEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? type = null,}) {
  return _then(TypeChangeEvent(
null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as TransactionType,
  ));
}


}

/// @nodoc


class GetTransactionEvent implements FinancialReportEvent {
  const GetTransactionEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetTransactionEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FinancialReportEvent.getTransaction()';
}


}




/// @nodoc


class DateChangeEvent implements FinancialReportEvent {
  const DateChangeEvent(this.date);
  

 final  DateTime date;

/// Create a copy of FinancialReportEvent
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
  return 'FinancialReportEvent.onDateChange(date: $date)';
}


}

/// @nodoc
abstract mixin class $DateChangeEventCopyWith<$Res> implements $FinancialReportEventCopyWith<$Res> {
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

/// Create a copy of FinancialReportEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? date = null,}) {
  return _then(DateChangeEvent(
null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

/// @nodoc


class SegmentChangeEvent implements FinancialReportEvent {
  const SegmentChangeEvent(this.segment);
  

 final  Segment segment;

/// Create a copy of FinancialReportEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SegmentChangeEventCopyWith<SegmentChangeEvent> get copyWith => _$SegmentChangeEventCopyWithImpl<SegmentChangeEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SegmentChangeEvent&&(identical(other.segment, segment) || other.segment == segment));
}


@override
int get hashCode => Object.hash(runtimeType,segment);

@override
String toString() {
  return 'FinancialReportEvent.onSegmentChange(segment: $segment)';
}


}

/// @nodoc
abstract mixin class $SegmentChangeEventCopyWith<$Res> implements $FinancialReportEventCopyWith<$Res> {
  factory $SegmentChangeEventCopyWith(SegmentChangeEvent value, $Res Function(SegmentChangeEvent) _then) = _$SegmentChangeEventCopyWithImpl;
@useResult
$Res call({
 Segment segment
});




}
/// @nodoc
class _$SegmentChangeEventCopyWithImpl<$Res>
    implements $SegmentChangeEventCopyWith<$Res> {
  _$SegmentChangeEventCopyWithImpl(this._self, this._then);

  final SegmentChangeEvent _self;
  final $Res Function(SegmentChangeEvent) _then;

/// Create a copy of FinancialReportEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? segment = null,}) {
  return _then(SegmentChangeEvent(
null == segment ? _self.segment : segment // ignore: cast_nullable_to_non_nullable
as Segment,
  ));
}


}

// dart format on
