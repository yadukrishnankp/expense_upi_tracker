
import 'package:freezed_annotation/freezed_annotation.dart';

part 'firestore_fetch_state.freezed.dart';

@freezed
class FirestoreFetchState<T> with _$FirestoreFetchState<T> {
  const factory FirestoreFetchState.initial() = Initial<T>;
  const factory FirestoreFetchState.loading() = _Loading<T>;
  const factory FirestoreFetchState.success(T data) = _Success<T>;
  const factory FirestoreFetchState.failure(String message) = _Failure<T>;
}