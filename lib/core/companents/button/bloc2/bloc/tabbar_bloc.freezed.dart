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
mixin _$TabbarEvent {
  int? get tabIndex => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? tabIndex) tabChangedEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? tabIndex)? tabChangedEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? tabIndex)? tabChangedEvent,
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
  $TabbarEventCopyWith<TabbarEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TabbarEventCopyWith<$Res> {
  factory $TabbarEventCopyWith(
          TabbarEvent value, $Res Function(TabbarEvent) then) =
      _$TabbarEventCopyWithImpl<$Res, TabbarEvent>;
  @useResult
  $Res call({int? tabIndex});
}

/// @nodoc
class _$TabbarEventCopyWithImpl<$Res, $Val extends TabbarEvent>
    implements $TabbarEventCopyWith<$Res> {
  _$TabbarEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tabIndex = freezed,
  }) {
    return _then(_value.copyWith(
      tabIndex: freezed == tabIndex
          ? _value.tabIndex
          : tabIndex // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TabChangedCopyWith<$Res>
    implements $TabbarEventCopyWith<$Res> {
  factory _$$_TabChangedCopyWith(
          _$_TabChanged value, $Res Function(_$_TabChanged) then) =
      __$$_TabChangedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? tabIndex});
}

/// @nodoc
class __$$_TabChangedCopyWithImpl<$Res>
    extends _$TabbarEventCopyWithImpl<$Res, _$_TabChanged>
    implements _$$_TabChangedCopyWith<$Res> {
  __$$_TabChangedCopyWithImpl(
      _$_TabChanged _value, $Res Function(_$_TabChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tabIndex = freezed,
  }) {
    return _then(_$_TabChanged(
      freezed == tabIndex
          ? _value.tabIndex
          : tabIndex // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_TabChanged implements _TabChanged {
  const _$_TabChanged(this.tabIndex);

  @override
  final int? tabIndex;

  @override
  String toString() {
    return 'TabbarEvent.tabChangedEvent(tabIndex: $tabIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TabChanged &&
            (identical(other.tabIndex, tabIndex) ||
                other.tabIndex == tabIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tabIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TabChangedCopyWith<_$_TabChanged> get copyWith =>
      __$$_TabChangedCopyWithImpl<_$_TabChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? tabIndex) tabChangedEvent,
  }) {
    return tabChangedEvent(tabIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? tabIndex)? tabChangedEvent,
  }) {
    return tabChangedEvent?.call(tabIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? tabIndex)? tabChangedEvent,
    required TResult orElse(),
  }) {
    if (tabChangedEvent != null) {
      return tabChangedEvent(tabIndex);
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

abstract class _TabChanged implements TabbarEvent {
  const factory _TabChanged(final int? tabIndex) = _$_TabChanged;

  @override
  int? get tabIndex;
  @override
  @JsonKey(ignore: true)
  _$$_TabChangedCopyWith<_$_TabChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

TabbarState _$TabbarStateFromJson(Map<String, dynamic> json) {
  return _TabbarState.fromJson(json);
}

/// @nodoc
mixin _$TabbarState {
  TabbarStatus get status => throw _privateConstructorUsedError;
  int? get tabIndex => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TabbarStateCopyWith<TabbarState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TabbarStateCopyWith<$Res> {
  factory $TabbarStateCopyWith(
          TabbarState value, $Res Function(TabbarState) then) =
      _$TabbarStateCopyWithImpl<$Res, TabbarState>;
  @useResult
  $Res call({TabbarStatus status, int? tabIndex});
}

/// @nodoc
class _$TabbarStateCopyWithImpl<$Res, $Val extends TabbarState>
    implements $TabbarStateCopyWith<$Res> {
  _$TabbarStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? tabIndex = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TabbarStatus,
      tabIndex: freezed == tabIndex
          ? _value.tabIndex
          : tabIndex // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TabbarStateCopyWith<$Res>
    implements $TabbarStateCopyWith<$Res> {
  factory _$$_TabbarStateCopyWith(
          _$_TabbarState value, $Res Function(_$_TabbarState) then) =
      __$$_TabbarStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TabbarStatus status, int? tabIndex});
}

/// @nodoc
class __$$_TabbarStateCopyWithImpl<$Res>
    extends _$TabbarStateCopyWithImpl<$Res, _$_TabbarState>
    implements _$$_TabbarStateCopyWith<$Res> {
  __$$_TabbarStateCopyWithImpl(
      _$_TabbarState _value, $Res Function(_$_TabbarState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? tabIndex = freezed,
  }) {
    return _then(_$_TabbarState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TabbarStatus,
      tabIndex: freezed == tabIndex
          ? _value.tabIndex
          : tabIndex // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TabbarState implements _TabbarState {
  const _$_TabbarState({this.status = TabbarStatus.initial, this.tabIndex});

  factory _$_TabbarState.fromJson(Map<String, dynamic> json) =>
      _$$_TabbarStateFromJson(json);

  @override
  @JsonKey()
  final TabbarStatus status;
  @override
  final int? tabIndex;

  @override
  String toString() {
    return 'TabbarState(status: $status, tabIndex: $tabIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TabbarState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.tabIndex, tabIndex) ||
                other.tabIndex == tabIndex));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, tabIndex);

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

abstract class _TabbarState implements TabbarState {
  const factory _TabbarState({final TabbarStatus status, final int? tabIndex}) =
      _$_TabbarState;

  factory _TabbarState.fromJson(Map<String, dynamic> json) =
      _$_TabbarState.fromJson;

  @override
  TabbarStatus get status;
  @override
  int? get tabIndex;
  @override
  @JsonKey(ignore: true)
  _$$_TabbarStateCopyWith<_$_TabbarState> get copyWith =>
      throw _privateConstructorUsedError;
}
