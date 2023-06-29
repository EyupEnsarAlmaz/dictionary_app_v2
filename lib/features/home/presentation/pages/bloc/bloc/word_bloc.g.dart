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
      autoWords: json['autoWords'] as String?,
    );

Map<String, dynamic> _$$_WordStateToJson(_$_WordState instance) =>
    <String, dynamic>{
      'status': _$WordStatusEnumMap[instance.status]!,
      'remoteWordModel': instance.remoteWordModel,
      'autoWords': instance.autoWords,
    };

const _$WordStatusEnumMap = {
  WordStatus.initial: 'initial',
  WordStatus.loading: 'loading',
  WordStatus.success: 'success',
  WordStatus.failure: 'failure',
};
