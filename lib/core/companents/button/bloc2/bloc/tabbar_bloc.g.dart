// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tabbar_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TabbarState _$$_TabbarStateFromJson(Map<String, dynamic> json) =>
    _$_TabbarState(
      status: $enumDecodeNullable(_$TabbarStatusEnumMap, json['status']) ??
          TabbarStatus.initial,
      newTabIndex: json['newTabIndex'] as int?,
    );

Map<String, dynamic> _$$_TabbarStateToJson(_$_TabbarState instance) =>
    <String, dynamic>{
      'status': _$TabbarStatusEnumMap[instance.status]!,
      'newTabIndex': instance.newTabIndex,
    };

const _$TabbarStatusEnumMap = {
  TabbarStatus.initial: 'initial',
  TabbarStatus.loading: 'loading',
  TabbarStatus.success: 'success',
  TabbarStatus.failure: 'failure',
};
