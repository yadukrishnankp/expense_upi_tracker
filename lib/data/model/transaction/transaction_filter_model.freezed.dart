// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_filter_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TransactionFilterModel {

 List<String> get filterTypeList; List<String> get filterCategoryList; List<String> get filterWalletList; String get dateSort; AppDateModel get dateModel;
/// Create a copy of TransactionFilterModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionFilterModelCopyWith<TransactionFilterModel> get copyWith => _$TransactionFilterModelCopyWithImpl<TransactionFilterModel>(this as TransactionFilterModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionFilterModel&&const DeepCollectionEquality().equals(other.filterTypeList, filterTypeList)&&const DeepCollectionEquality().equals(other.filterCategoryList, filterCategoryList)&&const DeepCollectionEquality().equals(other.filterWalletList, filterWalletList)&&(identical(other.dateSort, dateSort) || other.dateSort == dateSort)&&(identical(other.dateModel, dateModel) || other.dateModel == dateModel));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(filterTypeList),const DeepCollectionEquality().hash(filterCategoryList),const DeepCollectionEquality().hash(filterWalletList),dateSort,dateModel);

@override
String toString() {
  return 'TransactionFilterModel(filterTypeList: $filterTypeList, filterCategoryList: $filterCategoryList, filterWalletList: $filterWalletList, dateSort: $dateSort, dateModel: $dateModel)';
}


}

/// @nodoc
abstract mixin class $TransactionFilterModelCopyWith<$Res>  {
  factory $TransactionFilterModelCopyWith(TransactionFilterModel value, $Res Function(TransactionFilterModel) _then) = _$TransactionFilterModelCopyWithImpl;
@useResult
$Res call({
 List<String> filterTypeList, List<String> filterCategoryList, List<String> filterWalletList, String dateSort, AppDateModel dateModel
});




}
/// @nodoc
class _$TransactionFilterModelCopyWithImpl<$Res>
    implements $TransactionFilterModelCopyWith<$Res> {
  _$TransactionFilterModelCopyWithImpl(this._self, this._then);

  final TransactionFilterModel _self;
  final $Res Function(TransactionFilterModel) _then;

/// Create a copy of TransactionFilterModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? filterTypeList = null,Object? filterCategoryList = null,Object? filterWalletList = null,Object? dateSort = null,Object? dateModel = null,}) {
  return _then(_self.copyWith(
filterTypeList: null == filterTypeList ? _self.filterTypeList : filterTypeList // ignore: cast_nullable_to_non_nullable
as List<String>,filterCategoryList: null == filterCategoryList ? _self.filterCategoryList : filterCategoryList // ignore: cast_nullable_to_non_nullable
as List<String>,filterWalletList: null == filterWalletList ? _self.filterWalletList : filterWalletList // ignore: cast_nullable_to_non_nullable
as List<String>,dateSort: null == dateSort ? _self.dateSort : dateSort // ignore: cast_nullable_to_non_nullable
as String,dateModel: null == dateModel ? _self.dateModel : dateModel // ignore: cast_nullable_to_non_nullable
as AppDateModel,
  ));
}

}


/// Adds pattern-matching-related methods to [TransactionFilterModel].
extension TransactionFilterModelPatterns on TransactionFilterModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TransactionFilterModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransactionFilterModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TransactionFilterModel value)  $default,){
final _that = this;
switch (_that) {
case _TransactionFilterModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TransactionFilterModel value)?  $default,){
final _that = this;
switch (_that) {
case _TransactionFilterModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<String> filterTypeList,  List<String> filterCategoryList,  List<String> filterWalletList,  String dateSort,  AppDateModel dateModel)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransactionFilterModel() when $default != null:
return $default(_that.filterTypeList,_that.filterCategoryList,_that.filterWalletList,_that.dateSort,_that.dateModel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<String> filterTypeList,  List<String> filterCategoryList,  List<String> filterWalletList,  String dateSort,  AppDateModel dateModel)  $default,) {final _that = this;
switch (_that) {
case _TransactionFilterModel():
return $default(_that.filterTypeList,_that.filterCategoryList,_that.filterWalletList,_that.dateSort,_that.dateModel);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<String> filterTypeList,  List<String> filterCategoryList,  List<String> filterWalletList,  String dateSort,  AppDateModel dateModel)?  $default,) {final _that = this;
switch (_that) {
case _TransactionFilterModel() when $default != null:
return $default(_that.filterTypeList,_that.filterCategoryList,_that.filterWalletList,_that.dateSort,_that.dateModel);case _:
  return null;

}
}

}

/// @nodoc


class _TransactionFilterModel implements TransactionFilterModel {
  const _TransactionFilterModel({final  List<String> filterTypeList = const [], final  List<String> filterCategoryList = const [], final  List<String> filterWalletList = const [], this.dateSort = "", required this.dateModel}): _filterTypeList = filterTypeList,_filterCategoryList = filterCategoryList,_filterWalletList = filterWalletList;
  

 final  List<String> _filterTypeList;
@override@JsonKey() List<String> get filterTypeList {
  if (_filterTypeList is EqualUnmodifiableListView) return _filterTypeList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_filterTypeList);
}

 final  List<String> _filterCategoryList;
@override@JsonKey() List<String> get filterCategoryList {
  if (_filterCategoryList is EqualUnmodifiableListView) return _filterCategoryList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_filterCategoryList);
}

 final  List<String> _filterWalletList;
@override@JsonKey() List<String> get filterWalletList {
  if (_filterWalletList is EqualUnmodifiableListView) return _filterWalletList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_filterWalletList);
}

@override@JsonKey() final  String dateSort;
@override final  AppDateModel dateModel;

/// Create a copy of TransactionFilterModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionFilterModelCopyWith<_TransactionFilterModel> get copyWith => __$TransactionFilterModelCopyWithImpl<_TransactionFilterModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionFilterModel&&const DeepCollectionEquality().equals(other._filterTypeList, _filterTypeList)&&const DeepCollectionEquality().equals(other._filterCategoryList, _filterCategoryList)&&const DeepCollectionEquality().equals(other._filterWalletList, _filterWalletList)&&(identical(other.dateSort, dateSort) || other.dateSort == dateSort)&&(identical(other.dateModel, dateModel) || other.dateModel == dateModel));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_filterTypeList),const DeepCollectionEquality().hash(_filterCategoryList),const DeepCollectionEquality().hash(_filterWalletList),dateSort,dateModel);

@override
String toString() {
  return 'TransactionFilterModel(filterTypeList: $filterTypeList, filterCategoryList: $filterCategoryList, filterWalletList: $filterWalletList, dateSort: $dateSort, dateModel: $dateModel)';
}


}

/// @nodoc
abstract mixin class _$TransactionFilterModelCopyWith<$Res> implements $TransactionFilterModelCopyWith<$Res> {
  factory _$TransactionFilterModelCopyWith(_TransactionFilterModel value, $Res Function(_TransactionFilterModel) _then) = __$TransactionFilterModelCopyWithImpl;
@override @useResult
$Res call({
 List<String> filterTypeList, List<String> filterCategoryList, List<String> filterWalletList, String dateSort, AppDateModel dateModel
});




}
/// @nodoc
class __$TransactionFilterModelCopyWithImpl<$Res>
    implements _$TransactionFilterModelCopyWith<$Res> {
  __$TransactionFilterModelCopyWithImpl(this._self, this._then);

  final _TransactionFilterModel _self;
  final $Res Function(_TransactionFilterModel) _then;

/// Create a copy of TransactionFilterModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? filterTypeList = null,Object? filterCategoryList = null,Object? filterWalletList = null,Object? dateSort = null,Object? dateModel = null,}) {
  return _then(_TransactionFilterModel(
filterTypeList: null == filterTypeList ? _self._filterTypeList : filterTypeList // ignore: cast_nullable_to_non_nullable
as List<String>,filterCategoryList: null == filterCategoryList ? _self._filterCategoryList : filterCategoryList // ignore: cast_nullable_to_non_nullable
as List<String>,filterWalletList: null == filterWalletList ? _self._filterWalletList : filterWalletList // ignore: cast_nullable_to_non_nullable
as List<String>,dateSort: null == dateSort ? _self.dateSort : dateSort // ignore: cast_nullable_to_non_nullable
as String,dateModel: null == dateModel ? _self.dateModel : dateModel // ignore: cast_nullable_to_non_nullable
as AppDateModel,
  ));
}


}

// dart format on
