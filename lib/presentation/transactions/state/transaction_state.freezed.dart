// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TransactionState {

 List<FilterItem> get filterTypeList; List<FilterItem> get filterWalletList; List<FilterItem> get filterCategoryList; List<FilterItem> get sortByDateList; DateTime get selectedDate; FirestoreFetchState<List<TransactionEntity>> get transactionList;
/// Create a copy of TransactionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionStateCopyWith<TransactionState> get copyWith => _$TransactionStateCopyWithImpl<TransactionState>(this as TransactionState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionState&&const DeepCollectionEquality().equals(other.filterTypeList, filterTypeList)&&const DeepCollectionEquality().equals(other.filterWalletList, filterWalletList)&&const DeepCollectionEquality().equals(other.filterCategoryList, filterCategoryList)&&const DeepCollectionEquality().equals(other.sortByDateList, sortByDateList)&&(identical(other.selectedDate, selectedDate) || other.selectedDate == selectedDate)&&(identical(other.transactionList, transactionList) || other.transactionList == transactionList));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(filterTypeList),const DeepCollectionEquality().hash(filterWalletList),const DeepCollectionEquality().hash(filterCategoryList),const DeepCollectionEquality().hash(sortByDateList),selectedDate,transactionList);

@override
String toString() {
  return 'TransactionState(filterTypeList: $filterTypeList, filterWalletList: $filterWalletList, filterCategoryList: $filterCategoryList, sortByDateList: $sortByDateList, selectedDate: $selectedDate, transactionList: $transactionList)';
}


}

/// @nodoc
abstract mixin class $TransactionStateCopyWith<$Res>  {
  factory $TransactionStateCopyWith(TransactionState value, $Res Function(TransactionState) _then) = _$TransactionStateCopyWithImpl;
@useResult
$Res call({
 List<FilterItem> filterTypeList, List<FilterItem> filterWalletList, List<FilterItem> filterCategoryList, List<FilterItem> sortByDateList, DateTime selectedDate, FirestoreFetchState<List<TransactionEntity>> transactionList
});


$FirestoreFetchStateCopyWith<List<TransactionEntity>, $Res> get transactionList;

}
/// @nodoc
class _$TransactionStateCopyWithImpl<$Res>
    implements $TransactionStateCopyWith<$Res> {
  _$TransactionStateCopyWithImpl(this._self, this._then);

  final TransactionState _self;
  final $Res Function(TransactionState) _then;

/// Create a copy of TransactionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? filterTypeList = null,Object? filterWalletList = null,Object? filterCategoryList = null,Object? sortByDateList = null,Object? selectedDate = null,Object? transactionList = null,}) {
  return _then(_self.copyWith(
filterTypeList: null == filterTypeList ? _self.filterTypeList : filterTypeList // ignore: cast_nullable_to_non_nullable
as List<FilterItem>,filterWalletList: null == filterWalletList ? _self.filterWalletList : filterWalletList // ignore: cast_nullable_to_non_nullable
as List<FilterItem>,filterCategoryList: null == filterCategoryList ? _self.filterCategoryList : filterCategoryList // ignore: cast_nullable_to_non_nullable
as List<FilterItem>,sortByDateList: null == sortByDateList ? _self.sortByDateList : sortByDateList // ignore: cast_nullable_to_non_nullable
as List<FilterItem>,selectedDate: null == selectedDate ? _self.selectedDate : selectedDate // ignore: cast_nullable_to_non_nullable
as DateTime,transactionList: null == transactionList ? _self.transactionList : transactionList // ignore: cast_nullable_to_non_nullable
as FirestoreFetchState<List<TransactionEntity>>,
  ));
}
/// Create a copy of TransactionState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FirestoreFetchStateCopyWith<List<TransactionEntity>, $Res> get transactionList {
  
  return $FirestoreFetchStateCopyWith<List<TransactionEntity>, $Res>(_self.transactionList, (value) {
    return _then(_self.copyWith(transactionList: value));
  });
}
}


/// Adds pattern-matching-related methods to [TransactionState].
extension TransactionStatePatterns on TransactionState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TransactionState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransactionState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TransactionState value)  $default,){
final _that = this;
switch (_that) {
case _TransactionState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TransactionState value)?  $default,){
final _that = this;
switch (_that) {
case _TransactionState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<FilterItem> filterTypeList,  List<FilterItem> filterWalletList,  List<FilterItem> filterCategoryList,  List<FilterItem> sortByDateList,  DateTime selectedDate,  FirestoreFetchState<List<TransactionEntity>> transactionList)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransactionState() when $default != null:
return $default(_that.filterTypeList,_that.filterWalletList,_that.filterCategoryList,_that.sortByDateList,_that.selectedDate,_that.transactionList);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<FilterItem> filterTypeList,  List<FilterItem> filterWalletList,  List<FilterItem> filterCategoryList,  List<FilterItem> sortByDateList,  DateTime selectedDate,  FirestoreFetchState<List<TransactionEntity>> transactionList)  $default,) {final _that = this;
switch (_that) {
case _TransactionState():
return $default(_that.filterTypeList,_that.filterWalletList,_that.filterCategoryList,_that.sortByDateList,_that.selectedDate,_that.transactionList);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<FilterItem> filterTypeList,  List<FilterItem> filterWalletList,  List<FilterItem> filterCategoryList,  List<FilterItem> sortByDateList,  DateTime selectedDate,  FirestoreFetchState<List<TransactionEntity>> transactionList)?  $default,) {final _that = this;
switch (_that) {
case _TransactionState() when $default != null:
return $default(_that.filterTypeList,_that.filterWalletList,_that.filterCategoryList,_that.sortByDateList,_that.selectedDate,_that.transactionList);case _:
  return null;

}
}

}

/// @nodoc


class _TransactionState implements TransactionState {
  const _TransactionState({final  List<FilterItem> filterTypeList = const [FilterItem(name: "Income"), FilterItem(name: "Expense")], final  List<FilterItem> filterWalletList = const [FilterItem(name: "Bank"), FilterItem(name: "Upi"), FilterItem(name: "Cash")], final  List<FilterItem> filterCategoryList = const [FilterItem(name: "Salary"), FilterItem(name: "Passive Income"), FilterItem(name: "Real Estate"), FilterItem(name: "Others"), FilterItem(name: "Food"), FilterItem(name: "Groceries"), FilterItem(name: "Entertainment"), FilterItem(name: "Utility Bills"), FilterItem(name: "Shopping"), FilterItem(name: "Fuel"), FilterItem(name: "Rent")], final  List<FilterItem> sortByDateList = const [FilterItem(name: "Newest"), FilterItem(name: "Oldest")], required this.selectedDate, this.transactionList = const FirestoreFetchState.initial()}): _filterTypeList = filterTypeList,_filterWalletList = filterWalletList,_filterCategoryList = filterCategoryList,_sortByDateList = sortByDateList;
  

 final  List<FilterItem> _filterTypeList;
@override@JsonKey() List<FilterItem> get filterTypeList {
  if (_filterTypeList is EqualUnmodifiableListView) return _filterTypeList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_filterTypeList);
}

 final  List<FilterItem> _filterWalletList;
@override@JsonKey() List<FilterItem> get filterWalletList {
  if (_filterWalletList is EqualUnmodifiableListView) return _filterWalletList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_filterWalletList);
}

 final  List<FilterItem> _filterCategoryList;
@override@JsonKey() List<FilterItem> get filterCategoryList {
  if (_filterCategoryList is EqualUnmodifiableListView) return _filterCategoryList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_filterCategoryList);
}

 final  List<FilterItem> _sortByDateList;
@override@JsonKey() List<FilterItem> get sortByDateList {
  if (_sortByDateList is EqualUnmodifiableListView) return _sortByDateList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sortByDateList);
}

@override final  DateTime selectedDate;
@override@JsonKey() final  FirestoreFetchState<List<TransactionEntity>> transactionList;

/// Create a copy of TransactionState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionStateCopyWith<_TransactionState> get copyWith => __$TransactionStateCopyWithImpl<_TransactionState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionState&&const DeepCollectionEquality().equals(other._filterTypeList, _filterTypeList)&&const DeepCollectionEquality().equals(other._filterWalletList, _filterWalletList)&&const DeepCollectionEquality().equals(other._filterCategoryList, _filterCategoryList)&&const DeepCollectionEquality().equals(other._sortByDateList, _sortByDateList)&&(identical(other.selectedDate, selectedDate) || other.selectedDate == selectedDate)&&(identical(other.transactionList, transactionList) || other.transactionList == transactionList));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_filterTypeList),const DeepCollectionEquality().hash(_filterWalletList),const DeepCollectionEquality().hash(_filterCategoryList),const DeepCollectionEquality().hash(_sortByDateList),selectedDate,transactionList);

@override
String toString() {
  return 'TransactionState(filterTypeList: $filterTypeList, filterWalletList: $filterWalletList, filterCategoryList: $filterCategoryList, sortByDateList: $sortByDateList, selectedDate: $selectedDate, transactionList: $transactionList)';
}


}

/// @nodoc
abstract mixin class _$TransactionStateCopyWith<$Res> implements $TransactionStateCopyWith<$Res> {
  factory _$TransactionStateCopyWith(_TransactionState value, $Res Function(_TransactionState) _then) = __$TransactionStateCopyWithImpl;
@override @useResult
$Res call({
 List<FilterItem> filterTypeList, List<FilterItem> filterWalletList, List<FilterItem> filterCategoryList, List<FilterItem> sortByDateList, DateTime selectedDate, FirestoreFetchState<List<TransactionEntity>> transactionList
});


@override $FirestoreFetchStateCopyWith<List<TransactionEntity>, $Res> get transactionList;

}
/// @nodoc
class __$TransactionStateCopyWithImpl<$Res>
    implements _$TransactionStateCopyWith<$Res> {
  __$TransactionStateCopyWithImpl(this._self, this._then);

  final _TransactionState _self;
  final $Res Function(_TransactionState) _then;

/// Create a copy of TransactionState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? filterTypeList = null,Object? filterWalletList = null,Object? filterCategoryList = null,Object? sortByDateList = null,Object? selectedDate = null,Object? transactionList = null,}) {
  return _then(_TransactionState(
filterTypeList: null == filterTypeList ? _self._filterTypeList : filterTypeList // ignore: cast_nullable_to_non_nullable
as List<FilterItem>,filterWalletList: null == filterWalletList ? _self._filterWalletList : filterWalletList // ignore: cast_nullable_to_non_nullable
as List<FilterItem>,filterCategoryList: null == filterCategoryList ? _self._filterCategoryList : filterCategoryList // ignore: cast_nullable_to_non_nullable
as List<FilterItem>,sortByDateList: null == sortByDateList ? _self._sortByDateList : sortByDateList // ignore: cast_nullable_to_non_nullable
as List<FilterItem>,selectedDate: null == selectedDate ? _self.selectedDate : selectedDate // ignore: cast_nullable_to_non_nullable
as DateTime,transactionList: null == transactionList ? _self.transactionList : transactionList // ignore: cast_nullable_to_non_nullable
as FirestoreFetchState<List<TransactionEntity>>,
  ));
}

/// Create a copy of TransactionState
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
mixin _$FilterItem {

 String get name; bool get selected;
/// Create a copy of FilterItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FilterItemCopyWith<FilterItem> get copyWith => _$FilterItemCopyWithImpl<FilterItem>(this as FilterItem, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FilterItem&&(identical(other.name, name) || other.name == name)&&(identical(other.selected, selected) || other.selected == selected));
}


@override
int get hashCode => Object.hash(runtimeType,name,selected);

@override
String toString() {
  return 'FilterItem(name: $name, selected: $selected)';
}


}

/// @nodoc
abstract mixin class $FilterItemCopyWith<$Res>  {
  factory $FilterItemCopyWith(FilterItem value, $Res Function(FilterItem) _then) = _$FilterItemCopyWithImpl;
@useResult
$Res call({
 String name, bool selected
});




}
/// @nodoc
class _$FilterItemCopyWithImpl<$Res>
    implements $FilterItemCopyWith<$Res> {
  _$FilterItemCopyWithImpl(this._self, this._then);

  final FilterItem _self;
  final $Res Function(FilterItem) _then;

/// Create a copy of FilterItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? selected = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,selected: null == selected ? _self.selected : selected // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [FilterItem].
extension FilterItemPatterns on FilterItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FilterItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FilterItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FilterItem value)  $default,){
final _that = this;
switch (_that) {
case _FilterItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FilterItem value)?  $default,){
final _that = this;
switch (_that) {
case _FilterItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  bool selected)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FilterItem() when $default != null:
return $default(_that.name,_that.selected);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  bool selected)  $default,) {final _that = this;
switch (_that) {
case _FilterItem():
return $default(_that.name,_that.selected);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  bool selected)?  $default,) {final _that = this;
switch (_that) {
case _FilterItem() when $default != null:
return $default(_that.name,_that.selected);case _:
  return null;

}
}

}

/// @nodoc


class _FilterItem implements FilterItem {
  const _FilterItem({required this.name, this.selected = false});
  

@override final  String name;
@override@JsonKey() final  bool selected;

/// Create a copy of FilterItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FilterItemCopyWith<_FilterItem> get copyWith => __$FilterItemCopyWithImpl<_FilterItem>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FilterItem&&(identical(other.name, name) || other.name == name)&&(identical(other.selected, selected) || other.selected == selected));
}


@override
int get hashCode => Object.hash(runtimeType,name,selected);

@override
String toString() {
  return 'FilterItem(name: $name, selected: $selected)';
}


}

/// @nodoc
abstract mixin class _$FilterItemCopyWith<$Res> implements $FilterItemCopyWith<$Res> {
  factory _$FilterItemCopyWith(_FilterItem value, $Res Function(_FilterItem) _then) = __$FilterItemCopyWithImpl;
@override @useResult
$Res call({
 String name, bool selected
});




}
/// @nodoc
class __$FilterItemCopyWithImpl<$Res>
    implements _$FilterItemCopyWith<$Res> {
  __$FilterItemCopyWithImpl(this._self, this._then);

  final _FilterItem _self;
  final $Res Function(_FilterItem) _then;

/// Create a copy of FilterItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? selected = null,}) {
  return _then(_FilterItem(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,selected: null == selected ? _self.selected : selected // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
