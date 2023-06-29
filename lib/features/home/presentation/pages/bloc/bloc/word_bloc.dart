import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:homescreen_widget/core/service/remote_word_service.dart';
import 'package:homescreen_widget/data/models/words/local_word_model.dart';
import 'package:homescreen_widget/data/models/words/remote_word_model.dart';
import 'package:homescreen_widget/data/repositories/local_word_repositories.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'word_event.dart';
part 'word_state.dart';
part 'word_bloc.freezed.dart';
part 'word_bloc.g.dart';

class WordBloc extends Bloc<WordEvent, WordState> {
  WordBloc(this.remoteWordService) : super(const WordState()) {
    on<_Searched>(_searhed);
    on<_AutoWord>(_autoWord);
  }

  final RemoteWordService remoteWordService;

  Future<void> _searhed(_Searched event, Emitter<WordState> emit) async {
    if (event.word == null || event.word!.isEmpty) {
      return;
    }
    final words = event.word!;

    emit(state.copyWith(status: WordStatus.initial));

    try {
      final word = await RemoteWordService().getWords(word: words);
      emit(
        state.copyWith(status: WordStatus.success, remoteWordModel: word),
      );
    } on Exception catch (error, stackTrace) {
      addError(error, stackTrace);
      emit(state.copyWith(status: WordStatus.failure));
    }
  }

  Future<void> _autoWord(_AutoWord event, Emitter<WordState> emit) async {
    if (event.autoWord == null || event.autoWord!.isEmpty) {
      return;
    }
    final autoword = event.autoWord!;

    emit(state.copyWith(status: WordStatus.initial));

    try {
      final words = WordRepository().getDailyWordKeyAndValue();
      emit(
        state.copyWith(status: WordStatus.success, autoWords: words),
      );
    } on Exception catch (error, stackTrace) {
      addError(error, stackTrace);
      emit(state.copyWith(status: WordStatus.failure));
    }
  }

  @override
  WordState? fromJson(Map<String, dynamic> json) {
    WordState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(WordState state) {
    if (state.status.isSuccess) {
      return state.toJson();
    }
    return null;
  }
}
