import 'package:freezed_annotation/freezed_annotation.dart';
part 'remote_word_model.g.dart';

@JsonSerializable()
class RemoteWordModel {
  String? word;
  String? phonetic;
  List<Phonetics>? phonetics;
  String? origin;
  List<Meanings>? meanings;

  RemoteWordModel(
      {this.word, this.phonetic, this.phonetics, this.origin, this.meanings});

  factory RemoteWordModel.fromJson(Map<String, dynamic> json) {
    return _$RemoteWordModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$RemoteWordModelToJson(this);
  }

  @override
  RemoteWordModel? fromJson(Map<String, dynamic> json) {
    return _$RemoteWordModelFromJson(json);
  }
}

@JsonSerializable()
class Phonetics {
  String? text;
  String? audio;

  Phonetics({this.text, this.audio});

  factory Phonetics.fromJson(Map<String, dynamic> json) {
    return _$PhoneticsFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$PhoneticsToJson(this);
  }
}

@JsonSerializable()
class Meanings {
  String? partOfSpeech;
  List<Definitions>? definitions;

  Meanings({
    this.partOfSpeech,
    this.definitions,
  });

  factory Meanings.fromJson(Map<String, dynamic> json) {
    return _$MeaningsFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$MeaningsToJson(this);
  }
}

@JsonSerializable()
class Definitions {
  String? definition;
  String? example;

  Definitions({this.definition, this.example});

  factory Definitions.fromJson(Map<String, dynamic> json) {
    return _$DefinitionsFromJson(json);
  }
  Map<String, dynamic> toJson() {
    return _$DefinitionsToJson(this);
  }
}
