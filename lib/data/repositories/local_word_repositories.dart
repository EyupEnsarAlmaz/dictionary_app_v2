import 'dart:math';

import 'package:homescreen_widget/data/models/words/local_word_model.dart';

class WordRepository {
  final wordList = WordsList.shared;

  List<String> getKeys() {
    return wordList.allWords.keys.toList();
  }

  List<String> getValues() {
    return wordList.allWords.values.toList();
  }

  String getDailyWordKeys() {
    final DateTime now = DateTime.now();
    final List<String> keys = getKeys();
    final int index = now.day % keys.length;
    return keys[index];
  }

  String getDailyWordKeyAndValue() {
    final DateTime now = DateTime.now();
    final List<String> keys = getKeys();
    final List<String> values = getValues();
    final int index = now.day % keys.length;
    return keys[index] + values[index];
  }
}
