// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NoteEntity {

 String get userId; String get id; String get title; String get priority; String get description; bool get isRemind; DateTime? get reminderTime; DateTime get createdTime; String? get rDate; String? get rTime; String get date; String get time;
/// Create a copy of NoteEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NoteEntityCopyWith<NoteEntity> get copyWith => _$NoteEntityCopyWithImpl<NoteEntity>(this as NoteEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NoteEntity&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.description, description) || other.description == description)&&(identical(other.isRemind, isRemind) || other.isRemind == isRemind)&&(identical(other.reminderTime, reminderTime) || other.reminderTime == reminderTime)&&(identical(other.createdTime, createdTime) || other.createdTime == createdTime)&&(identical(other.rDate, rDate) || other.rDate == rDate)&&(identical(other.rTime, rTime) || other.rTime == rTime)&&(identical(other.date, date) || other.date == date)&&(identical(other.time, time) || other.time == time));
}


@override
int get hashCode => Object.hash(runtimeType,userId,id,title,priority,description,isRemind,reminderTime,createdTime,rDate,rTime,date,time);

@override
String toString() {
  return 'NoteEntity(userId: $userId, id: $id, title: $title, priority: $priority, description: $description, isRemind: $isRemind, reminderTime: $reminderTime, createdTime: $createdTime, rDate: $rDate, rTime: $rTime, date: $date, time: $time)';
}


}

/// @nodoc
abstract mixin class $NoteEntityCopyWith<$Res>  {
  factory $NoteEntityCopyWith(NoteEntity value, $Res Function(NoteEntity) _then) = _$NoteEntityCopyWithImpl;
@useResult
$Res call({
 String userId, String id, String title, String priority, String description, bool isRemind, DateTime? reminderTime, DateTime createdTime, String? rDate, String? rTime, String date, String time
});




}
/// @nodoc
class _$NoteEntityCopyWithImpl<$Res>
    implements $NoteEntityCopyWith<$Res> {
  _$NoteEntityCopyWithImpl(this._self, this._then);

  final NoteEntity _self;
  final $Res Function(NoteEntity) _then;

/// Create a copy of NoteEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? id = null,Object? title = null,Object? priority = null,Object? description = null,Object? isRemind = null,Object? reminderTime = freezed,Object? createdTime = null,Object? rDate = freezed,Object? rTime = freezed,Object? date = null,Object? time = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,isRemind: null == isRemind ? _self.isRemind : isRemind // ignore: cast_nullable_to_non_nullable
as bool,reminderTime: freezed == reminderTime ? _self.reminderTime : reminderTime // ignore: cast_nullable_to_non_nullable
as DateTime?,createdTime: null == createdTime ? _self.createdTime : createdTime // ignore: cast_nullable_to_non_nullable
as DateTime,rDate: freezed == rDate ? _self.rDate : rDate // ignore: cast_nullable_to_non_nullable
as String?,rTime: freezed == rTime ? _self.rTime : rTime // ignore: cast_nullable_to_non_nullable
as String?,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [NoteEntity].
extension NoteEntityPatterns on NoteEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NoteEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NoteEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NoteEntity value)  $default,){
final _that = this;
switch (_that) {
case _NoteEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NoteEntity value)?  $default,){
final _that = this;
switch (_that) {
case _NoteEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userId,  String id,  String title,  String priority,  String description,  bool isRemind,  DateTime? reminderTime,  DateTime createdTime,  String? rDate,  String? rTime,  String date,  String time)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NoteEntity() when $default != null:
return $default(_that.userId,_that.id,_that.title,_that.priority,_that.description,_that.isRemind,_that.reminderTime,_that.createdTime,_that.rDate,_that.rTime,_that.date,_that.time);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userId,  String id,  String title,  String priority,  String description,  bool isRemind,  DateTime? reminderTime,  DateTime createdTime,  String? rDate,  String? rTime,  String date,  String time)  $default,) {final _that = this;
switch (_that) {
case _NoteEntity():
return $default(_that.userId,_that.id,_that.title,_that.priority,_that.description,_that.isRemind,_that.reminderTime,_that.createdTime,_that.rDate,_that.rTime,_that.date,_that.time);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userId,  String id,  String title,  String priority,  String description,  bool isRemind,  DateTime? reminderTime,  DateTime createdTime,  String? rDate,  String? rTime,  String date,  String time)?  $default,) {final _that = this;
switch (_that) {
case _NoteEntity() when $default != null:
return $default(_that.userId,_that.id,_that.title,_that.priority,_that.description,_that.isRemind,_that.reminderTime,_that.createdTime,_that.rDate,_that.rTime,_that.date,_that.time);case _:
  return null;

}
}

}

/// @nodoc


class _NoteEntity implements NoteEntity {
  const _NoteEntity({required this.userId, required this.id, required this.title, required this.priority, this.description = "", required this.isRemind, this.reminderTime, required this.createdTime, this.rDate, this.rTime, required this.date, required this.time});
  

@override final  String userId;
@override final  String id;
@override final  String title;
@override final  String priority;
@override@JsonKey() final  String description;
@override final  bool isRemind;
@override final  DateTime? reminderTime;
@override final  DateTime createdTime;
@override final  String? rDate;
@override final  String? rTime;
@override final  String date;
@override final  String time;

/// Create a copy of NoteEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NoteEntityCopyWith<_NoteEntity> get copyWith => __$NoteEntityCopyWithImpl<_NoteEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NoteEntity&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.description, description) || other.description == description)&&(identical(other.isRemind, isRemind) || other.isRemind == isRemind)&&(identical(other.reminderTime, reminderTime) || other.reminderTime == reminderTime)&&(identical(other.createdTime, createdTime) || other.createdTime == createdTime)&&(identical(other.rDate, rDate) || other.rDate == rDate)&&(identical(other.rTime, rTime) || other.rTime == rTime)&&(identical(other.date, date) || other.date == date)&&(identical(other.time, time) || other.time == time));
}


@override
int get hashCode => Object.hash(runtimeType,userId,id,title,priority,description,isRemind,reminderTime,createdTime,rDate,rTime,date,time);

@override
String toString() {
  return 'NoteEntity(userId: $userId, id: $id, title: $title, priority: $priority, description: $description, isRemind: $isRemind, reminderTime: $reminderTime, createdTime: $createdTime, rDate: $rDate, rTime: $rTime, date: $date, time: $time)';
}


}

/// @nodoc
abstract mixin class _$NoteEntityCopyWith<$Res> implements $NoteEntityCopyWith<$Res> {
  factory _$NoteEntityCopyWith(_NoteEntity value, $Res Function(_NoteEntity) _then) = __$NoteEntityCopyWithImpl;
@override @useResult
$Res call({
 String userId, String id, String title, String priority, String description, bool isRemind, DateTime? reminderTime, DateTime createdTime, String? rDate, String? rTime, String date, String time
});




}
/// @nodoc
class __$NoteEntityCopyWithImpl<$Res>
    implements _$NoteEntityCopyWith<$Res> {
  __$NoteEntityCopyWithImpl(this._self, this._then);

  final _NoteEntity _self;
  final $Res Function(_NoteEntity) _then;

/// Create a copy of NoteEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? id = null,Object? title = null,Object? priority = null,Object? description = null,Object? isRemind = null,Object? reminderTime = freezed,Object? createdTime = null,Object? rDate = freezed,Object? rTime = freezed,Object? date = null,Object? time = null,}) {
  return _then(_NoteEntity(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,isRemind: null == isRemind ? _self.isRemind : isRemind // ignore: cast_nullable_to_non_nullable
as bool,reminderTime: freezed == reminderTime ? _self.reminderTime : reminderTime // ignore: cast_nullable_to_non_nullable
as DateTime?,createdTime: null == createdTime ? _self.createdTime : createdTime // ignore: cast_nullable_to_non_nullable
as DateTime,rDate: freezed == rDate ? _self.rDate : rDate // ignore: cast_nullable_to_non_nullable
as String?,rTime: freezed == rTime ? _self.rTime : rTime // ignore: cast_nullable_to_non_nullable
as String?,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
