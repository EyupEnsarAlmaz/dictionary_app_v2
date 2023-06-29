// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'word_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WordEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? word) searched,
    required TResult Function(String? autoWord) autoWord,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? word)? searched,
    TResult? Function(String? autoWord)? autoWord,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? word)? searched,
    TResult Function(String? autoWord)? autoWord,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Searched value) searched,
    required TResult Function(_AutoWord value) autoWord,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Searched value)? searched,
    TResult? Function(_AutoWord value)? autoWord,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Searched value)? searched,
    TResult Function(_AutoWord value)? autoWord,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WordEventCopyWith<$Res> {
  factory $WordEventCopyWith(WordEvent value, $Res Function(WordEvent) then) =
      _$WordEventCopyWithImpl<$Res, WordEvent>;
}

/// @nodoc
class _$WordEventCopyWithImpl<$Res, $Val extends WordEvent>
    implements $WordEventCopyWith<$Res> {
  _$WordEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SearchedCopyWith<$Res> {
  factory _$$_SearchedCopyWith(
          _$_Searched value, $Res Function(_$_Searched) then) =
      __$$_SearchedCopyWithImpl<$Res>;
  @useResult
  $Res call({String? word});
}

/// @nodoc
class __$$_SearchedCopyWithImpl<$Res>
    extends _$WordEventCopyWithImpl<$Res, _$_Searched>
    implements _$$_SearchedCopyWith<$Res> {
  __$$_SearchedCopyWithImpl(
      _$_Searched _value, $Res Function(_$_Searched) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? word = freezed,
  }) {
    return _then(_$_Searched(
      freezed == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Searched implements _Searched {
  const _$_Searched(this.word);

  @override
  final String? word;

  @override
  String toString() {
    return 'WordEvent.searched(word: $word)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Searched &&
            (identical(other.word, word) || other.word == word));
  }

  @override
  int get hashCode => Object.hash(runtimeType, word);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchedCopyWith<_$_Searched> get copyWith =>
      __$$_SearchedCopyWithImpl<_$_Searched>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? word) searched,
    required TResult Function(String? autoWord) autoWord,
  }) {
    return searched(word);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? word)? searched,
    TResult? Function(String? autoWord)? autoWord,
  }) {
    return searched?.call(word);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? word)? searched,
    TResult Function(String? autoWord)? autoWord,
    required TResult orElse(),
  }) {
    if (searched != null) {
      return searched(word);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Searched value) searched,
    required TResult Function(_AutoWord value) autoWord,
  }) {
    return searched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Searched value)? searched,
    TResult? Function(_AutoWord value)? autoWord,
  }) {
    return searched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Searched value)? searched,
    TResult Function(_AutoWord value)? autoWord,
    required TResult orElse(),
  }) {
    if (searched != null) {
      return searched(this);
    }
    return orElse();
  }
}

abstract class _Searched implements WordEvent {
  const factory _Searched(final String? word) = _$_Searched;

  String? get word;
  @JsonKey(ignore: true)
  _$$_SearchedCopyWith<_$_Searched> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AutoWordCopyWith<$Res> {
  factory _$$_AutoWordCopyWith(
          _$_AutoWord value, $Res Function(_$_AutoWord) then) =
      __$$_AutoWordCopyWithImpl<$Res>;
  @useResult
  $Res call({String? autoWord});
}

/// @nodoc
class __$$_AutoWordCopyWithImpl<$Res>
    extends _$WordEventCopyWithImpl<$Res, _$_AutoWord>
    implements _$$_AutoWordCopyWith<$Res> {
  __$$_AutoWordCopyWithImpl(
      _$_AutoWord _value, $Res Function(_$_AutoWord) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? autoWord = freezed,
  }) {
    return _then(_$_AutoWord(
      freezed == autoWord
          ? _value.autoWord
          : autoWord // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_AutoWord implements _AutoWord {
  const _$_AutoWord(this.autoWord);

  @override
  final String? autoWord;

  @override
  String toString() {
    return 'WordEvent.autoWord(autoWord: $autoWord)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AutoWord &&
            (identical(other.autoWord, autoWord) ||
                other.autoWord == autoWord));
  }

  @override
  int get hashCode => Object.hash(runtimeType, autoWord);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AutoWordCopyWith<_$_AutoWord> get copyWith =>
      __$$_AutoWordCopyWithImpl<_$_AutoWord>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? word) searched,
    required TResult Function(String? autoWord) autoWord,
  }) {
    return autoWord(this.autoWord);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? word)? searched,
    TResult? Function(String? autoWord)? autoWord,
  }) {
    return autoWord?.call(this.autoWord);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? word)? searched,
    TResult Function(String? autoWord)? autoWord,
    required TResult orElse(),
  }) {
    if (autoWord != null) {
      return autoWord(this.autoWord);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Searched value) searched,
    required TResult Function(_AutoWord value) autoWord,
  }) {
    return autoWord(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Searched value)? searched,
    TResult? Function(_AutoWord value)? autoWord,
  }) {
    return autoWord?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Searched value)? searched,
    TResult Function(_AutoWord value)? autoWord,
    required TResult orElse(),
  }) {
    if (autoWord != null) {
      return autoWord(this);
    }
    return orElse();
  }
}

abstract class _AutoWord implements WordEvent {
  const factory _AutoWord(final String? autoWord) = _$_AutoWord;

  String? get autoWord;
  @JsonKey(ignore: true)
  _$$_AutoWordCopyWith<_$_AutoWord> get copyWith =>
      throw _privateConstructorUsedError;
}

WordState _$WordStateFromJson(Map<String, dynamic> json) {
  return _WordState.fromJson(json);
}

/// @nodoc
mixin _$WordState {
  WordStatus get status => throw _privateConstructorUsedError;
  RemoteWordModel? get remoteWordModel => throw _privateConstructorUsedError;
  String? get autoWords => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WordStateCopyWith<WordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WordStateCopyWith<$Res> {
  factory $WordStateCopyWith(WordState value, $Res Function(WordState) then) =
      _$WordStateCopyWithImpl<$Res, WordState>;
  @useResult
  $Res call(
      {WordStatus status, RemoteWordModel? remoteWordModel, String? autoWords});
}

/// @nodoc
class _$WordStateCopyWithImpl<$Res, $Val extends WordState>
    implements $WordStateCopyWith<$Res> {
  _$WordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? remoteWordModel = freezed,
    Object? autoWords = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as WordStatus,
      remoteWordModel: freezed == remoteWordModel
          ? _value.remoteWordModel
          : remoteWordModel // ignore: cast_nullable_to_non_nullable
              as RemoteWordModel?,
      autoWords: freezed == autoWords
          ? _value.autoWords
          : autoWords // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WordStateCopyWith<$Res> implements $WordStateCopyWith<$Res> {
  factory _$$_WordStateCopyWith(
          _$_WordState value, $Res Function(_$_WordState) then) =
      __$$_WordStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {WordStatus status, RemoteWordModel? remoteWordModel, String? autoWords});
}

/// @nodoc
class __$$_WordStateCopyWithImpl<$Res>
    extends _$WordStateCopyWithImpl<$Res, _$_WordState>
    implements _$$_WordStateCopyWith<$Res> {
  __$$_WordStateCopyWithImpl(
      _$_WordState _value, $Res Function(_$_WordState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? remoteWordModel = freezed,
    Object? autoWords = freezed,
  }) {
    return _then(_$_WordState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as WordStatus,
      remoteWordModel: freezed == remoteWordModel
          ? _value.remoteWordModel
          : remoteWordModel // ignore: cast_nullable_to_non_nullable
              as RemoteWordModel?,
      autoWords: freezed == autoWords
          ? _value.autoWords
          : autoWords // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WordState implements _WordState {
  const _$_WordState(
      {this.status = WordStatus.initial, this.remoteWordModel, this.autoWords});

  factory _$_WordState.fromJson(Map<String, dynamic> json) =>
      _$$_WordStateFromJson(json);

  @override
  @JsonKey()
  final WordStatus status;
  @override
  final RemoteWordModel? remoteWordModel;
  @override
  final String? autoWords;

  @override
  String toString() {
    return 'WordState(status: $status, remoteWordModel: $remoteWordModel, autoWords: $autoWords)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WordState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.remoteWordModel, remoteWordModel) ||
                other.remoteWordModel == remoteWordModel) &&
            (identical(other.autoWords, autoWords) ||
                other.autoWords == autoWords));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, status, remoteWordModel, autoWords);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WordStateCopyWith<_$_WordState> get copyWith =>
      __$$_WordStateCopyWithImpl<_$_WordState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WordStateToJson(
      this,
    );
  }
}

abstract class _WordState implements WordState {
  const factory _WordState(
      {final WordStatus status,
      final RemoteWordModel? remoteWordModel,
      final String? autoWords}) = _$_WordState;

  factory _WordState.fromJson(Map<String, dynamic> json) =
      _$_WordState.fromJson;

  @override
  WordStatus get status;
  @override
  RemoteWordModel? get remoteWordModel;
  @override
  String? get autoWords;
  @override
  @JsonKey(ignore: true)
  _$$_WordStateCopyWith<_$_WordState> get copyWith =>
      throw _privateConstructorUsedError;
}
