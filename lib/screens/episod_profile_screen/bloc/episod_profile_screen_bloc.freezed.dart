// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'episod_profile_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EpisodProfileEventTearOff {
  const _$EpisodProfileEventTearOff();

  EpisodProfileEventInitial initial({required EpisodeModel currentEpisod}) {
    return EpisodProfileEventInitial(
      currentEpisod: currentEpisod,
    );
  }
}

/// @nodoc
const $EpisodProfileEvent = _$EpisodProfileEventTearOff();

/// @nodoc
mixin _$EpisodProfileEvent {
  EpisodeModel get currentEpisod => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EpisodeModel currentEpisod) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EpisodeModel currentEpisod)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EpisodProfileEventInitial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EpisodProfileEventInitial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EpisodProfileEventCopyWith<EpisodProfileEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodProfileEventCopyWith<$Res> {
  factory $EpisodProfileEventCopyWith(
          EpisodProfileEvent value, $Res Function(EpisodProfileEvent) then) =
      _$EpisodProfileEventCopyWithImpl<$Res>;
  $Res call({EpisodeModel currentEpisod});
}

/// @nodoc
class _$EpisodProfileEventCopyWithImpl<$Res>
    implements $EpisodProfileEventCopyWith<$Res> {
  _$EpisodProfileEventCopyWithImpl(this._value, this._then);

  final EpisodProfileEvent _value;
  // ignore: unused_field
  final $Res Function(EpisodProfileEvent) _then;

  @override
  $Res call({
    Object? currentEpisod = freezed,
  }) {
    return _then(_value.copyWith(
      currentEpisod: currentEpisod == freezed
          ? _value.currentEpisod
          : currentEpisod // ignore: cast_nullable_to_non_nullable
              as EpisodeModel,
    ));
  }
}

/// @nodoc
abstract class $EpisodProfileEventInitialCopyWith<$Res>
    implements $EpisodProfileEventCopyWith<$Res> {
  factory $EpisodProfileEventInitialCopyWith(EpisodProfileEventInitial value,
          $Res Function(EpisodProfileEventInitial) then) =
      _$EpisodProfileEventInitialCopyWithImpl<$Res>;
  @override
  $Res call({EpisodeModel currentEpisod});
}

/// @nodoc
class _$EpisodProfileEventInitialCopyWithImpl<$Res>
    extends _$EpisodProfileEventCopyWithImpl<$Res>
    implements $EpisodProfileEventInitialCopyWith<$Res> {
  _$EpisodProfileEventInitialCopyWithImpl(EpisodProfileEventInitial _value,
      $Res Function(EpisodProfileEventInitial) _then)
      : super(_value, (v) => _then(v as EpisodProfileEventInitial));

  @override
  EpisodProfileEventInitial get _value =>
      super._value as EpisodProfileEventInitial;

  @override
  $Res call({
    Object? currentEpisod = freezed,
  }) {
    return _then(EpisodProfileEventInitial(
      currentEpisod: currentEpisod == freezed
          ? _value.currentEpisod
          : currentEpisod // ignore: cast_nullable_to_non_nullable
              as EpisodeModel,
    ));
  }
}

/// @nodoc

class _$EpisodProfileEventInitial
    with DiagnosticableTreeMixin
    implements EpisodProfileEventInitial {
  const _$EpisodProfileEventInitial({required this.currentEpisod});

  @override
  final EpisodeModel currentEpisod;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EpisodProfileEvent.initial(currentEpisod: $currentEpisod)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EpisodProfileEvent.initial'))
      ..add(DiagnosticsProperty('currentEpisod', currentEpisod));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EpisodProfileEventInitial &&
            (identical(other.currentEpisod, currentEpisod) ||
                const DeepCollectionEquality()
                    .equals(other.currentEpisod, currentEpisod)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(currentEpisod);

  @JsonKey(ignore: true)
  @override
  $EpisodProfileEventInitialCopyWith<EpisodProfileEventInitial> get copyWith =>
      _$EpisodProfileEventInitialCopyWithImpl<EpisodProfileEventInitial>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EpisodeModel currentEpisod) initial,
  }) {
    return initial(currentEpisod);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EpisodeModel currentEpisod)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(currentEpisod);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EpisodProfileEventInitial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EpisodProfileEventInitial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class EpisodProfileEventInitial implements EpisodProfileEvent {
  const factory EpisodProfileEventInitial(
      {required EpisodeModel currentEpisod}) = _$EpisodProfileEventInitial;

  @override
  EpisodeModel get currentEpisod => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $EpisodProfileEventInitialCopyWith<EpisodProfileEventInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$EpisodProfileStateTearOff {
  const _$EpisodProfileStateTearOff();

  EpisodProfileStateInitial initial() {
    return const EpisodProfileStateInitial();
  }

  EpisodProfileStateLoading loading() {
    return const EpisodProfileStateLoading();
  }

  EpisodProfileStateError error() {
    return const EpisodProfileStateError();
  }

  EpisodProfileStateData data(
      {required EpisodeModel currentEpisod,
      required List<HeroModel> currentEpisodHeroesList}) {
    return EpisodProfileStateData(
      currentEpisod: currentEpisod,
      currentEpisodHeroesList: currentEpisodHeroesList,
    );
  }
}

/// @nodoc
const $EpisodProfileState = _$EpisodProfileStateTearOff();

/// @nodoc
mixin _$EpisodProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(
            EpisodeModel currentEpisod, List<HeroModel> currentEpisodHeroesList)
        data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(EpisodeModel currentEpisod,
            List<HeroModel> currentEpisodHeroesList)?
        data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EpisodProfileStateInitial value) initial,
    required TResult Function(EpisodProfileStateLoading value) loading,
    required TResult Function(EpisodProfileStateError value) error,
    required TResult Function(EpisodProfileStateData value) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EpisodProfileStateInitial value)? initial,
    TResult Function(EpisodProfileStateLoading value)? loading,
    TResult Function(EpisodProfileStateError value)? error,
    TResult Function(EpisodProfileStateData value)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodProfileStateCopyWith<$Res> {
  factory $EpisodProfileStateCopyWith(
          EpisodProfileState value, $Res Function(EpisodProfileState) then) =
      _$EpisodProfileStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$EpisodProfileStateCopyWithImpl<$Res>
    implements $EpisodProfileStateCopyWith<$Res> {
  _$EpisodProfileStateCopyWithImpl(this._value, this._then);

  final EpisodProfileState _value;
  // ignore: unused_field
  final $Res Function(EpisodProfileState) _then;
}

/// @nodoc
abstract class $EpisodProfileStateInitialCopyWith<$Res> {
  factory $EpisodProfileStateInitialCopyWith(EpisodProfileStateInitial value,
          $Res Function(EpisodProfileStateInitial) then) =
      _$EpisodProfileStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$EpisodProfileStateInitialCopyWithImpl<$Res>
    extends _$EpisodProfileStateCopyWithImpl<$Res>
    implements $EpisodProfileStateInitialCopyWith<$Res> {
  _$EpisodProfileStateInitialCopyWithImpl(EpisodProfileStateInitial _value,
      $Res Function(EpisodProfileStateInitial) _then)
      : super(_value, (v) => _then(v as EpisodProfileStateInitial));

  @override
  EpisodProfileStateInitial get _value =>
      super._value as EpisodProfileStateInitial;
}

/// @nodoc

class _$EpisodProfileStateInitial
    with DiagnosticableTreeMixin
    implements EpisodProfileStateInitial {
  const _$EpisodProfileStateInitial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EpisodProfileState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'EpisodProfileState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EpisodProfileStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(
            EpisodeModel currentEpisod, List<HeroModel> currentEpisodHeroesList)
        data,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(EpisodeModel currentEpisod,
            List<HeroModel> currentEpisodHeroesList)?
        data,
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
    required TResult Function(EpisodProfileStateInitial value) initial,
    required TResult Function(EpisodProfileStateLoading value) loading,
    required TResult Function(EpisodProfileStateError value) error,
    required TResult Function(EpisodProfileStateData value) data,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EpisodProfileStateInitial value)? initial,
    TResult Function(EpisodProfileStateLoading value)? loading,
    TResult Function(EpisodProfileStateError value)? error,
    TResult Function(EpisodProfileStateData value)? data,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class EpisodProfileStateInitial implements EpisodProfileState {
  const factory EpisodProfileStateInitial() = _$EpisodProfileStateInitial;
}

/// @nodoc
abstract class $EpisodProfileStateLoadingCopyWith<$Res> {
  factory $EpisodProfileStateLoadingCopyWith(EpisodProfileStateLoading value,
          $Res Function(EpisodProfileStateLoading) then) =
      _$EpisodProfileStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$EpisodProfileStateLoadingCopyWithImpl<$Res>
    extends _$EpisodProfileStateCopyWithImpl<$Res>
    implements $EpisodProfileStateLoadingCopyWith<$Res> {
  _$EpisodProfileStateLoadingCopyWithImpl(EpisodProfileStateLoading _value,
      $Res Function(EpisodProfileStateLoading) _then)
      : super(_value, (v) => _then(v as EpisodProfileStateLoading));

  @override
  EpisodProfileStateLoading get _value =>
      super._value as EpisodProfileStateLoading;
}

/// @nodoc

class _$EpisodProfileStateLoading
    with DiagnosticableTreeMixin
    implements EpisodProfileStateLoading {
  const _$EpisodProfileStateLoading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EpisodProfileState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'EpisodProfileState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EpisodProfileStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(
            EpisodeModel currentEpisod, List<HeroModel> currentEpisodHeroesList)
        data,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(EpisodeModel currentEpisod,
            List<HeroModel> currentEpisodHeroesList)?
        data,
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
    required TResult Function(EpisodProfileStateInitial value) initial,
    required TResult Function(EpisodProfileStateLoading value) loading,
    required TResult Function(EpisodProfileStateError value) error,
    required TResult Function(EpisodProfileStateData value) data,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EpisodProfileStateInitial value)? initial,
    TResult Function(EpisodProfileStateLoading value)? loading,
    TResult Function(EpisodProfileStateError value)? error,
    TResult Function(EpisodProfileStateData value)? data,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class EpisodProfileStateLoading implements EpisodProfileState {
  const factory EpisodProfileStateLoading() = _$EpisodProfileStateLoading;
}

/// @nodoc
abstract class $EpisodProfileStateErrorCopyWith<$Res> {
  factory $EpisodProfileStateErrorCopyWith(EpisodProfileStateError value,
          $Res Function(EpisodProfileStateError) then) =
      _$EpisodProfileStateErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$EpisodProfileStateErrorCopyWithImpl<$Res>
    extends _$EpisodProfileStateCopyWithImpl<$Res>
    implements $EpisodProfileStateErrorCopyWith<$Res> {
  _$EpisodProfileStateErrorCopyWithImpl(EpisodProfileStateError _value,
      $Res Function(EpisodProfileStateError) _then)
      : super(_value, (v) => _then(v as EpisodProfileStateError));

  @override
  EpisodProfileStateError get _value => super._value as EpisodProfileStateError;
}

/// @nodoc

class _$EpisodProfileStateError
    with DiagnosticableTreeMixin
    implements EpisodProfileStateError {
  const _$EpisodProfileStateError();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EpisodProfileState.error()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'EpisodProfileState.error'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EpisodProfileStateError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(
            EpisodeModel currentEpisod, List<HeroModel> currentEpisodHeroesList)
        data,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(EpisodeModel currentEpisod,
            List<HeroModel> currentEpisodHeroesList)?
        data,
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
    required TResult Function(EpisodProfileStateInitial value) initial,
    required TResult Function(EpisodProfileStateLoading value) loading,
    required TResult Function(EpisodProfileStateError value) error,
    required TResult Function(EpisodProfileStateData value) data,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EpisodProfileStateInitial value)? initial,
    TResult Function(EpisodProfileStateLoading value)? loading,
    TResult Function(EpisodProfileStateError value)? error,
    TResult Function(EpisodProfileStateData value)? data,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class EpisodProfileStateError implements EpisodProfileState {
  const factory EpisodProfileStateError() = _$EpisodProfileStateError;
}

/// @nodoc
abstract class $EpisodProfileStateDataCopyWith<$Res> {
  factory $EpisodProfileStateDataCopyWith(EpisodProfileStateData value,
          $Res Function(EpisodProfileStateData) then) =
      _$EpisodProfileStateDataCopyWithImpl<$Res>;
  $Res call(
      {EpisodeModel currentEpisod, List<HeroModel> currentEpisodHeroesList});
}

/// @nodoc
class _$EpisodProfileStateDataCopyWithImpl<$Res>
    extends _$EpisodProfileStateCopyWithImpl<$Res>
    implements $EpisodProfileStateDataCopyWith<$Res> {
  _$EpisodProfileStateDataCopyWithImpl(EpisodProfileStateData _value,
      $Res Function(EpisodProfileStateData) _then)
      : super(_value, (v) => _then(v as EpisodProfileStateData));

  @override
  EpisodProfileStateData get _value => super._value as EpisodProfileStateData;

  @override
  $Res call({
    Object? currentEpisod = freezed,
    Object? currentEpisodHeroesList = freezed,
  }) {
    return _then(EpisodProfileStateData(
      currentEpisod: currentEpisod == freezed
          ? _value.currentEpisod
          : currentEpisod // ignore: cast_nullable_to_non_nullable
              as EpisodeModel,
      currentEpisodHeroesList: currentEpisodHeroesList == freezed
          ? _value.currentEpisodHeroesList
          : currentEpisodHeroesList // ignore: cast_nullable_to_non_nullable
              as List<HeroModel>,
    ));
  }
}

/// @nodoc

class _$EpisodProfileStateData
    with DiagnosticableTreeMixin
    implements EpisodProfileStateData {
  const _$EpisodProfileStateData(
      {required this.currentEpisod, required this.currentEpisodHeroesList});

  @override
  final EpisodeModel currentEpisod;
  @override
  final List<HeroModel> currentEpisodHeroesList;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EpisodProfileState.data(currentEpisod: $currentEpisod, currentEpisodHeroesList: $currentEpisodHeroesList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EpisodProfileState.data'))
      ..add(DiagnosticsProperty('currentEpisod', currentEpisod))
      ..add(DiagnosticsProperty(
          'currentEpisodHeroesList', currentEpisodHeroesList));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EpisodProfileStateData &&
            (identical(other.currentEpisod, currentEpisod) ||
                const DeepCollectionEquality()
                    .equals(other.currentEpisod, currentEpisod)) &&
            (identical(
                    other.currentEpisodHeroesList, currentEpisodHeroesList) ||
                const DeepCollectionEquality().equals(
                    other.currentEpisodHeroesList, currentEpisodHeroesList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currentEpisod) ^
      const DeepCollectionEquality().hash(currentEpisodHeroesList);

  @JsonKey(ignore: true)
  @override
  $EpisodProfileStateDataCopyWith<EpisodProfileStateData> get copyWith =>
      _$EpisodProfileStateDataCopyWithImpl<EpisodProfileStateData>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(
            EpisodeModel currentEpisod, List<HeroModel> currentEpisodHeroesList)
        data,
  }) {
    return data(currentEpisod, currentEpisodHeroesList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(EpisodeModel currentEpisod,
            List<HeroModel> currentEpisodHeroesList)?
        data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(currentEpisod, currentEpisodHeroesList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EpisodProfileStateInitial value) initial,
    required TResult Function(EpisodProfileStateLoading value) loading,
    required TResult Function(EpisodProfileStateError value) error,
    required TResult Function(EpisodProfileStateData value) data,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EpisodProfileStateInitial value)? initial,
    TResult Function(EpisodProfileStateLoading value)? loading,
    TResult Function(EpisodProfileStateError value)? error,
    TResult Function(EpisodProfileStateData value)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class EpisodProfileStateData implements EpisodProfileState {
  const factory EpisodProfileStateData(
          {required EpisodeModel currentEpisod,
          required List<HeroModel> currentEpisodHeroesList}) =
      _$EpisodProfileStateData;

  EpisodeModel get currentEpisod => throw _privateConstructorUsedError;
  List<HeroModel> get currentEpisodHeroesList =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EpisodProfileStateDataCopyWith<EpisodProfileStateData> get copyWith =>
      throw _privateConstructorUsedError;
}
