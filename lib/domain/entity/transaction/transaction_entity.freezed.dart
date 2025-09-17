// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TransactionEntity {

 String get id; String get userId; String get category; String get wallet; String get type; String? get description; DateTime get dateTime; DateTime get createdTime; double get amount; String get formattedDate; String get formattedTime; String get createdDate; String get createdTimeFormatted;
/// Create a copy of TransactionEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionEntityCopyWith<TransactionEntity> get copyWith => _$TransactionEntityCopyWithImpl<TransactionEntity>(this as TransactionEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.category, category) || other.category == category)&&(identical(other.wallet, wallet) || other.wallet == wallet)&&(identical(other.type, type) || other.type == type)&&(identical(other.description, description) || other.description == description)&&(identical(other.dateTime, dateTime) || other.dateTime == dateTime)&&(identical(other.createdTime, createdTime) || other.createdTime == createdTime)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.formattedDate, formattedDate) || other.formattedDate == formattedDate)&&(identical(other.formattedTime, formattedTime) || other.formattedTime == formattedTime)&&(identical(other.createdDate, createdDate) || other.createdDate == createdDate)&&(identical(other.createdTimeFormatted, createdTimeFormatted) || other.createdTimeFormatted == createdTimeFormatted));
}


@override
int get hashCode => Object.hash(runtimeType,id,userId,category,wallet,type,description,dateTime,createdTime,amount,formattedDate,formattedTime,createdDate,createdTimeFormatted);

@override
String toString() {
  return 'TransactionEntity(id: $id, userId: $userId, category: $category, wallet: $wallet, type: $type, description: $description, dateTime: $dateTime, createdTime: $createdTime, amount: $amount, formattedDate: $formattedDate, formattedTime: $formattedTime, createdDate: $createdDate, createdTimeFormatted: $createdTimeFormatted)';
}


}

/// @nodoc
abstract mixin class $TransactionEntityCopyWith<$Res>  {
  factory $TransactionEntityCopyWith(TransactionEntity value, $Res Function(TransactionEntity) _then) = _$TransactionEntityCopyWithImpl;
@useResult
$Res call({
 String id, String userId, String category, String wallet, String type, String? description, DateTime dateTime, DateTime createdTime, double amount, String formattedDate, String formattedTime, String createdDate, String createdTimeFormatted
});




}
/// @nodoc
class _$TransactionEntityCopyWithImpl<$Res>
    implements $TransactionEntityCopyWith<$Res> {
  _$TransactionEntityCopyWithImpl(this._self, this._then);

  final TransactionEntity _self;
  final $Res Function(TransactionEntity) _then;

/// Create a copy of TransactionEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? category = null,Object? wallet = null,Object? type = null,Object? description = freezed,Object? dateTime = null,Object? createdTime = null,Object? amount = null,Object? formattedDate = null,Object? formattedTime = null,Object? createdDate = null,Object? createdTimeFormatted = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,wallet: null == wallet ? _self.wallet : wallet // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,dateTime: null == dateTime ? _self.dateTime : dateTime // ignore: cast_nullable_to_non_nullable
as DateTime,createdTime: null == createdTime ? _self.createdTime : createdTime // ignore: cast_nullable_to_non_nullable
as DateTime,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,formattedDate: null == formattedDate ? _self.formattedDate : formattedDate // ignore: cast_nullable_to_non_nullable
as String,formattedTime: null == formattedTime ? _self.formattedTime : formattedTime // ignore: cast_nullable_to_non_nullable
as String,createdDate: null == createdDate ? _self.createdDate : createdDate // ignore: cast_nullable_to_non_nullable
as String,createdTimeFormatted: null == createdTimeFormatted ? _self.createdTimeFormatted : createdTimeFormatted // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TransactionEntity].
extension TransactionEntityPatterns on TransactionEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TransactionEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransactionEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TransactionEntity value)  $default,){
final _that = this;
switch (_that) {
case _TransactionEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TransactionEntity value)?  $default,){
final _that = this;
switch (_that) {
case _TransactionEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String userId,  String category,  String wallet,  String type,  String? description,  DateTime dateTime,  DateTime createdTime,  double amount,  String formattedDate,  String formattedTime,  String createdDate,  String createdTimeFormatted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransactionEntity() when $default != null:
return $default(_that.id,_that.userId,_that.category,_that.wallet,_that.type,_that.description,_that.dateTime,_that.createdTime,_that.amount,_that.formattedDate,_that.formattedTime,_that.createdDate,_that.createdTimeFormatted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String userId,  String category,  String wallet,  String type,  String? description,  DateTime dateTime,  DateTime createdTime,  double amount,  String formattedDate,  String formattedTime,  String createdDate,  String createdTimeFormatted)  $default,) {final _that = this;
switch (_that) {
case _TransactionEntity():
return $default(_that.id,_that.userId,_that.category,_that.wallet,_that.type,_that.description,_that.dateTime,_that.createdTime,_that.amount,_that.formattedDate,_that.formattedTime,_that.createdDate,_that.createdTimeFormatted);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String userId,  String category,  String wallet,  String type,  String? description,  DateTime dateTime,  DateTime createdTime,  double amount,  String formattedDate,  String formattedTime,  String createdDate,  String createdTimeFormatted)?  $default,) {final _that = this;
switch (_that) {
case _TransactionEntity() when $default != null:
return $default(_that.id,_that.userId,_that.category,_that.wallet,_that.type,_that.description,_that.dateTime,_that.createdTime,_that.amount,_that.formattedDate,_that.formattedTime,_that.createdDate,_that.createdTimeFormatted);case _:
  return null;

}
}

}

/// @nodoc


class _TransactionEntity implements TransactionEntity {
  const _TransactionEntity({required this.id, required this.userId, required this.category, required this.wallet, required this.type, this.description, required this.dateTime, required this.createdTime, required this.amount, required this.formattedDate, required this.formattedTime, required this.createdDate, required this.createdTimeFormatted});
  

@override final  String id;
@override final  String userId;
@override final  String category;
@override final  String wallet;
@override final  String type;
@override final  String? description;
@override final  DateTime dateTime;
@override final  DateTime createdTime;
@override final  double amount;
@override final  String formattedDate;
@override final  String formattedTime;
@override final  String createdDate;
@override final  String createdTimeFormatted;

/// Create a copy of TransactionEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionEntityCopyWith<_TransactionEntity> get copyWith => __$TransactionEntityCopyWithImpl<_TransactionEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.category, category) || other.category == category)&&(identical(other.wallet, wallet) || other.wallet == wallet)&&(identical(other.type, type) || other.type == type)&&(identical(other.description, description) || other.description == description)&&(identical(other.dateTime, dateTime) || other.dateTime == dateTime)&&(identical(other.createdTime, createdTime) || other.createdTime == createdTime)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.formattedDate, formattedDate) || other.formattedDate == formattedDate)&&(identical(other.formattedTime, formattedTime) || other.formattedTime == formattedTime)&&(identical(other.createdDate, createdDate) || other.createdDate == createdDate)&&(identical(other.createdTimeFormatted, createdTimeFormatted) || other.createdTimeFormatted == createdTimeFormatted));
}


@override
int get hashCode => Object.hash(runtimeType,id,userId,category,wallet,type,description,dateTime,createdTime,amount,formattedDate,formattedTime,createdDate,createdTimeFormatted);

@override
String toString() {
  return 'TransactionEntity(id: $id, userId: $userId, category: $category, wallet: $wallet, type: $type, description: $description, dateTime: $dateTime, createdTime: $createdTime, amount: $amount, formattedDate: $formattedDate, formattedTime: $formattedTime, createdDate: $createdDate, createdTimeFormatted: $createdTimeFormatted)';
}


}

/// @nodoc
abstract mixin class _$TransactionEntityCopyWith<$Res> implements $TransactionEntityCopyWith<$Res> {
  factory _$TransactionEntityCopyWith(_TransactionEntity value, $Res Function(_TransactionEntity) _then) = __$TransactionEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String userId, String category, String wallet, String type, String? description, DateTime dateTime, DateTime createdTime, double amount, String formattedDate, String formattedTime, String createdDate, String createdTimeFormatted
});




}
/// @nodoc
class __$TransactionEntityCopyWithImpl<$Res>
    implements _$TransactionEntityCopyWith<$Res> {
  __$TransactionEntityCopyWithImpl(this._self, this._then);

  final _TransactionEntity _self;
  final $Res Function(_TransactionEntity) _then;

/// Create a copy of TransactionEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? category = null,Object? wallet = null,Object? type = null,Object? description = freezed,Object? dateTime = null,Object? createdTime = null,Object? amount = null,Object? formattedDate = null,Object? formattedTime = null,Object? createdDate = null,Object? createdTimeFormatted = null,}) {
  return _then(_TransactionEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,wallet: null == wallet ? _self.wallet : wallet // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,dateTime: null == dateTime ? _self.dateTime : dateTime // ignore: cast_nullable_to_non_nullable
as DateTime,createdTime: null == createdTime ? _self.createdTime : createdTime // ignore: cast_nullable_to_non_nullable
as DateTime,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,formattedDate: null == formattedDate ? _self.formattedDate : formattedDate // ignore: cast_nullable_to_non_nullable
as String,formattedTime: null == formattedTime ? _self.formattedTime : formattedTime // ignore: cast_nullable_to_non_nullable
as String,createdDate: null == createdDate ? _self.createdDate : createdDate // ignore: cast_nullable_to_non_nullable
as String,createdTimeFormatted: null == createdTimeFormatted ? _self.createdTimeFormatted : createdTimeFormatted // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
