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
    List<Definitions>? nounList,
    List<Definitions>? verbList,
    List<Definitions>? adjectiveList,
    List<Definitions>? pronounList,
    List<Definitions>? articlesList,
    List<Definitions>? interjectionList,
    List<Definitions>? adverbList,
    List<Definitions>? prepositionList,
    String? autoWords,
  }) = _WordState;

  factory WordState.fromJson(Map<String, dynamic> json) =>
      _$WordStateFromJson(json);
}
