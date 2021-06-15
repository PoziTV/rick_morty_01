// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'episodes_list_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EpisodesListEventTearOff {
  const _$EpisodesListEventTearOff();

  EpisodesListEventInitial initial() {
    return const EpisodesListEventInitial();
  }
}

/// @nodoc
const $EpisodesListEvent = _$EpisodesListEventTearOff();

/// @nodoc
mixin _$EpisodesListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EpisodesListEventInitial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EpisodesListEventInitial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodesListEventCopyWith<$Res> {
  factory $EpisodesListEventCopyWith(
          EpisodesListEvent value, $Res Function(EpisodesListEvent) then) =
      _$EpisodesListEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$EpisodesListEventCopyWithImpl<$Res>
    implements $EpisodesListEventCopyWith<$Res> {
  _$EpisodesListEventCopyWithImpl(this._value, this._then);

  final EpisodesListEvent _value;
  // ignore: unused_field
  final $Res Function(EpisodesListEvent) _then;
}

/// @nodoc
abstract class $EpisodesListEventInitialCopyWith<$Res> {
  factory $EpisodesListEventInitialCopyWith(EpisodesListEventInitial value,
          $Res Function(EpisodesListEventInitial) then) =
      _$EpisodesListEventInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$EpisodesListEventInitialCopyWithImpl<$Res>
    extends _$EpisodesListEventCopyWithImpl<$Res>
    implements $EpisodesListEventInitialCopyWith<$Res> {
  _$EpisodesListEventInitialCopyWithImpl(EpisodesListEventInitial _value,
      $Res Function(EpisodesListEventInitial) _then)
      : super(_value, (v) => _then(v as EpisodesListEventInitial));

  @override
  EpisodesListEventInitial get _value =>
      super._value as EpisodesListEventInitial;
}

/// @nodoc

class _$EpisodesListEventInitial implements EpisodesListEventInitial {
  const _$EpisodesListEventInitial();

  @override
  String toString() {
    return 'EpisodesListEvent.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EpisodesListEventInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EpisodesListEventInitial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EpisodesListEventInitial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class EpisodesListEventInitial implements EpisodesListEvent {
  const factory EpisodesListEventInitial() = _$EpisodesListEventInitial;
}

/// @nodoc
class _$EpisodesListStateTearOff {
  const _$EpisodesListStateTearOff();

  EpisodesListStateInitial initial() {
    return const EpisodesListStateInitial();
  }

  EpisodesListStateLoading loading() {
    return const EpisodesListStateLoading();
  }

  EpisodesListStateError error() {
    return const EpisodesListStateError();
  }

  EpisodesListStateData data({required List<EpisodeModel> episodesList}) {
    return EpisodesListStateData(
      episodesList: episodesList,
    );
  }
}

/// @nodoc
const $EpisodesListState = _$EpisodesListStateTearOff();

/// @nodoc
mixin _$EpisodesListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<EpisodeModel> episodesList) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<EpisodeModel> episodesList)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EpisodesListStateInitial value) initial,
    required TResult Function(EpisodesListStateLoading value) loading,
    required TResult Function(EpisodesListStateError value) error,
    required TResult Function(EpisodesListStateData value) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EpisodesListStateInitial value)? initial,
    TResult Function(EpisodesListStateLoading value)? loading,
    TResult Function(EpisodesListStateError value)? error,
    TResult Function(EpisodesListStateData value)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodesListStateCopyWith<$Res> {
  factory $EpisodesListStateCopyWith(
          EpisodesListState value, $Res Function(EpisodesListState) then) =
      _$EpisodesListStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$EpisodesListStateCopyWithImpl<$Res>
    implements $EpisodesListStateCopyWith<$Res> {
  _$EpisodesListStateCopyWithImpl(this._value, this._then);

  final EpisodesListState _value;
  // ignore: unused_field
  final $Res Function(EpisodesListState) _then;
}

/// @nodoc
abstract class $EpisodesListStateInitialCopyWith<$Res> {
  factory $EpisodesListStateInitialCopyWith(EpisodesListStateInitial value,
          $Res Function(EpisodesListStateInitial) then) =
      _$EpisodesListStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$EpisodesListStateInitialCopyWithImpl<$Res>
    extends _$EpisodesListStateCopyWithImpl<$Res>
    implements $EpisodesListStateInitialCopyWith<$Res> {
  _$EpisodesListStateInitialCopyWithImpl(EpisodesListStateInitial _value,
      $Res Function(EpisodesListStateInitial) _then)
      : super(_value, (v) => _then(v as EpisodesListStateInitial));

  @override
  EpisodesListStateInitial get _value =>
      super._value as EpisodesListStateInitial;
}

/// @nodoc

class _$EpisodesListStateInitial implements EpisodesListStateInitial {
  const _$EpisodesListStateInitial();

  @override
  String toString() {
    return 'EpisodesListState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EpisodesListStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<EpisodeModel> episodesList) data,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<EpisodeModel> episodesList)? data,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EpisodesListStateInitial value) initial,
    required TResult Function(EpisodesListStateLoading value) loading,
    required TResult Function(EpisodesListStateError value) error,
    required TResult Function(EpisodesListStateData value) data,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EpisodesListStateInitial value)? initial,
    TResult Function(EpisodesListStateLoading value)? loading,
    TResult Function(EpisodesListStateError value)? error,
    TResult Function(EpisodesListStateData value)? data,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class EpisodesListStateInitial implements EpisodesListState {
  const factory EpisodesListStateInitial() = _$EpisodesListStateInitial;
}

/// @nodoc
abstract class $EpisodesListStateLoadingCopyWith<$Res> {
  factory $EpisodesListStateLoadingCopyWith(EpisodesListStateLoading value,
          $Res Function(EpisodesListStateLoading) then) =
      _$EpisodesListStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$EpisodesListStateLoadingCopyWithImpl<$Res>
    extends _$EpisodesListStateCopyWithImpl<$Res>
    implements $EpisodesListStateLoadingCopyWith<$Res> {
  _$EpisodesListStateLoadingCopyWithImpl(EpisodesListStateLoading _value,
      $Res Function(EpisodesListStateLoading) _then)
      : super(_value, (v) => _then(v as EpisodesListStateLoading));

  @override
  EpisodesListStateLoading get _value =>
      super._value as EpisodesListStateLoading;
}

/// @nodoc

class _$EpisodesListStateLoading implements EpisodesListStateLoading {
  const _$EpisodesListStateLoading();

  @override
  String toString() {
    return 'EpisodesListState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EpisodesListStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<EpisodeModel> episodesList) data,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<EpisodeModel> episodesList)? data,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EpisodesListStateInitial value) initial,
    required TResult Function(EpisodesListStateLoading value) loading,
    required TResult Function(EpisodesListStateError value) error,
    required TResult Function(EpisodesListStateData value) data,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EpisodesListStateInitial value)? initial,
    TResult Function(EpisodesListStateLoading value)? loading,
    TResult Function(EpisodesListStateError value)? error,
    TResult Function(EpisodesListStateData value)? data,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class EpisodesListStateLoading implements EpisodesListState {
  const factory EpisodesListStateLoading() = _$EpisodesListStateLoading;
}

/// @nodoc
abstract class $EpisodesListStateErrorCopyWith<$Res> {
  factory $EpisodesListStateErrorCopyWith(EpisodesListStateError value,
          $Res Function(EpisodesListStateError) then) =
      _$EpisodesListStateErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$EpisodesListStateErrorCopyWithImpl<$Res>
    extends _$EpisodesListStateCopyWithImpl<$Res>
    implements $EpisodesListStateErrorCopyWith<$Res> {
  _$EpisodesListStateErrorCopyWithImpl(EpisodesListStateError _value,
      $Res Function(EpisodesListStateError) _then)
      : super(_value, (v) => _then(v as EpisodesListStateError));

  @override
  EpisodesListStateError get _value => super._value as EpisodesListStateError;
}

/// @nodoc

class _$EpisodesListStateError implements EpisodesListStateError {
  const _$EpisodesListStateError();

  @override
  String toString() {
    return 'EpisodesListState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EpisodesListStateError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<EpisodeModel> episodesList) data,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<EpisodeModel> episodesList)? data,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EpisodesListStateInitial value) initial,
    required TResult Function(EpisodesListStateLoading value) loading,
    required TResult Function(EpisodesListStateError value) error,
    required TResult Function(EpisodesListStateData value) data,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EpisodesListStateInitial value)? initial,
    TResult Function(EpisodesListStateLoading value)? loading,
    TResult Function(EpisodesListStateError value)? error,
    TResult Function(EpisodesListStateData value)? data,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class EpisodesListStateError implements EpisodesListState {
  const factory EpisodesListStateError() = _$EpisodesListStateError;
}

/// @nodoc
abstract class $EpisodesListStateDataCopyWith<$Res> {
  factory $EpisodesListStateDataCopyWith(EpisodesListStateData value,
          $Res Function(EpisodesListStateData) then) =
      _$EpisodesListStateDataCopyWithImpl<$Res>;
  $Res call({List<EpisodeModel> episodesList});
}

/// @nodoc
class _$EpisodesListStateDataCopyWithImpl<$Res>
    extends _$EpisodesListStateCopyWithImpl<$Res>
    implements $EpisodesListStateDataCopyWith<$Res> {
  _$EpisodesListStateDataCopyWithImpl(
      EpisodesListStateData _value, $Res Function(EpisodesListStateData) _then)
      : super(_value, (v) => _then(v as EpisodesListStateData));

  @override
  EpisodesListStateData get _value => super._value as EpisodesListStateData;

  @override
  $Res call({
    Object? episodesList = freezed,
  }) {
    return _then(EpisodesListStateData(
      episodesList: episodesList == freezed
          ? _value.episodesList
          : episodesList // ignore: cast_nullable_to_non_nullable
              as List<EpisodeModel>,
    ));
  }
}

/// @nodoc

class _$EpisodesListStateData implements EpisodesListStateData {
  const _$EpisodesListStateData({required this.episodesList});

  @override
  final List<EpisodeModel> episodesList;

  @override
  String toString() {
    return 'EpisodesListState.data(episodesList: $episodesList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EpisodesListStateData &&
            (identical(other.episodesList, episodesList) ||
                const DeepCollectionEquality()
                    .equals(other.episodesList, episodesList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(episodesList);

  @JsonKey(ignore: true)
  @override
  $EpisodesListStateDataCopyWith<EpisodesListStateData> get copyWith =>
      _$EpisodesListStateDataCopyWithImpl<EpisodesListStateData>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<EpisodeModel> episodesList) data,
  }) {
    return data(episodesList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<EpisodeModel> episodesList)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(episodesList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EpisodesListStateInitial value) initial,
    required TResult Function(EpisodesListStateLoading value) loading,
    required TResult Function(EpisodesListStateError value) error,
    required TResult Function(EpisodesListStateData value) data,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EpisodesListStateInitial value)? initial,
    TResult Function(EpisodesListStateLoading value)? loading,
    TResult Function(EpisodesListStateError value)? error,
    TResult Function(EpisodesListStateData value)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class EpisodesListStateData implements EpisodesListState {
  const factory EpisodesListStateData(
      {required List<EpisodeModel> episodesList}) = _$EpisodesListStateData;

  List<EpisodeModel> get episodesList => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EpisodesListStateDataCopyWith<EpisodesListStateData> get copyWith =>
      throw _privateConstructorUsedError;
}
