// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NoteModel {

 String get userId; String get id; String get title; String get priority; String get description; bool get isRemind;@TimestampDateTimeConverter() DateTime? get reminderTime;@TimestampDateTimeConverter() DateTime get createdTime;
/// Create a copy of NoteModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NoteModelCopyWith<NoteModel> get copyWith => _$NoteModelCopyWithImpl<NoteModel>(this as NoteModel, _$identity);

  /// Serializes this NoteModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NoteModel&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.description, description) || other.description == description)&&(identical(other.isRemind, isRemind) || other.isRemind == isRemind)&&(identical(other.reminderTime, reminderTime) || other.reminderTime == reminderTime)&&(identical(other.createdTime, createdTime) || other.createdTime == createdTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,id,title,priority,description,isRemind,reminderTime,createdTime);

@override
String toString() {
  return 'NoteModel(userId: $userId, id: $id, title: $title, priority: $priority, description: $description, isRemind: $isRemind, reminderTime: $reminderTime, createdTime: $createdTime)';
}


}

/// @nodoc
abstract mixin class $NoteModelCopyWith<$Res>  {
  factory $NoteModelCopyWith(NoteModel value, $Res Function(NoteModel) _then) = _$NoteModelCopyWithImpl;
@useResult
$Res call({
 String userId, String id, String title, String priority, String description, bool isRemind,@TimestampDateTimeConverter() DateTime? reminderTime,@TimestampDateTimeConverter() DateTime createdTime
});




}
/// @nodoc
class _$NoteModelCopyWithImpl<$Res>
    implements $NoteModelCopyWith<$Res> {
  _$NoteModelCopyWithImpl(this._self, this._then);

  final NoteModel _self;
  final $Res Function(NoteModel) _then;

/// Create a copy of NoteModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? id = null,Object? title = null,Object? priority = null,Object? description = null,Object? isRemind = null,Object? reminderTime = freezed,Object? createdTime = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,isRemind: null == isRemind ? _self.isRemind : isRemind // ignore: cast_nullable_to_non_nullable
as bool,reminderTime: freezed == reminderTime ? _self.reminderTime : reminderTime // ignore: cast_nullable_to_non_nullable
as DateTime?,createdTime: null == createdTime ? _self.createdTime : createdTime // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [NoteModel].
extension NoteModelPatterns on NoteModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NoteModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NoteModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NoteModel value)  $default,){
final _that = this;
switch (_that) {
case _NoteModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NoteModel value)?  $default,){
final _that = this;
switch (_that) {
case _NoteModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userId,  String id,  String title,  String priority,  String description,  bool isRemind, @TimestampDateTimeConverter()  DateTime? reminderTime, @TimestampDateTimeConverter()  DateTime createdTime)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NoteModel() when $default != null:
return $default(_that.userId,_that.id,_that.title,_that.priority,_that.description,_that.isRemind,_that.reminderTime,_that.createdTime);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userId,  String id,  String title,  String priority,  String description,  bool isRemind, @TimestampDateTimeConverter()  DateTime? reminderTime, @TimestampDateTimeConverter()  DateTime createdTime)  $default,) {final _that = this;
switch (_that) {
case _NoteModel():
return $default(_that.userId,_that.id,_that.title,_that.priority,_that.description,_that.isRemind,_that.reminderTime,_that.createdTime);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userId,  String id,  String title,  String priority,  String description,  bool isRemind, @TimestampDateTimeConverter()  DateTime? reminderTime, @TimestampDateTimeConverter()  DateTime createdTime)?  $default,) {final _that = this;
switch (_that) {
case _NoteModel() when $default != null:
return $default(_that.userId,_that.id,_that.title,_that.priority,_that.description,_that.isRemind,_that.reminderTime,_that.createdTime);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NoteModel implements NoteModel {
  const _NoteModel({required this.userId, required this.id, required this.title, required this.priority, this.description = "", required this.isRemind, @TimestampDateTimeConverter() this.reminderTime, @TimestampDateTimeConverter() required this.createdTime});
  factory _NoteModel.fromJson(Map<String, dynamic> json) => _$NoteModelFromJson(json);

@override final  String userId;
@override final  String id;
@override final  String title;
@override final  String priority;
@override@JsonKey() final  String description;
@override final  bool isRemind;
@override@TimestampDateTimeConverter() final  DateTime? reminderTime;
@override@TimestampDateTimeConverter() final  DateTime createdTime;

/// Create a copy of NoteModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NoteModelCopyWith<_NoteModel> get copyWith => __$NoteModelCopyWithImpl<_NoteModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NoteModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NoteModel&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.description, description) || other.description == description)&&(identical(other.isRemind, isRemind) || other.isRemind == isRemind)&&(identical(other.reminderTime, reminderTime) || other.reminderTime == reminderTime)&&(identical(other.createdTime, createdTime) || other.createdTime == createdTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,id,title,priority,description,isRemind,reminderTime,createdTime);

@override
String toString() {
  return 'NoteModel(userId: $userId, id: $id, title: $title, priority: $priority, description: $description, isRemind: $isRemind, reminderTime: $reminderTime, createdTime: $createdTime)';
}


}

/// @nodoc
abstract mixin class _$NoteModelCopyWith<$Res> implements $NoteModelCopyWith<$Res> {
  factory _$NoteModelCopyWith(_NoteModel value, $Res Function(_NoteModel) _then) = __$NoteModelCopyWithImpl;
@override @useResult
$Res call({
 String userId, String id, String title, String priority, String description, bool isRemind,@TimestampDateTimeConverter() DateTime? reminderTime,@TimestampDateTimeConverter() DateTime createdTime
});




}
/// @nodoc
class __$NoteModelCopyWithImpl<$Res>
    implements _$NoteModelCopyWith<$Res> {
  __$NoteModelCopyWithImpl(this._self, this._then);

  final _NoteModel _self;
  final $Res Function(_NoteModel) _then;

/// Create a copy of NoteModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? id = null,Object? title = null,Object? priority = null,Object? description = null,Object? isRemind = null,Object? reminderTime = freezed,Object? createdTime = null,}) {
  return _then(_NoteModel(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,isRemind: null == isRemind ? _self.isRemind : isRemind // ignore: cast_nullable_to_non_nullable
as bool,reminderTime: freezed == reminderTime ? _self.reminderTime : reminderTime // ignore: cast_nullable_to_non_nullable
as DateTime?,createdTime: null == createdTime ? _self.createdTime : createdTime // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
