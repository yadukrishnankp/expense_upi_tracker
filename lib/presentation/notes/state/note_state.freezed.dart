// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NoteState {

 FirestoreFetchState get noteList;
/// Create a copy of NoteState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NoteStateCopyWith<NoteState> get copyWith => _$NoteStateCopyWithImpl<NoteState>(this as NoteState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NoteState&&(identical(other.noteList, noteList) || other.noteList == noteList));
}


@override
int get hashCode => Object.hash(runtimeType,noteList);

@override
String toString() {
  return 'NoteState(noteList: $noteList)';
}


}

/// @nodoc
abstract mixin class $NoteStateCopyWith<$Res>  {
  factory $NoteStateCopyWith(NoteState value, $Res Function(NoteState) _then) = _$NoteStateCopyWithImpl;
@useResult
$Res call({
 FirestoreFetchState noteList
});


$FirestoreFetchStateCopyWith<dynamic, $Res> get noteList;

}
/// @nodoc
class _$NoteStateCopyWithImpl<$Res>
    implements $NoteStateCopyWith<$Res> {
  _$NoteStateCopyWithImpl(this._self, this._then);

  final NoteState _self;
  final $Res Function(NoteState) _then;

/// Create a copy of NoteState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? noteList = null,}) {
  return _then(_self.copyWith(
noteList: null == noteList ? _self.noteList : noteList // ignore: cast_nullable_to_non_nullable
as FirestoreFetchState,
  ));
}
/// Create a copy of NoteState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FirestoreFetchStateCopyWith<dynamic, $Res> get noteList {
  
  return $FirestoreFetchStateCopyWith<dynamic, $Res>(_self.noteList, (value) {
    return _then(_self.copyWith(noteList: value));
  });
}
}


/// Adds pattern-matching-related methods to [NoteState].
extension NoteStatePatterns on NoteState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NoteState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NoteState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NoteState value)  $default,){
final _that = this;
switch (_that) {
case _NoteState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NoteState value)?  $default,){
final _that = this;
switch (_that) {
case _NoteState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( FirestoreFetchState noteList)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NoteState() when $default != null:
return $default(_that.noteList);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( FirestoreFetchState noteList)  $default,) {final _that = this;
switch (_that) {
case _NoteState():
return $default(_that.noteList);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( FirestoreFetchState noteList)?  $default,) {final _that = this;
switch (_that) {
case _NoteState() when $default != null:
return $default(_that.noteList);case _:
  return null;

}
}

}

/// @nodoc


class _NoteState implements NoteState {
  const _NoteState({this.noteList = const FirestoreFetchState.initial()});
  

@override@JsonKey() final  FirestoreFetchState noteList;

/// Create a copy of NoteState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NoteStateCopyWith<_NoteState> get copyWith => __$NoteStateCopyWithImpl<_NoteState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NoteState&&(identical(other.noteList, noteList) || other.noteList == noteList));
}


@override
int get hashCode => Object.hash(runtimeType,noteList);

@override
String toString() {
  return 'NoteState(noteList: $noteList)';
}


}

/// @nodoc
abstract mixin class _$NoteStateCopyWith<$Res> implements $NoteStateCopyWith<$Res> {
  factory _$NoteStateCopyWith(_NoteState value, $Res Function(_NoteState) _then) = __$NoteStateCopyWithImpl;
@override @useResult
$Res call({
 FirestoreFetchState noteList
});


@override $FirestoreFetchStateCopyWith<dynamic, $Res> get noteList;

}
/// @nodoc
class __$NoteStateCopyWithImpl<$Res>
    implements _$NoteStateCopyWith<$Res> {
  __$NoteStateCopyWithImpl(this._self, this._then);

  final _NoteState _self;
  final $Res Function(_NoteState) _then;

/// Create a copy of NoteState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? noteList = null,}) {
  return _then(_NoteState(
noteList: null == noteList ? _self.noteList : noteList // ignore: cast_nullable_to_non_nullable
as FirestoreFetchState,
  ));
}

/// Create a copy of NoteState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FirestoreFetchStateCopyWith<dynamic, $Res> get noteList {
  
  return $FirestoreFetchStateCopyWith<dynamic, $Res>(_self.noteList, (value) {
    return _then(_self.copyWith(noteList: value));
  });
}
}

// dart format on
