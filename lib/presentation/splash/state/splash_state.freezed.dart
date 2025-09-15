// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'splash_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SplashState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SplashState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SplashState()';
}


}

/// @nodoc
class $SplashStateCopyWith<$Res>  {
$SplashStateCopyWith(SplashState _, $Res Function(SplashState) __);
}


/// Adds pattern-matching-related methods to [SplashState].
extension SplashStatePatterns on SplashState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SplashInitialState value)?  initial,TResult Function( SplashLoadingState value)?  loading,TResult Function( SplashSuccessState value)?  success,TResult Function( SplashErrorState value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SplashInitialState() when initial != null:
return initial(_that);case SplashLoadingState() when loading != null:
return loading(_that);case SplashSuccessState() when success != null:
return success(_that);case SplashErrorState() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SplashInitialState value)  initial,required TResult Function( SplashLoadingState value)  loading,required TResult Function( SplashSuccessState value)  success,required TResult Function( SplashErrorState value)  error,}){
final _that = this;
switch (_that) {
case SplashInitialState():
return initial(_that);case SplashLoadingState():
return loading(_that);case SplashSuccessState():
return success(_that);case SplashErrorState():
return error(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SplashInitialState value)?  initial,TResult? Function( SplashLoadingState value)?  loading,TResult? Function( SplashSuccessState value)?  success,TResult? Function( SplashErrorState value)?  error,}){
final _that = this;
switch (_that) {
case SplashInitialState() when initial != null:
return initial(_that);case SplashLoadingState() when loading != null:
return loading(_that);case SplashSuccessState() when success != null:
return success(_that);case SplashErrorState() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function()?  success,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SplashInitialState() when initial != null:
return initial();case SplashLoadingState() when loading != null:
return loading();case SplashSuccessState() when success != null:
return success();case SplashErrorState() when error != null:
return error(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function()  success,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case SplashInitialState():
return initial();case SplashLoadingState():
return loading();case SplashSuccessState():
return success();case SplashErrorState():
return error(_that.message);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function()?  success,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case SplashInitialState() when initial != null:
return initial();case SplashLoadingState() when loading != null:
return loading();case SplashSuccessState() when success != null:
return success();case SplashErrorState() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class SplashInitialState implements SplashState {
  const SplashInitialState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SplashInitialState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SplashState.initial()';
}


}




/// @nodoc


class SplashLoadingState implements SplashState {
  const SplashLoadingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SplashLoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SplashState.loading()';
}


}




/// @nodoc


class SplashSuccessState implements SplashState {
  const SplashSuccessState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SplashSuccessState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SplashState.success()';
}


}




/// @nodoc


class SplashErrorState implements SplashState {
  const SplashErrorState(this.message);
  

 final  String message;

/// Create a copy of SplashState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SplashErrorStateCopyWith<SplashErrorState> get copyWith => _$SplashErrorStateCopyWithImpl<SplashErrorState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SplashErrorState&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'SplashState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $SplashErrorStateCopyWith<$Res> implements $SplashStateCopyWith<$Res> {
  factory $SplashErrorStateCopyWith(SplashErrorState value, $Res Function(SplashErrorState) _then) = _$SplashErrorStateCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$SplashErrorStateCopyWithImpl<$Res>
    implements $SplashErrorStateCopyWith<$Res> {
  _$SplashErrorStateCopyWithImpl(this._self, this._then);

  final SplashErrorState _self;
  final $Res Function(SplashErrorState) _then;

/// Create a copy of SplashState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(SplashErrorState(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
