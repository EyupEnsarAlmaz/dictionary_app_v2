// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tabbar_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TabBarEvent {
  int? get newTabIndex => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? newTabIndex) tabChangedEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? newTabIndex)? tabChangedEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? newTabIndex)? tabChangedEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TabChanged value) tabChangedEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TabChanged value)? tabChangedEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TabChanged value)? tabChangedEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TabBarEventCopyWith<TabBarEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TabBarEventCopyWith<$Res> {
  factory $TabBarEventCopyWith(
          TabBarEvent value, $Res Function(TabBarEvent) then) =
      _$TabBarEventCopyWithImpl<$Res, TabBarEvent>;
  @useResult
  $Res call({int? newTabIndex});
}

/// @nodoc
class _$TabBarEventCopyWithImpl<$Res, $Val extends TabBarEvent>
    implements $TabBarEventCopyWith<$Res> {
  _$TabBarEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newTabIndex = freezed,
  }) {
    return _then(_value.copyWith(
      newTabIndex: freezed == newTabIndex
          ? _value.newTabIndex
          : newTabIndex // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TabChangedCopyWith<$Res>
    implements $TabBarEventCopyWith<$Res> {
  factory _$$_TabChangedCopyWith(
          _$_TabChanged value, $Res Function(_$_TabChanged) then) =
      __$$_TabChangedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? newTabIndex});
}

/// @nodoc
class __$$_TabChangedCopyWithImpl<$Res>
    extends _$TabBarEventCopyWithImpl<$Res, _$_TabChanged>
    implements _$$_TabChangedCopyWith<$Res> {
  __$$_TabChangedCopyWithImpl(
      _$_TabChanged _value, $Res Function(_$_TabChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newTabIndex = freezed,
  }) {
    return _then(_$_TabChanged(
      freezed == newTabIndex
          ? _value.newTabIndex
          : newTabIndex // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_TabChanged implements _TabChanged {
  const _$_TabChanged(this.newTabIndex);

  @override
  final int? newTabIndex;

  @override
  String toString() {
    return 'TabBarEvent.tabChangedEvent(newTabIndex: $newTabIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TabChanged &&
            (identical(other.newTabIndex, newTabIndex) ||
                other.newTabIndex == newTabIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newTabIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TabChangedCopyWith<_$_TabChanged> get copyWith =>
      __$$_TabChangedCopyWithImpl<_$_TabChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? newTabIndex) tabChangedEvent,
  }) {
    return tabChangedEvent(newTabIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? newTabIndex)? tabChangedEvent,
  }) {
    return tabChangedEvent?.call(newTabIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? newTabIndex)? tabChangedEvent,
    required TResult orElse(),
  }) {
    if (tabChangedEvent != null) {
      return tabChangedEvent(newTabIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TabChanged value) tabChangedEvent,
  }) {
    return tabChangedEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TabChanged value)? tabChangedEvent,
  }) {
    return tabChangedEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TabChanged value)? tabChangedEvent,
    required TResult orElse(),
  }) {
    if (tabChangedEvent != null) {
      return tabChangedEvent(this);
    }
    return orElse();
  }
}

abstract class _TabChanged implements TabBarEvent {
  const factory _TabChanged(final int? newTabIndex) = _$_TabChanged;

  @override
  int? get newTabIndex;
  @override
  @JsonKey(ignore: true)
  _$$_TabChangedCopyWith<_$_TabChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

TabBarState _$TabBarStateFromJson(Map<String, dynamic> json) {
  return _TabbarState.fromJson(json);
}

/// @nodoc
mixin _$TabBarState {
  TabbarStatus get status => throw _privateConstructorUsedError;
  int? get newTabIndex => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TabBarStateCopyWith<TabBarState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TabBarStateCopyWith<$Res> {
  factory $TabBarStateCopyWith(
          TabBarState value, $Res Function(TabBarState) then) =
      _$TabBarStateCopyWithImpl<$Res, TabBarState>;
  @useResult
  $Res call({TabbarStatus status, int? newTabIndex});
}

/// @nodoc
class _$TabBarStateCopyWithImpl<$Res, $Val extends TabBarState>
    implements $TabBarStateCopyWith<$Res> {
  _$TabBarStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? newTabIndex = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TabbarStatus,
      newTabIndex: freezed == newTabIndex
          ? _value.newTabIndex
          : newTabIndex // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TabbarStateCopyWith<$Res>
    implements $TabBarStateCopyWith<$Res> {
  factory _$$_TabbarStateCopyWith(
          _$_TabbarState value, $Res Function(_$_TabbarState) then) =
      __$$_TabbarStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TabbarStatus status, int? newTabIndex});
}

/// @nodoc
class __$$_TabbarStateCopyWithImpl<$Res>
    extends _$TabBarStateCopyWithImpl<$Res, _$_TabbarState>
    implements _$$_TabbarStateCopyWith<$Res> {
  __$$_TabbarStateCopyWithImpl(
      _$_TabbarState _value, $Res Function(_$_TabbarState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? newTabIndex = freezed,
  }) {
    return _then(_$_TabbarState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TabbarStatus,
      newTabIndex: freezed == newTabIndex
          ? _value.newTabIndex
          : newTabIndex // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TabbarState implements _TabbarState {
  const _$_TabbarState({this.status = TabbarStatus.initial, this.newTabIndex});

  factory _$_TabbarState.fromJson(Map<String, dynamic> json) =>
      _$$_TabbarStateFromJson(json);

  @override
  @JsonKey()
  final TabbarStatus status;
  @override
  final int? newTabIndex;

  @override
  String toString() {
    return 'TabBarState(status: $status, newTabIndex: $newTabIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TabbarState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.newTabIndex, newTabIndex) ||
                other.newTabIndex == newTabIndex));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, newTabIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TabbarStateCopyWith<_$_TabbarState> get copyWith =>
      __$$_TabbarStateCopyWithImpl<_$_TabbarState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TabbarStateToJson(
      this,
    );
  }
}

abstract class _TabbarState implements TabBarState {
  const factory _TabbarState(
      {final TabbarStatus status, final int? newTabIndex}) = _$_TabbarState;

  factory _TabbarState.fromJson(Map<String, dynamic> json) =
      _$_TabbarState.fromJson;

  @override
  TabbarStatus get status;
  @override
  int? get newTabIndex;
  @override
  @JsonKey(ignore: true)
  _$$_TabbarStateCopyWith<_$_TabbarState> get copyWith =>
      throw _privateConstructorUsedError;
}
