// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'financial_report_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FinancialReportState {

 FirestoreFetchState<List<TransactionEntity>> get transactionList; TransactionType get transactionType; DateTime get selectedDate; Segment get segment; List<ReportPieItem> get reportList;
/// Create a copy of FinancialReportState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FinancialReportStateCopyWith<FinancialReportState> get copyWith => _$FinancialReportStateCopyWithImpl<FinancialReportState>(this as FinancialReportState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FinancialReportState&&(identical(other.transactionList, transactionList) || other.transactionList == transactionList)&&(identical(other.transactionType, transactionType) || other.transactionType == transactionType)&&(identical(other.selectedDate, selectedDate) || other.selectedDate == selectedDate)&&(identical(other.segment, segment) || other.segment == segment)&&const DeepCollectionEquality().equals(other.reportList, reportList));
}


@override
int get hashCode => Object.hash(runtimeType,transactionList,transactionType,selectedDate,segment,const DeepCollectionEquality().hash(reportList));

@override
String toString() {
  return 'FinancialReportState(transactionList: $transactionList, transactionType: $transactionType, selectedDate: $selectedDate, segment: $segment, reportList: $reportList)';
}


}

/// @nodoc
abstract mixin class $FinancialReportStateCopyWith<$Res>  {
  factory $FinancialReportStateCopyWith(FinancialReportState value, $Res Function(FinancialReportState) _then) = _$FinancialReportStateCopyWithImpl;
@useResult
$Res call({
 FirestoreFetchState<List<TransactionEntity>> transactionList, TransactionType transactionType, DateTime selectedDate, Segment segment, List<ReportPieItem> reportList
});


$FirestoreFetchStateCopyWith<List<TransactionEntity>, $Res> get transactionList;

}
/// @nodoc
class _$FinancialReportStateCopyWithImpl<$Res>
    implements $FinancialReportStateCopyWith<$Res> {
  _$FinancialReportStateCopyWithImpl(this._self, this._then);

  final FinancialReportState _self;
  final $Res Function(FinancialReportState) _then;

/// Create a copy of FinancialReportState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? transactionList = null,Object? transactionType = null,Object? selectedDate = null,Object? segment = null,Object? reportList = null,}) {
  return _then(_self.copyWith(
transactionList: null == transactionList ? _self.transactionList : transactionList // ignore: cast_nullable_to_non_nullable
as FirestoreFetchState<List<TransactionEntity>>,transactionType: null == transactionType ? _self.transactionType : transactionType // ignore: cast_nullable_to_non_nullable
as TransactionType,selectedDate: null == selectedDate ? _self.selectedDate : selectedDate // ignore: cast_nullable_to_non_nullable
as DateTime,segment: null == segment ? _self.segment : segment // ignore: cast_nullable_to_non_nullable
as Segment,reportList: null == reportList ? _self.reportList : reportList // ignore: cast_nullable_to_non_nullable
as List<ReportPieItem>,
  ));
}
/// Create a copy of FinancialReportState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FirestoreFetchStateCopyWith<List<TransactionEntity>, $Res> get transactionList {
  
  return $FirestoreFetchStateCopyWith<List<TransactionEntity>, $Res>(_self.transactionList, (value) {
    return _then(_self.copyWith(transactionList: value));
  });
}
}


/// Adds pattern-matching-related methods to [FinancialReportState].
extension FinancialReportStatePatterns on FinancialReportState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FinancialReportState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FinancialReportState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FinancialReportState value)  $default,){
final _that = this;
switch (_that) {
case _FinancialReportState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FinancialReportState value)?  $default,){
final _that = this;
switch (_that) {
case _FinancialReportState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( FirestoreFetchState<List<TransactionEntity>> transactionList,  TransactionType transactionType,  DateTime selectedDate,  Segment segment,  List<ReportPieItem> reportList)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FinancialReportState() when $default != null:
return $default(_that.transactionList,_that.transactionType,_that.selectedDate,_that.segment,_that.reportList);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( FirestoreFetchState<List<TransactionEntity>> transactionList,  TransactionType transactionType,  DateTime selectedDate,  Segment segment,  List<ReportPieItem> reportList)  $default,) {final _that = this;
switch (_that) {
case _FinancialReportState():
return $default(_that.transactionList,_that.transactionType,_that.selectedDate,_that.segment,_that.reportList);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( FirestoreFetchState<List<TransactionEntity>> transactionList,  TransactionType transactionType,  DateTime selectedDate,  Segment segment,  List<ReportPieItem> reportList)?  $default,) {final _that = this;
switch (_that) {
case _FinancialReportState() when $default != null:
return $default(_that.transactionList,_that.transactionType,_that.selectedDate,_that.segment,_that.reportList);case _:
  return null;

}
}

}

/// @nodoc


class _FinancialReportState implements FinancialReportState {
  const _FinancialReportState({this.transactionList = const FirestoreFetchState.initial(), this.transactionType = TransactionType.EXPENSE, required this.selectedDate, this.segment = Segment.left, final  List<ReportPieItem> reportList = const []}): _reportList = reportList;
  

@override@JsonKey() final  FirestoreFetchState<List<TransactionEntity>> transactionList;
@override@JsonKey() final  TransactionType transactionType;
@override final  DateTime selectedDate;
@override@JsonKey() final  Segment segment;
 final  List<ReportPieItem> _reportList;
@override@JsonKey() List<ReportPieItem> get reportList {
  if (_reportList is EqualUnmodifiableListView) return _reportList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_reportList);
}


/// Create a copy of FinancialReportState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FinancialReportStateCopyWith<_FinancialReportState> get copyWith => __$FinancialReportStateCopyWithImpl<_FinancialReportState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FinancialReportState&&(identical(other.transactionList, transactionList) || other.transactionList == transactionList)&&(identical(other.transactionType, transactionType) || other.transactionType == transactionType)&&(identical(other.selectedDate, selectedDate) || other.selectedDate == selectedDate)&&(identical(other.segment, segment) || other.segment == segment)&&const DeepCollectionEquality().equals(other._reportList, _reportList));
}


@override
int get hashCode => Object.hash(runtimeType,transactionList,transactionType,selectedDate,segment,const DeepCollectionEquality().hash(_reportList));

@override
String toString() {
  return 'FinancialReportState(transactionList: $transactionList, transactionType: $transactionType, selectedDate: $selectedDate, segment: $segment, reportList: $reportList)';
}


}

/// @nodoc
abstract mixin class _$FinancialReportStateCopyWith<$Res> implements $FinancialReportStateCopyWith<$Res> {
  factory _$FinancialReportStateCopyWith(_FinancialReportState value, $Res Function(_FinancialReportState) _then) = __$FinancialReportStateCopyWithImpl;
@override @useResult
$Res call({
 FirestoreFetchState<List<TransactionEntity>> transactionList, TransactionType transactionType, DateTime selectedDate, Segment segment, List<ReportPieItem> reportList
});


@override $FirestoreFetchStateCopyWith<List<TransactionEntity>, $Res> get transactionList;

}
/// @nodoc
class __$FinancialReportStateCopyWithImpl<$Res>
    implements _$FinancialReportStateCopyWith<$Res> {
  __$FinancialReportStateCopyWithImpl(this._self, this._then);

  final _FinancialReportState _self;
  final $Res Function(_FinancialReportState) _then;

/// Create a copy of FinancialReportState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? transactionList = null,Object? transactionType = null,Object? selectedDate = null,Object? segment = null,Object? reportList = null,}) {
  return _then(_FinancialReportState(
transactionList: null == transactionList ? _self.transactionList : transactionList // ignore: cast_nullable_to_non_nullable
as FirestoreFetchState<List<TransactionEntity>>,transactionType: null == transactionType ? _self.transactionType : transactionType // ignore: cast_nullable_to_non_nullable
as TransactionType,selectedDate: null == selectedDate ? _self.selectedDate : selectedDate // ignore: cast_nullable_to_non_nullable
as DateTime,segment: null == segment ? _self.segment : segment // ignore: cast_nullable_to_non_nullable
as Segment,reportList: null == reportList ? _self._reportList : reportList // ignore: cast_nullable_to_non_nullable
as List<ReportPieItem>,
  ));
}

/// Create a copy of FinancialReportState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FirestoreFetchStateCopyWith<List<TransactionEntity>, $Res> get transactionList {
  
  return $FirestoreFetchStateCopyWith<List<TransactionEntity>, $Res>(_self.transactionList, (value) {
    return _then(_self.copyWith(transactionList: value));
  });
}
}

/// @nodoc
mixin _$ReportPieItem {

 double get total; double get totalPr; String get name;
/// Create a copy of ReportPieItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReportPieItemCopyWith<ReportPieItem> get copyWith => _$ReportPieItemCopyWithImpl<ReportPieItem>(this as ReportPieItem, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReportPieItem&&(identical(other.total, total) || other.total == total)&&(identical(other.totalPr, totalPr) || other.totalPr == totalPr)&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,total,totalPr,name);

@override
String toString() {
  return 'ReportPieItem(total: $total, totalPr: $totalPr, name: $name)';
}


}

/// @nodoc
abstract mixin class $ReportPieItemCopyWith<$Res>  {
  factory $ReportPieItemCopyWith(ReportPieItem value, $Res Function(ReportPieItem) _then) = _$ReportPieItemCopyWithImpl;
@useResult
$Res call({
 double total, double totalPr, String name
});




}
/// @nodoc
class _$ReportPieItemCopyWithImpl<$Res>
    implements $ReportPieItemCopyWith<$Res> {
  _$ReportPieItemCopyWithImpl(this._self, this._then);

  final ReportPieItem _self;
  final $Res Function(ReportPieItem) _then;

/// Create a copy of ReportPieItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? total = null,Object? totalPr = null,Object? name = null,}) {
  return _then(_self.copyWith(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as double,totalPr: null == totalPr ? _self.totalPr : totalPr // ignore: cast_nullable_to_non_nullable
as double,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ReportPieItem].
extension ReportPieItemPatterns on ReportPieItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReportPieItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReportPieItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReportPieItem value)  $default,){
final _that = this;
switch (_that) {
case _ReportPieItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReportPieItem value)?  $default,){
final _that = this;
switch (_that) {
case _ReportPieItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double total,  double totalPr,  String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReportPieItem() when $default != null:
return $default(_that.total,_that.totalPr,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double total,  double totalPr,  String name)  $default,) {final _that = this;
switch (_that) {
case _ReportPieItem():
return $default(_that.total,_that.totalPr,_that.name);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double total,  double totalPr,  String name)?  $default,) {final _that = this;
switch (_that) {
case _ReportPieItem() when $default != null:
return $default(_that.total,_that.totalPr,_that.name);case _:
  return null;

}
}

}

/// @nodoc


class _ReportPieItem implements ReportPieItem {
  const _ReportPieItem({this.total = 0.0, this.totalPr = 0.0, required this.name});
  

@override@JsonKey() final  double total;
@override@JsonKey() final  double totalPr;
@override final  String name;

/// Create a copy of ReportPieItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReportPieItemCopyWith<_ReportPieItem> get copyWith => __$ReportPieItemCopyWithImpl<_ReportPieItem>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReportPieItem&&(identical(other.total, total) || other.total == total)&&(identical(other.totalPr, totalPr) || other.totalPr == totalPr)&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,total,totalPr,name);

@override
String toString() {
  return 'ReportPieItem(total: $total, totalPr: $totalPr, name: $name)';
}


}

/// @nodoc
abstract mixin class _$ReportPieItemCopyWith<$Res> implements $ReportPieItemCopyWith<$Res> {
  factory _$ReportPieItemCopyWith(_ReportPieItem value, $Res Function(_ReportPieItem) _then) = __$ReportPieItemCopyWithImpl;
@override @useResult
$Res call({
 double total, double totalPr, String name
});




}
/// @nodoc
class __$ReportPieItemCopyWithImpl<$Res>
    implements _$ReportPieItemCopyWith<$Res> {
  __$ReportPieItemCopyWithImpl(this._self, this._then);

  final _ReportPieItem _self;
  final $Res Function(_ReportPieItem) _then;

/// Create a copy of ReportPieItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? total = null,Object? totalPr = null,Object? name = null,}) {
  return _then(_ReportPieItem(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as double,totalPr: null == totalPr ? _self.totalPr : totalPr // ignore: cast_nullable_to_non_nullable
as double,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
