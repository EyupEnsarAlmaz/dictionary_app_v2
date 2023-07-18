import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:homescreen_widget/core/service/remote_word_service.dart';
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
  List<Definitions>? noun = [];
  List<Definitions>? verb = [];
  List<Definitions>? adjective = [];
  List<Definitions>? pronoun = [];
  List<Definitions>? articles = [];
  List<Definitions>? interjection = [];
  List<Definitions>? adverb = [];
  List<Definitions>? preposition = [];

  Future<void> _searhed(_Searched event, Emitter<WordState> emit) async {
    if (event.word == null || event.word!.isEmpty) {
      return;
    }
    final words = event.word!;

    emit(state.copyWith(status: WordStatus.initial));

    try {
      emit(state.copyWith(status: WordStatus.loading));
      final word = await RemoteWordService.shared.getWords(word: words);

      for (var element in word!.meanings!) {
        switch (element.partOfSpeech) {
          case "noun":
            for (var element in element.definitions!) {
              noun?.add(element);
              emit(
                state.copyWith(
                    status: WordStatus.success,
                    nounList: noun,
                    remoteWordModel: word),
              );
            }

            break;
          case "verb":
            for (var element in element.definitions!) {
              verb?.add(element);
              emit(
                state.copyWith(
                    status: WordStatus.success,
                    nounList: verb,
                    remoteWordModel: word),
              );
            }
            break;
          case "adjective":
            for (var element in element.definitions!) {
              adjective?.add(element);
              emit(
                state.copyWith(
                    status: WordStatus.success,
                    adjectiveList: adjective,
                    remoteWordModel: word),
              );
            }
            break;
          case "pronoun":
            for (var element in element.definitions!) {
              pronoun?.add(element);
              emit(
                state.copyWith(
                    status: WordStatus.success,
                    pronounList: pronoun,
                    remoteWordModel: word),
              );
            }
            break;
          case "articles":
            for (var element in element.definitions!) {
              articles?.add(element);
              emit(
                state.copyWith(
                    status: WordStatus.success,
                    articlesList: articles,
                    remoteWordModel: word),
              );
            }
            break;
          case "interjection":
            for (var element in element.definitions!) {
              interjection?.add(element);
              emit(
                state.copyWith(
                    status: WordStatus.success,
                    interjectionList: interjection,
                    remoteWordModel: word),
              );
            }
            break;
          case "adverb":
            for (var element in element.definitions!) {
              adverb?.add(element);
              emit(
                state.copyWith(
                    status: WordStatus.success,
                    adverbList: adverb,
                    remoteWordModel: word),
              );
            }
            break;
          case "preposition":
            for (var element in element.definitions!) {
              preposition?.add(element);
              emit(
                state.copyWith(
                    status: WordStatus.success,
                    prepositionList: preposition,
                    remoteWordModel: word),
              );
            }
            break;
          default:
        }
      }
    } on Exception catch (error, stackTrace) {
      addError(error, stackTrace);
      emit(state.copyWith(status: WordStatus.failure));
    }
  }

  Future<void> _autoWord(_AutoWord event, Emitter<WordState> emit) async {
    if (event.autoWord == null || event.autoWord!.isEmpty) {
      return;
    }

    emit(state.copyWith(status: WordStatus.initial));

    try {
      emit(state.copyWith(status: WordStatus.loading));
      final words = WordRepository().getDailyWordKeyAndValue();
      emit(
        state.copyWith(status: WordStatus.success, autoWords: words),
      );
    } on Exception catch (error, stackTrace) {
      addError(error, stackTrace);
      emit(state.copyWith(status: WordStatus.failure));
    }
  }
}
