// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_note_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AddNoteState {

 AddNoteData get noteData;
/// Create a copy of AddNoteState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddNoteStateCopyWith<AddNoteState> get copyWith => _$AddNoteStateCopyWithImpl<AddNoteState>(this as AddNoteState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddNoteState&&(identical(other.noteData, noteData) || other.noteData == noteData));
}


@override
int get hashCode => Object.hash(runtimeType,noteData);

@override
String toString() {
  return 'AddNoteState(noteData: $noteData)';
}


}

/// @nodoc
abstract mixin class $AddNoteStateCopyWith<$Res>  {
  factory $AddNoteStateCopyWith(AddNoteState value, $Res Function(AddNoteState) _then) = _$AddNoteStateCopyWithImpl;
@useResult
$Res call({
 AddNoteData noteData
});


$AddNoteDataCopyWith<$Res> get noteData;

}
/// @nodoc
class _$AddNoteStateCopyWithImpl<$Res>
    implements $AddNoteStateCopyWith<$Res> {
  _$AddNoteStateCopyWithImpl(this._self, this._then);

  final AddNoteState _self;
  final $Res Function(AddNoteState) _then;

/// Create a copy of AddNoteState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? noteData = null,}) {
  return _then(_self.copyWith(
noteData: null == noteData ? _self.noteData : noteData // ignore: cast_nullable_to_non_nullable
as AddNoteData,
  ));
}
/// Create a copy of AddNoteState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddNoteDataCopyWith<$Res> get noteData {
  
  return $AddNoteDataCopyWith<$Res>(_self.noteData, (value) {
    return _then(_self.copyWith(noteData: value));
  });
}
}


/// Adds pattern-matching-related methods to [AddNoteState].
extension AddNoteStatePatterns on AddNoteState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( AddNoteStateInitial value)?  initial,TResult Function( AddNoteStateLoading value)?  Loading,TResult Function( AddNoteStateSuccess value)?  Success,TResult Function( AddNoteStateFailure value)?  Failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case AddNoteStateInitial() when initial != null:
return initial(_that);case AddNoteStateLoading() when Loading != null:
return Loading(_that);case AddNoteStateSuccess() when Success != null:
return Success(_that);case AddNoteStateFailure() when Failure != null:
return Failure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( AddNoteStateInitial value)  initial,required TResult Function( AddNoteStateLoading value)  Loading,required TResult Function( AddNoteStateSuccess value)  Success,required TResult Function( AddNoteStateFailure value)  Failure,}){
final _that = this;
switch (_that) {
case AddNoteStateInitial():
return initial(_that);case AddNoteStateLoading():
return Loading(_that);case AddNoteStateSuccess():
return Success(_that);case AddNoteStateFailure():
return Failure(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( AddNoteStateInitial value)?  initial,TResult? Function( AddNoteStateLoading value)?  Loading,TResult? Function( AddNoteStateSuccess value)?  Success,TResult? Function( AddNoteStateFailure value)?  Failure,}){
final _that = this;
switch (_that) {
case AddNoteStateInitial() when initial != null:
return initial(_that);case AddNoteStateLoading() when Loading != null:
return Loading(_that);case AddNoteStateSuccess() when Success != null:
return Success(_that);case AddNoteStateFailure() when Failure != null:
return Failure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( AddNoteData noteData)?  initial,TResult Function( AddNoteData noteData)?  Loading,TResult Function( AddNoteData noteData,  String? message)?  Success,TResult Function( AddNoteData noteData,  String message)?  Failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case AddNoteStateInitial() when initial != null:
return initial(_that.noteData);case AddNoteStateLoading() when Loading != null:
return Loading(_that.noteData);case AddNoteStateSuccess() when Success != null:
return Success(_that.noteData,_that.message);case AddNoteStateFailure() when Failure != null:
return Failure(_that.noteData,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( AddNoteData noteData)  initial,required TResult Function( AddNoteData noteData)  Loading,required TResult Function( AddNoteData noteData,  String? message)  Success,required TResult Function( AddNoteData noteData,  String message)  Failure,}) {final _that = this;
switch (_that) {
case AddNoteStateInitial():
return initial(_that.noteData);case AddNoteStateLoading():
return Loading(_that.noteData);case AddNoteStateSuccess():
return Success(_that.noteData,_that.message);case AddNoteStateFailure():
return Failure(_that.noteData,_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( AddNoteData noteData)?  initial,TResult? Function( AddNoteData noteData)?  Loading,TResult? Function( AddNoteData noteData,  String? message)?  Success,TResult? Function( AddNoteData noteData,  String message)?  Failure,}) {final _that = this;
switch (_that) {
case AddNoteStateInitial() when initial != null:
return initial(_that.noteData);case AddNoteStateLoading() when Loading != null:
return Loading(_that.noteData);case AddNoteStateSuccess() when Success != null:
return Success(_that.noteData,_that.message);case AddNoteStateFailure() when Failure != null:
return Failure(_that.noteData,_that.message);case _:
  return null;

}
}

}

/// @nodoc


class AddNoteStateInitial implements AddNoteState {
  const AddNoteStateInitial({required this.noteData});
  

@override final  AddNoteData noteData;

/// Create a copy of AddNoteState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddNoteStateInitialCopyWith<AddNoteStateInitial> get copyWith => _$AddNoteStateInitialCopyWithImpl<AddNoteStateInitial>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddNoteStateInitial&&(identical(other.noteData, noteData) || other.noteData == noteData));
}


@override
int get hashCode => Object.hash(runtimeType,noteData);

@override
String toString() {
  return 'AddNoteState.initial(noteData: $noteData)';
}


}

/// @nodoc
abstract mixin class $AddNoteStateInitialCopyWith<$Res> implements $AddNoteStateCopyWith<$Res> {
  factory $AddNoteStateInitialCopyWith(AddNoteStateInitial value, $Res Function(AddNoteStateInitial) _then) = _$AddNoteStateInitialCopyWithImpl;
@override @useResult
$Res call({
 AddNoteData noteData
});


@override $AddNoteDataCopyWith<$Res> get noteData;

}
/// @nodoc
class _$AddNoteStateInitialCopyWithImpl<$Res>
    implements $AddNoteStateInitialCopyWith<$Res> {
  _$AddNoteStateInitialCopyWithImpl(this._self, this._then);

  final AddNoteStateInitial _self;
  final $Res Function(AddNoteStateInitial) _then;

/// Create a copy of AddNoteState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? noteData = null,}) {
  return _then(AddNoteStateInitial(
noteData: null == noteData ? _self.noteData : noteData // ignore: cast_nullable_to_non_nullable
as AddNoteData,
  ));
}

/// Create a copy of AddNoteState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddNoteDataCopyWith<$Res> get noteData {
  
  return $AddNoteDataCopyWith<$Res>(_self.noteData, (value) {
    return _then(_self.copyWith(noteData: value));
  });
}
}

/// @nodoc


class AddNoteStateLoading implements AddNoteState {
  const AddNoteStateLoading({required this.noteData});
  

@override final  AddNoteData noteData;

/// Create a copy of AddNoteState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddNoteStateLoadingCopyWith<AddNoteStateLoading> get copyWith => _$AddNoteStateLoadingCopyWithImpl<AddNoteStateLoading>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddNoteStateLoading&&(identical(other.noteData, noteData) || other.noteData == noteData));
}


@override
int get hashCode => Object.hash(runtimeType,noteData);

@override
String toString() {
  return 'AddNoteState.Loading(noteData: $noteData)';
}


}

/// @nodoc
abstract mixin class $AddNoteStateLoadingCopyWith<$Res> implements $AddNoteStateCopyWith<$Res> {
  factory $AddNoteStateLoadingCopyWith(AddNoteStateLoading value, $Res Function(AddNoteStateLoading) _then) = _$AddNoteStateLoadingCopyWithImpl;
@override @useResult
$Res call({
 AddNoteData noteData
});


@override $AddNoteDataCopyWith<$Res> get noteData;

}
/// @nodoc
class _$AddNoteStateLoadingCopyWithImpl<$Res>
    implements $AddNoteStateLoadingCopyWith<$Res> {
  _$AddNoteStateLoadingCopyWithImpl(this._self, this._then);

  final AddNoteStateLoading _self;
  final $Res Function(AddNoteStateLoading) _then;

/// Create a copy of AddNoteState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? noteData = null,}) {
  return _then(AddNoteStateLoading(
noteData: null == noteData ? _self.noteData : noteData // ignore: cast_nullable_to_non_nullable
as AddNoteData,
  ));
}

/// Create a copy of AddNoteState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddNoteDataCopyWith<$Res> get noteData {
  
  return $AddNoteDataCopyWith<$Res>(_self.noteData, (value) {
    return _then(_self.copyWith(noteData: value));
  });
}
}

/// @nodoc


class AddNoteStateSuccess implements AddNoteState {
  const AddNoteStateSuccess({required this.noteData, this.message});
  

@override final  AddNoteData noteData;
 final  String? message;

/// Create a copy of AddNoteState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddNoteStateSuccessCopyWith<AddNoteStateSuccess> get copyWith => _$AddNoteStateSuccessCopyWithImpl<AddNoteStateSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddNoteStateSuccess&&(identical(other.noteData, noteData) || other.noteData == noteData)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,noteData,message);

@override
String toString() {
  return 'AddNoteState.Success(noteData: $noteData, message: $message)';
}


}

/// @nodoc
abstract mixin class $AddNoteStateSuccessCopyWith<$Res> implements $AddNoteStateCopyWith<$Res> {
  factory $AddNoteStateSuccessCopyWith(AddNoteStateSuccess value, $Res Function(AddNoteStateSuccess) _then) = _$AddNoteStateSuccessCopyWithImpl;
@override @useResult
$Res call({
 AddNoteData noteData, String? message
});


@override $AddNoteDataCopyWith<$Res> get noteData;

}
/// @nodoc
class _$AddNoteStateSuccessCopyWithImpl<$Res>
    implements $AddNoteStateSuccessCopyWith<$Res> {
  _$AddNoteStateSuccessCopyWithImpl(this._self, this._then);

  final AddNoteStateSuccess _self;
  final $Res Function(AddNoteStateSuccess) _then;

/// Create a copy of AddNoteState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? noteData = null,Object? message = freezed,}) {
  return _then(AddNoteStateSuccess(
noteData: null == noteData ? _self.noteData : noteData // ignore: cast_nullable_to_non_nullable
as AddNoteData,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of AddNoteState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddNoteDataCopyWith<$Res> get noteData {
  
  return $AddNoteDataCopyWith<$Res>(_self.noteData, (value) {
    return _then(_self.copyWith(noteData: value));
  });
}
}

/// @nodoc


class AddNoteStateFailure implements AddNoteState {
  const AddNoteStateFailure({required this.noteData, required this.message});
  

@override final  AddNoteData noteData;
 final  String message;

/// Create a copy of AddNoteState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddNoteStateFailureCopyWith<AddNoteStateFailure> get copyWith => _$AddNoteStateFailureCopyWithImpl<AddNoteStateFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddNoteStateFailure&&(identical(other.noteData, noteData) || other.noteData == noteData)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,noteData,message);

@override
String toString() {
  return 'AddNoteState.Failure(noteData: $noteData, message: $message)';
}


}

/// @nodoc
abstract mixin class $AddNoteStateFailureCopyWith<$Res> implements $AddNoteStateCopyWith<$Res> {
  factory $AddNoteStateFailureCopyWith(AddNoteStateFailure value, $Res Function(AddNoteStateFailure) _then) = _$AddNoteStateFailureCopyWithImpl;
@override @useResult
$Res call({
 AddNoteData noteData, String message
});


@override $AddNoteDataCopyWith<$Res> get noteData;

}
/// @nodoc
class _$AddNoteStateFailureCopyWithImpl<$Res>
    implements $AddNoteStateFailureCopyWith<$Res> {
  _$AddNoteStateFailureCopyWithImpl(this._self, this._then);

  final AddNoteStateFailure _self;
  final $Res Function(AddNoteStateFailure) _then;

/// Create a copy of AddNoteState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? noteData = null,Object? message = null,}) {
  return _then(AddNoteStateFailure(
noteData: null == noteData ? _self.noteData : noteData // ignore: cast_nullable_to_non_nullable
as AddNoteData,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of AddNoteState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddNoteDataCopyWith<$Res> get noteData {
  
  return $AddNoteDataCopyWith<$Res>(_self.noteData, (value) {
    return _then(_self.copyWith(noteData: value));
  });
}
}

/// @nodoc
mixin _$AddNoteData {

 String get title; String? get description; String get priority; bool get isRemind; DateTime? get selectedDate;
/// Create a copy of AddNoteData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddNoteDataCopyWith<AddNoteData> get copyWith => _$AddNoteDataCopyWithImpl<AddNoteData>(this as AddNoteData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddNoteData&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.isRemind, isRemind) || other.isRemind == isRemind)&&(identical(other.selectedDate, selectedDate) || other.selectedDate == selectedDate));
}


@override
int get hashCode => Object.hash(runtimeType,title,description,priority,isRemind,selectedDate);

@override
String toString() {
  return 'AddNoteData(title: $title, description: $description, priority: $priority, isRemind: $isRemind, selectedDate: $selectedDate)';
}


}

/// @nodoc
abstract mixin class $AddNoteDataCopyWith<$Res>  {
  factory $AddNoteDataCopyWith(AddNoteData value, $Res Function(AddNoteData) _then) = _$AddNoteDataCopyWithImpl;
@useResult
$Res call({
 String title, String? description, String priority, bool isRemind, DateTime? selectedDate
});




}
/// @nodoc
class _$AddNoteDataCopyWithImpl<$Res>
    implements $AddNoteDataCopyWith<$Res> {
  _$AddNoteDataCopyWithImpl(this._self, this._then);

  final AddNoteData _self;
  final $Res Function(AddNoteData) _then;

/// Create a copy of AddNoteData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? description = freezed,Object? priority = null,Object? isRemind = null,Object? selectedDate = freezed,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as String,isRemind: null == isRemind ? _self.isRemind : isRemind // ignore: cast_nullable_to_non_nullable
as bool,selectedDate: freezed == selectedDate ? _self.selectedDate : selectedDate // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [AddNoteData].
extension AddNoteDataPatterns on AddNoteData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddNoteData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddNoteData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddNoteData value)  $default,){
final _that = this;
switch (_that) {
case _AddNoteData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddNoteData value)?  $default,){
final _that = this;
switch (_that) {
case _AddNoteData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String? description,  String priority,  bool isRemind,  DateTime? selectedDate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddNoteData() when $default != null:
return $default(_that.title,_that.description,_that.priority,_that.isRemind,_that.selectedDate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String? description,  String priority,  bool isRemind,  DateTime? selectedDate)  $default,) {final _that = this;
switch (_that) {
case _AddNoteData():
return $default(_that.title,_that.description,_that.priority,_that.isRemind,_that.selectedDate);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String? description,  String priority,  bool isRemind,  DateTime? selectedDate)?  $default,) {final _that = this;
switch (_that) {
case _AddNoteData() when $default != null:
return $default(_that.title,_that.description,_that.priority,_that.isRemind,_that.selectedDate);case _:
  return null;

}
}

}

/// @nodoc


class _AddNoteData implements AddNoteData {
  const _AddNoteData({required this.title, this.description, required this.priority, required this.isRemind, this.selectedDate});
  

@override final  String title;
@override final  String? description;
@override final  String priority;
@override final  bool isRemind;
@override final  DateTime? selectedDate;

/// Create a copy of AddNoteData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddNoteDataCopyWith<_AddNoteData> get copyWith => __$AddNoteDataCopyWithImpl<_AddNoteData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddNoteData&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.isRemind, isRemind) || other.isRemind == isRemind)&&(identical(other.selectedDate, selectedDate) || other.selectedDate == selectedDate));
}


@override
int get hashCode => Object.hash(runtimeType,title,description,priority,isRemind,selectedDate);

@override
String toString() {
  return 'AddNoteData(title: $title, description: $description, priority: $priority, isRemind: $isRemind, selectedDate: $selectedDate)';
}


}

/// @nodoc
abstract mixin class _$AddNoteDataCopyWith<$Res> implements $AddNoteDataCopyWith<$Res> {
  factory _$AddNoteDataCopyWith(_AddNoteData value, $Res Function(_AddNoteData) _then) = __$AddNoteDataCopyWithImpl;
@override @useResult
$Res call({
 String title, String? description, String priority, bool isRemind, DateTime? selectedDate
});




}
/// @nodoc
class __$AddNoteDataCopyWithImpl<$Res>
    implements _$AddNoteDataCopyWith<$Res> {
  __$AddNoteDataCopyWithImpl(this._self, this._then);

  final _AddNoteData _self;
  final $Res Function(_AddNoteData) _then;

/// Create a copy of AddNoteData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? description = freezed,Object? priority = null,Object? isRemind = null,Object? selectedDate = freezed,}) {
  return _then(_AddNoteData(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as String,isRemind: null == isRemind ? _self.isRemind : isRemind // ignore: cast_nullable_to_non_nullable
as bool,selectedDate: freezed == selectedDate ? _self.selectedDate : selectedDate // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
