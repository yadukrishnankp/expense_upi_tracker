// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeState {

 MonthlyReport get monthlyReport; FirestoreFetchState<List<TransactionEntity>> get transactionList; List<DateRangeItem> get dateRangeItem; DateRange get dateRange;
/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeStateCopyWith<HomeState> get copyWith => _$HomeStateCopyWithImpl<HomeState>(this as HomeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState&&(identical(other.monthlyReport, monthlyReport) || other.monthlyReport == monthlyReport)&&(identical(other.transactionList, transactionList) || other.transactionList == transactionList)&&const DeepCollectionEquality().equals(other.dateRangeItem, dateRangeItem)&&(identical(other.dateRange, dateRange) || other.dateRange == dateRange));
}


@override
int get hashCode => Object.hash(runtimeType,monthlyReport,transactionList,const DeepCollectionEquality().hash(dateRangeItem),dateRange);

@override
String toString() {
  return 'HomeState(monthlyReport: $monthlyReport, transactionList: $transactionList, dateRangeItem: $dateRangeItem, dateRange: $dateRange)';
}


}

/// @nodoc
abstract mixin class $HomeStateCopyWith<$Res>  {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) _then) = _$HomeStateCopyWithImpl;
@useResult
$Res call({
 MonthlyReport monthlyReport, FirestoreFetchState<List<TransactionEntity>> transactionList, List<DateRangeItem> dateRangeItem, DateRange dateRange
});


$MonthlyReportCopyWith<$Res> get monthlyReport;$FirestoreFetchStateCopyWith<List<TransactionEntity>, $Res> get transactionList;

}
/// @nodoc
class _$HomeStateCopyWithImpl<$Res>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._self, this._then);

  final HomeState _self;
  final $Res Function(HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? monthlyReport = null,Object? transactionList = null,Object? dateRangeItem = null,Object? dateRange = null,}) {
  return _then(_self.copyWith(
monthlyReport: null == monthlyReport ? _self.monthlyReport : monthlyReport // ignore: cast_nullable_to_non_nullable
as MonthlyReport,transactionList: null == transactionList ? _self.transactionList : transactionList // ignore: cast_nullable_to_non_nullable
as FirestoreFetchState<List<TransactionEntity>>,dateRangeItem: null == dateRangeItem ? _self.dateRangeItem : dateRangeItem // ignore: cast_nullable_to_non_nullable
as List<DateRangeItem>,dateRange: null == dateRange ? _self.dateRange : dateRange // ignore: cast_nullable_to_non_nullable
as DateRange,
  ));
}
/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MonthlyReportCopyWith<$Res> get monthlyReport {
  
  return $MonthlyReportCopyWith<$Res>(_self.monthlyReport, (value) {
    return _then(_self.copyWith(monthlyReport: value));
  });
}/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FirestoreFetchStateCopyWith<List<TransactionEntity>, $Res> get transactionList {
  
  return $FirestoreFetchStateCopyWith<List<TransactionEntity>, $Res>(_self.transactionList, (value) {
    return _then(_self.copyWith(transactionList: value));
  });
}
}


/// Adds pattern-matching-related methods to [HomeState].
extension HomeStatePatterns on HomeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeState value)  $default,){
final _that = this;
switch (_that) {
case _HomeState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeState value)?  $default,){
final _that = this;
switch (_that) {
case _HomeState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( MonthlyReport monthlyReport,  FirestoreFetchState<List<TransactionEntity>> transactionList,  List<DateRangeItem> dateRangeItem,  DateRange dateRange)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeState() when $default != null:
return $default(_that.monthlyReport,_that.transactionList,_that.dateRangeItem,_that.dateRange);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( MonthlyReport monthlyReport,  FirestoreFetchState<List<TransactionEntity>> transactionList,  List<DateRangeItem> dateRangeItem,  DateRange dateRange)  $default,) {final _that = this;
switch (_that) {
case _HomeState():
return $default(_that.monthlyReport,_that.transactionList,_that.dateRangeItem,_that.dateRange);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( MonthlyReport monthlyReport,  FirestoreFetchState<List<TransactionEntity>> transactionList,  List<DateRangeItem> dateRangeItem,  DateRange dateRange)?  $default,) {final _that = this;
switch (_that) {
case _HomeState() when $default != null:
return $default(_that.monthlyReport,_that.transactionList,_that.dateRangeItem,_that.dateRange);case _:
  return null;

}
}

}

/// @nodoc


class _HomeState implements HomeState {
  const _HomeState({this.monthlyReport = const MonthlyReport(income: 0.0, expense: 0.0, netBalance: 0.0), this.transactionList = const FirestoreFetchState.initial(), final  List<DateRangeItem> dateRangeItem = const [DateRangeItem(name: "Today", isSelected: true), DateRangeItem(name: "Weekly", isSelected: false), DateRangeItem(name: "Monthly", isSelected: false)], this.dateRange = DateRange.Today}): _dateRangeItem = dateRangeItem;
  

@override@JsonKey() final  MonthlyReport monthlyReport;
@override@JsonKey() final  FirestoreFetchState<List<TransactionEntity>> transactionList;
 final  List<DateRangeItem> _dateRangeItem;
@override@JsonKey() List<DateRangeItem> get dateRangeItem {
  if (_dateRangeItem is EqualUnmodifiableListView) return _dateRangeItem;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_dateRangeItem);
}

@override@JsonKey() final  DateRange dateRange;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeStateCopyWith<_HomeState> get copyWith => __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeState&&(identical(other.monthlyReport, monthlyReport) || other.monthlyReport == monthlyReport)&&(identical(other.transactionList, transactionList) || other.transactionList == transactionList)&&const DeepCollectionEquality().equals(other._dateRangeItem, _dateRangeItem)&&(identical(other.dateRange, dateRange) || other.dateRange == dateRange));
}


@override
int get hashCode => Object.hash(runtimeType,monthlyReport,transactionList,const DeepCollectionEquality().hash(_dateRangeItem),dateRange);

@override
String toString() {
  return 'HomeState(monthlyReport: $monthlyReport, transactionList: $transactionList, dateRangeItem: $dateRangeItem, dateRange: $dateRange)';
}


}

/// @nodoc
abstract mixin class _$HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(_HomeState value, $Res Function(_HomeState) _then) = __$HomeStateCopyWithImpl;
@override @useResult
$Res call({
 MonthlyReport monthlyReport, FirestoreFetchState<List<TransactionEntity>> transactionList, List<DateRangeItem> dateRangeItem, DateRange dateRange
});


@override $MonthlyReportCopyWith<$Res> get monthlyReport;@override $FirestoreFetchStateCopyWith<List<TransactionEntity>, $Res> get transactionList;

}
/// @nodoc
class __$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(this._self, this._then);

  final _HomeState _self;
  final $Res Function(_HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? monthlyReport = null,Object? transactionList = null,Object? dateRangeItem = null,Object? dateRange = null,}) {
  return _then(_HomeState(
monthlyReport: null == monthlyReport ? _self.monthlyReport : monthlyReport // ignore: cast_nullable_to_non_nullable
as MonthlyReport,transactionList: null == transactionList ? _self.transactionList : transactionList // ignore: cast_nullable_to_non_nullable
as FirestoreFetchState<List<TransactionEntity>>,dateRangeItem: null == dateRangeItem ? _self._dateRangeItem : dateRangeItem // ignore: cast_nullable_to_non_nullable
as List<DateRangeItem>,dateRange: null == dateRange ? _self.dateRange : dateRange // ignore: cast_nullable_to_non_nullable
as DateRange,
  ));
}

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MonthlyReportCopyWith<$Res> get monthlyReport {
  
  return $MonthlyReportCopyWith<$Res>(_self.monthlyReport, (value) {
    return _then(_self.copyWith(monthlyReport: value));
  });
}/// Create a copy of HomeState
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
mixin _$MonthlyReport {

 double get income; double get expense; double get netBalance;
/// Create a copy of MonthlyReport
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MonthlyReportCopyWith<MonthlyReport> get copyWith => _$MonthlyReportCopyWithImpl<MonthlyReport>(this as MonthlyReport, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MonthlyReport&&(identical(other.income, income) || other.income == income)&&(identical(other.expense, expense) || other.expense == expense)&&(identical(other.netBalance, netBalance) || other.netBalance == netBalance));
}


@override
int get hashCode => Object.hash(runtimeType,income,expense,netBalance);

@override
String toString() {
  return 'MonthlyReport(income: $income, expense: $expense, netBalance: $netBalance)';
}


}

/// @nodoc
abstract mixin class $MonthlyReportCopyWith<$Res>  {
  factory $MonthlyReportCopyWith(MonthlyReport value, $Res Function(MonthlyReport) _then) = _$MonthlyReportCopyWithImpl;
@useResult
$Res call({
 double income, double expense, double netBalance
});




}
/// @nodoc
class _$MonthlyReportCopyWithImpl<$Res>
    implements $MonthlyReportCopyWith<$Res> {
  _$MonthlyReportCopyWithImpl(this._self, this._then);

  final MonthlyReport _self;
  final $Res Function(MonthlyReport) _then;

/// Create a copy of MonthlyReport
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? income = null,Object? expense = null,Object? netBalance = null,}) {
  return _then(_self.copyWith(
income: null == income ? _self.income : income // ignore: cast_nullable_to_non_nullable
as double,expense: null == expense ? _self.expense : expense // ignore: cast_nullable_to_non_nullable
as double,netBalance: null == netBalance ? _self.netBalance : netBalance // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [MonthlyReport].
extension MonthlyReportPatterns on MonthlyReport {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MonthlyReport value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MonthlyReport() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MonthlyReport value)  $default,){
final _that = this;
switch (_that) {
case _MonthlyReport():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MonthlyReport value)?  $default,){
final _that = this;
switch (_that) {
case _MonthlyReport() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double income,  double expense,  double netBalance)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MonthlyReport() when $default != null:
return $default(_that.income,_that.expense,_that.netBalance);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double income,  double expense,  double netBalance)  $default,) {final _that = this;
switch (_that) {
case _MonthlyReport():
return $default(_that.income,_that.expense,_that.netBalance);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double income,  double expense,  double netBalance)?  $default,) {final _that = this;
switch (_that) {
case _MonthlyReport() when $default != null:
return $default(_that.income,_that.expense,_that.netBalance);case _:
  return null;

}
}

}

/// @nodoc


class _MonthlyReport implements MonthlyReport {
  const _MonthlyReport({required this.income, required this.expense, required this.netBalance});
  

@override final  double income;
@override final  double expense;
@override final  double netBalance;

/// Create a copy of MonthlyReport
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MonthlyReportCopyWith<_MonthlyReport> get copyWith => __$MonthlyReportCopyWithImpl<_MonthlyReport>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MonthlyReport&&(identical(other.income, income) || other.income == income)&&(identical(other.expense, expense) || other.expense == expense)&&(identical(other.netBalance, netBalance) || other.netBalance == netBalance));
}


@override
int get hashCode => Object.hash(runtimeType,income,expense,netBalance);

@override
String toString() {
  return 'MonthlyReport(income: $income, expense: $expense, netBalance: $netBalance)';
}


}

/// @nodoc
abstract mixin class _$MonthlyReportCopyWith<$Res> implements $MonthlyReportCopyWith<$Res> {
  factory _$MonthlyReportCopyWith(_MonthlyReport value, $Res Function(_MonthlyReport) _then) = __$MonthlyReportCopyWithImpl;
@override @useResult
$Res call({
 double income, double expense, double netBalance
});




}
/// @nodoc
class __$MonthlyReportCopyWithImpl<$Res>
    implements _$MonthlyReportCopyWith<$Res> {
  __$MonthlyReportCopyWithImpl(this._self, this._then);

  final _MonthlyReport _self;
  final $Res Function(_MonthlyReport) _then;

/// Create a copy of MonthlyReport
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? income = null,Object? expense = null,Object? netBalance = null,}) {
  return _then(_MonthlyReport(
income: null == income ? _self.income : income // ignore: cast_nullable_to_non_nullable
as double,expense: null == expense ? _self.expense : expense // ignore: cast_nullable_to_non_nullable
as double,netBalance: null == netBalance ? _self.netBalance : netBalance // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc
mixin _$DateRangeItem {

 String get name; bool get isSelected;
/// Create a copy of DateRangeItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DateRangeItemCopyWith<DateRangeItem> get copyWith => _$DateRangeItemCopyWithImpl<DateRangeItem>(this as DateRangeItem, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DateRangeItem&&(identical(other.name, name) || other.name == name)&&(identical(other.isSelected, isSelected) || other.isSelected == isSelected));
}


@override
int get hashCode => Object.hash(runtimeType,name,isSelected);

@override
String toString() {
  return 'DateRangeItem(name: $name, isSelected: $isSelected)';
}


}

/// @nodoc
abstract mixin class $DateRangeItemCopyWith<$Res>  {
  factory $DateRangeItemCopyWith(DateRangeItem value, $Res Function(DateRangeItem) _then) = _$DateRangeItemCopyWithImpl;
@useResult
$Res call({
 String name, bool isSelected
});




}
/// @nodoc
class _$DateRangeItemCopyWithImpl<$Res>
    implements $DateRangeItemCopyWith<$Res> {
  _$DateRangeItemCopyWithImpl(this._self, this._then);

  final DateRangeItem _self;
  final $Res Function(DateRangeItem) _then;

/// Create a copy of DateRangeItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? isSelected = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,isSelected: null == isSelected ? _self.isSelected : isSelected // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [DateRangeItem].
extension DateRangeItemPatterns on DateRangeItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DateRangeItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DateRangeItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DateRangeItem value)  $default,){
final _that = this;
switch (_that) {
case _DateRangeItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DateRangeItem value)?  $default,){
final _that = this;
switch (_that) {
case _DateRangeItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  bool isSelected)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DateRangeItem() when $default != null:
return $default(_that.name,_that.isSelected);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  bool isSelected)  $default,) {final _that = this;
switch (_that) {
case _DateRangeItem():
return $default(_that.name,_that.isSelected);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  bool isSelected)?  $default,) {final _that = this;
switch (_that) {
case _DateRangeItem() when $default != null:
return $default(_that.name,_that.isSelected);case _:
  return null;

}
}

}

/// @nodoc


class _DateRangeItem implements DateRangeItem {
  const _DateRangeItem({required this.name, required this.isSelected});
  

@override final  String name;
@override final  bool isSelected;

/// Create a copy of DateRangeItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DateRangeItemCopyWith<_DateRangeItem> get copyWith => __$DateRangeItemCopyWithImpl<_DateRangeItem>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DateRangeItem&&(identical(other.name, name) || other.name == name)&&(identical(other.isSelected, isSelected) || other.isSelected == isSelected));
}


@override
int get hashCode => Object.hash(runtimeType,name,isSelected);

@override
String toString() {
  return 'DateRangeItem(name: $name, isSelected: $isSelected)';
}


}

/// @nodoc
abstract mixin class _$DateRangeItemCopyWith<$Res> implements $DateRangeItemCopyWith<$Res> {
  factory _$DateRangeItemCopyWith(_DateRangeItem value, $Res Function(_DateRangeItem) _then) = __$DateRangeItemCopyWithImpl;
@override @useResult
$Res call({
 String name, bool isSelected
});




}
/// @nodoc
class __$DateRangeItemCopyWithImpl<$Res>
    implements _$DateRangeItemCopyWith<$Res> {
  __$DateRangeItemCopyWithImpl(this._self, this._then);

  final _DateRangeItem _self;
  final $Res Function(_DateRangeItem) _then;

/// Create a copy of DateRangeItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? isSelected = null,}) {
  return _then(_DateRangeItem(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,isSelected: null == isSelected ? _self.isSelected : isSelected // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
