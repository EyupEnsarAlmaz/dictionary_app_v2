// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'word_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WordState _$$_WordStateFromJson(Map<String, dynamic> json) => _$_WordState(
      status: $enumDecodeNullable(_$WordStatusEnumMap, json['status']) ??
          WordStatus.initial,
      remoteWordModel: json['remoteWordModel'] == null
          ? null
          : RemoteWordModel.fromJson(
              json['remoteWordModel'] as Map<String, dynamic>),
      nounList: (json['nounList'] as List<dynamic>?)
          ?.map((e) => Definitions.fromJson(e as Map<String, dynamic>))
          .toList(),
      verbList: (json['verbList'] as List<dynamic>?)
          ?.map((e) => Definitions.fromJson(e as Map<String, dynamic>))
          .toList(),
      adjectiveList: (json['adjectiveList'] as List<dynamic>?)
          ?.map((e) => Definitions.fromJson(e as Map<String, dynamic>))
          .toList(),
      pronounList: (json['pronounList'] as List<dynamic>?)
          ?.map((e) => Definitions.fromJson(e as Map<String, dynamic>))
          .toList(),
      articlesList: (json['articlesList'] as List<dynamic>?)
          ?.map((e) => Definitions.fromJson(e as Map<String, dynamic>))
          .toList(),
      interjectionList: (json['interjectionList'] as List<dynamic>?)
          ?.map((e) => Definitions.fromJson(e as Map<String, dynamic>))
          .toList(),
      adverbList: (json['adverbList'] as List<dynamic>?)
          ?.map((e) => Definitions.fromJson(e as Map<String, dynamic>))
          .toList(),
      prepositionList: (json['prepositionList'] as List<dynamic>?)
          ?.map((e) => Definitions.fromJson(e as Map<String, dynamic>))
          .toList(),
      autoWords: json['autoWords'] as String?,
    );

Map<String, dynamic> _$$_WordStateToJson(_$_WordState instance) =>
    <String, dynamic>{
      'status': _$WordStatusEnumMap[instance.status]!,
      'remoteWordModel': instance.remoteWordModel,
      'nounList': instance.nounList,
      'verbList': instance.verbList,
      'adjectiveList': instance.adjectiveList,
      'pronounList': instance.pronounList,
      'articlesList': instance.articlesList,
      'interjectionList': instance.interjectionList,
      'adverbList': instance.adverbList,
      'prepositionList': instance.prepositionList,
      'autoWords': instance.autoWords,
    };

const _$WordStatusEnumMap = {
  WordStatus.initial: 'initial',
  WordStatus.loading: 'loading',
  WordStatus.success: 'success',
  WordStatus.failure: 'failure',
};
