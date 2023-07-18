part of 'word_bloc.dart';

@freezed
class WordEvent with _$WordEvent {
  const factory WordEvent.searched(String? word) = _Searched;
  const factory WordEvent.autoWord(String? autoWord) = _AutoWord;
}
