// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_note_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AddNoteEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddNoteEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddNoteEvent()';
}


}

/// @nodoc
class $AddNoteEventCopyWith<$Res>  {
$AddNoteEventCopyWith(AddNoteEvent _, $Res Function(AddNoteEvent) __);
}


/// Adds pattern-matching-related methods to [AddNoteEvent].
extension AddNoteEventPatterns on AddNoteEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( AddNoteTitleChangeEvent value)?  onTitleChange,TResult Function( AddNoteDescChangeEvent value)?  onDescriptionChange,TResult Function( AddNotePriorityChangeEvent value)?  onPriorityChange,TResult Function( AddNoteRemindToggleEvent value)?  onRemindToggle,TResult Function( AddNoteDateChangeEvent value)?  onRemindDateChange,TResult Function( NoteAddEvent value)?  onNoteAddEvent,required TResult orElse(),}){
final _that = this;
switch (_that) {
case AddNoteTitleChangeEvent() when onTitleChange != null:
return onTitleChange(_that);case AddNoteDescChangeEvent() when onDescriptionChange != null:
return onDescriptionChange(_that);case AddNotePriorityChangeEvent() when onPriorityChange != null:
return onPriorityChange(_that);case AddNoteRemindToggleEvent() when onRemindToggle != null:
return onRemindToggle(_that);case AddNoteDateChangeEvent() when onRemindDateChange != null:
return onRemindDateChange(_that);case NoteAddEvent() when onNoteAddEvent != null:
return onNoteAddEvent(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( AddNoteTitleChangeEvent value)  onTitleChange,required TResult Function( AddNoteDescChangeEvent value)  onDescriptionChange,required TResult Function( AddNotePriorityChangeEvent value)  onPriorityChange,required TResult Function( AddNoteRemindToggleEvent value)  onRemindToggle,required TResult Function( AddNoteDateChangeEvent value)  onRemindDateChange,required TResult Function( NoteAddEvent value)  onNoteAddEvent,}){
final _that = this;
switch (_that) {
case AddNoteTitleChangeEvent():
return onTitleChange(_that);case AddNoteDescChangeEvent():
return onDescriptionChange(_that);case AddNotePriorityChangeEvent():
return onPriorityChange(_that);case AddNoteRemindToggleEvent():
return onRemindToggle(_that);case AddNoteDateChangeEvent():
return onRemindDateChange(_that);case NoteAddEvent():
return onNoteAddEvent(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( AddNoteTitleChangeEvent value)?  onTitleChange,TResult? Function( AddNoteDescChangeEvent value)?  onDescriptionChange,TResult? Function( AddNotePriorityChangeEvent value)?  onPriorityChange,TResult? Function( AddNoteRemindToggleEvent value)?  onRemindToggle,TResult? Function( AddNoteDateChangeEvent value)?  onRemindDateChange,TResult? Function( NoteAddEvent value)?  onNoteAddEvent,}){
final _that = this;
switch (_that) {
case AddNoteTitleChangeEvent() when onTitleChange != null:
return onTitleChange(_that);case AddNoteDescChangeEvent() when onDescriptionChange != null:
return onDescriptionChange(_that);case AddNotePriorityChangeEvent() when onPriorityChange != null:
return onPriorityChange(_that);case AddNoteRemindToggleEvent() when onRemindToggle != null:
return onRemindToggle(_that);case AddNoteDateChangeEvent() when onRemindDateChange != null:
return onRemindDateChange(_that);case NoteAddEvent() when onNoteAddEvent != null:
return onNoteAddEvent(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String title)?  onTitleChange,TResult Function( String desc)?  onDescriptionChange,TResult Function( String priority)?  onPriorityChange,TResult Function( bool value)?  onRemindToggle,TResult Function( DateTime date)?  onRemindDateChange,TResult Function()?  onNoteAddEvent,required TResult orElse(),}) {final _that = this;
switch (_that) {
case AddNoteTitleChangeEvent() when onTitleChange != null:
return onTitleChange(_that.title);case AddNoteDescChangeEvent() when onDescriptionChange != null:
return onDescriptionChange(_that.desc);case AddNotePriorityChangeEvent() when onPriorityChange != null:
return onPriorityChange(_that.priority);case AddNoteRemindToggleEvent() when onRemindToggle != null:
return onRemindToggle(_that.value);case AddNoteDateChangeEvent() when onRemindDateChange != null:
return onRemindDateChange(_that.date);case NoteAddEvent() when onNoteAddEvent != null:
return onNoteAddEvent();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String title)  onTitleChange,required TResult Function( String desc)  onDescriptionChange,required TResult Function( String priority)  onPriorityChange,required TResult Function( bool value)  onRemindToggle,required TResult Function( DateTime date)  onRemindDateChange,required TResult Function()  onNoteAddEvent,}) {final _that = this;
switch (_that) {
case AddNoteTitleChangeEvent():
return onTitleChange(_that.title);case AddNoteDescChangeEvent():
return onDescriptionChange(_that.desc);case AddNotePriorityChangeEvent():
return onPriorityChange(_that.priority);case AddNoteRemindToggleEvent():
return onRemindToggle(_that.value);case AddNoteDateChangeEvent():
return onRemindDateChange(_that.date);case NoteAddEvent():
return onNoteAddEvent();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String title)?  onTitleChange,TResult? Function( String desc)?  onDescriptionChange,TResult? Function( String priority)?  onPriorityChange,TResult? Function( bool value)?  onRemindToggle,TResult? Function( DateTime date)?  onRemindDateChange,TResult? Function()?  onNoteAddEvent,}) {final _that = this;
switch (_that) {
case AddNoteTitleChangeEvent() when onTitleChange != null:
return onTitleChange(_that.title);case AddNoteDescChangeEvent() when onDescriptionChange != null:
return onDescriptionChange(_that.desc);case AddNotePriorityChangeEvent() when onPriorityChange != null:
return onPriorityChange(_that.priority);case AddNoteRemindToggleEvent() when onRemindToggle != null:
return onRemindToggle(_that.value);case AddNoteDateChangeEvent() when onRemindDateChange != null:
return onRemindDateChange(_that.date);case NoteAddEvent() when onNoteAddEvent != null:
return onNoteAddEvent();case _:
  return null;

}
}

}

/// @nodoc


class AddNoteTitleChangeEvent implements AddNoteEvent {
  const AddNoteTitleChangeEvent(this.title);
  

 final  String title;

/// Create a copy of AddNoteEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddNoteTitleChangeEventCopyWith<AddNoteTitleChangeEvent> get copyWith => _$AddNoteTitleChangeEventCopyWithImpl<AddNoteTitleChangeEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddNoteTitleChangeEvent&&(identical(other.title, title) || other.title == title));
}


@override
int get hashCode => Object.hash(runtimeType,title);

@override
String toString() {
  return 'AddNoteEvent.onTitleChange(title: $title)';
}


}

/// @nodoc
abstract mixin class $AddNoteTitleChangeEventCopyWith<$Res> implements $AddNoteEventCopyWith<$Res> {
  factory $AddNoteTitleChangeEventCopyWith(AddNoteTitleChangeEvent value, $Res Function(AddNoteTitleChangeEvent) _then) = _$AddNoteTitleChangeEventCopyWithImpl;
@useResult
$Res call({
 String title
});




}
/// @nodoc
class _$AddNoteTitleChangeEventCopyWithImpl<$Res>
    implements $AddNoteTitleChangeEventCopyWith<$Res> {
  _$AddNoteTitleChangeEventCopyWithImpl(this._self, this._then);

  final AddNoteTitleChangeEvent _self;
  final $Res Function(AddNoteTitleChangeEvent) _then;

/// Create a copy of AddNoteEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? title = null,}) {
  return _then(AddNoteTitleChangeEvent(
null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class AddNoteDescChangeEvent implements AddNoteEvent {
  const AddNoteDescChangeEvent(this.desc);
  

 final  String desc;

/// Create a copy of AddNoteEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddNoteDescChangeEventCopyWith<AddNoteDescChangeEvent> get copyWith => _$AddNoteDescChangeEventCopyWithImpl<AddNoteDescChangeEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddNoteDescChangeEvent&&(identical(other.desc, desc) || other.desc == desc));
}


@override
int get hashCode => Object.hash(runtimeType,desc);

@override
String toString() {
  return 'AddNoteEvent.onDescriptionChange(desc: $desc)';
}


}

/// @nodoc
abstract mixin class $AddNoteDescChangeEventCopyWith<$Res> implements $AddNoteEventCopyWith<$Res> {
  factory $AddNoteDescChangeEventCopyWith(AddNoteDescChangeEvent value, $Res Function(AddNoteDescChangeEvent) _then) = _$AddNoteDescChangeEventCopyWithImpl;
@useResult
$Res call({
 String desc
});




}
/// @nodoc
class _$AddNoteDescChangeEventCopyWithImpl<$Res>
    implements $AddNoteDescChangeEventCopyWith<$Res> {
  _$AddNoteDescChangeEventCopyWithImpl(this._self, this._then);

  final AddNoteDescChangeEvent _self;
  final $Res Function(AddNoteDescChangeEvent) _then;

/// Create a copy of AddNoteEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? desc = null,}) {
  return _then(AddNoteDescChangeEvent(
null == desc ? _self.desc : desc // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class AddNotePriorityChangeEvent implements AddNoteEvent {
  const AddNotePriorityChangeEvent(this.priority);
  

 final  String priority;

/// Create a copy of AddNoteEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddNotePriorityChangeEventCopyWith<AddNotePriorityChangeEvent> get copyWith => _$AddNotePriorityChangeEventCopyWithImpl<AddNotePriorityChangeEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddNotePriorityChangeEvent&&(identical(other.priority, priority) || other.priority == priority));
}


@override
int get hashCode => Object.hash(runtimeType,priority);

@override
String toString() {
  return 'AddNoteEvent.onPriorityChange(priority: $priority)';
}


}

/// @nodoc
abstract mixin class $AddNotePriorityChangeEventCopyWith<$Res> implements $AddNoteEventCopyWith<$Res> {
  factory $AddNotePriorityChangeEventCopyWith(AddNotePriorityChangeEvent value, $Res Function(AddNotePriorityChangeEvent) _then) = _$AddNotePriorityChangeEventCopyWithImpl;
@useResult
$Res call({
 String priority
});




}
/// @nodoc
class _$AddNotePriorityChangeEventCopyWithImpl<$Res>
    implements $AddNotePriorityChangeEventCopyWith<$Res> {
  _$AddNotePriorityChangeEventCopyWithImpl(this._self, this._then);

  final AddNotePriorityChangeEvent _self;
  final $Res Function(AddNotePriorityChangeEvent) _then;

/// Create a copy of AddNoteEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? priority = null,}) {
  return _then(AddNotePriorityChangeEvent(
null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class AddNoteRemindToggleEvent implements AddNoteEvent {
  const AddNoteRemindToggleEvent(this.value);
  

 final  bool value;

/// Create a copy of AddNoteEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddNoteRemindToggleEventCopyWith<AddNoteRemindToggleEvent> get copyWith => _$AddNoteRemindToggleEventCopyWithImpl<AddNoteRemindToggleEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddNoteRemindToggleEvent&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'AddNoteEvent.onRemindToggle(value: $value)';
}


}

/// @nodoc
abstract mixin class $AddNoteRemindToggleEventCopyWith<$Res> implements $AddNoteEventCopyWith<$Res> {
  factory $AddNoteRemindToggleEventCopyWith(AddNoteRemindToggleEvent value, $Res Function(AddNoteRemindToggleEvent) _then) = _$AddNoteRemindToggleEventCopyWithImpl;
@useResult
$Res call({
 bool value
});




}
/// @nodoc
class _$AddNoteRemindToggleEventCopyWithImpl<$Res>
    implements $AddNoteRemindToggleEventCopyWith<$Res> {
  _$AddNoteRemindToggleEventCopyWithImpl(this._self, this._then);

  final AddNoteRemindToggleEvent _self;
  final $Res Function(AddNoteRemindToggleEvent) _then;

/// Create a copy of AddNoteEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(AddNoteRemindToggleEvent(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class AddNoteDateChangeEvent implements AddNoteEvent {
  const AddNoteDateChangeEvent(this.date);
  

 final  DateTime date;

/// Create a copy of AddNoteEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddNoteDateChangeEventCopyWith<AddNoteDateChangeEvent> get copyWith => _$AddNoteDateChangeEventCopyWithImpl<AddNoteDateChangeEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddNoteDateChangeEvent&&(identical(other.date, date) || other.date == date));
}


@override
int get hashCode => Object.hash(runtimeType,date);

@override
String toString() {
  return 'AddNoteEvent.onRemindDateChange(date: $date)';
}


}

/// @nodoc
abstract mixin class $AddNoteDateChangeEventCopyWith<$Res> implements $AddNoteEventCopyWith<$Res> {
  factory $AddNoteDateChangeEventCopyWith(AddNoteDateChangeEvent value, $Res Function(AddNoteDateChangeEvent) _then) = _$AddNoteDateChangeEventCopyWithImpl;
@useResult
$Res call({
 DateTime date
});




}
/// @nodoc
class _$AddNoteDateChangeEventCopyWithImpl<$Res>
    implements $AddNoteDateChangeEventCopyWith<$Res> {
  _$AddNoteDateChangeEventCopyWithImpl(this._self, this._then);

  final AddNoteDateChangeEvent _self;
  final $Res Function(AddNoteDateChangeEvent) _then;

/// Create a copy of AddNoteEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? date = null,}) {
  return _then(AddNoteDateChangeEvent(
null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

/// @nodoc


class NoteAddEvent implements AddNoteEvent {
  const NoteAddEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NoteAddEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddNoteEvent.onNoteAddEvent()';
}


}




// dart format on
