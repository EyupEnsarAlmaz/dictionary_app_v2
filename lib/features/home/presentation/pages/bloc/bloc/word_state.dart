part of 'word_bloc.dart';

enum WordStatus {
  initial,
  loading,
  success,
  failure;

  bool get isInitial => this == WordStatus.initial;
  bool get isLoading => this == WordStatus.loading;
  bool get isSuccess => this == WordStatus.success;
  bool get isFailure => this == WordStatus.failure;
}

@freezed
class WordState with _$WordState {
  const factory WordState({
    @Default(WordStatus.initial) WordStatus status,
    RemoteWordModel? remoteWordModel,
    String? autoWords,
  }) = _WordState;

  factory WordState.fromJson(Map<String, dynamic> json) =>
      _$WordStateFromJson(json);
}
