// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'profile_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HeroProfileEventTearOff {
  const _$HeroProfileEventTearOff();

  _HeroProfileEventInitial initial({required HeroModel currentHero}) {
    return _HeroProfileEventInitial(
      currentHero: currentHero,
    );
  }
}

/// @nodoc
const $HeroProfileEvent = _$HeroProfileEventTearOff();

/// @nodoc
mixin _$HeroProfileEvent {
  HeroModel get currentHero => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HeroModel currentHero) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HeroModel currentHero)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HeroProfileEventInitial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HeroProfileEventInitial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HeroProfileEventCopyWith<HeroProfileEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeroProfileEventCopyWith<$Res> {
  factory $HeroProfileEventCopyWith(
          HeroProfileEvent value, $Res Function(HeroProfileEvent) then) =
      _$HeroProfileEventCopyWithImpl<$Res>;
  $Res call({HeroModel currentHero});
}

/// @nodoc
class _$HeroProfileEventCopyWithImpl<$Res>
    implements $HeroProfileEventCopyWith<$Res> {
  _$HeroProfileEventCopyWithImpl(this._value, this._then);

  final HeroProfileEvent _value;
  // ignore: unused_field
  final $Res Function(HeroProfileEvent) _then;

  @override
  $Res call({
    Object? currentHero = freezed,
  }) {
    return _then(_value.copyWith(
      currentHero: currentHero == freezed
          ? _value.currentHero
          : currentHero // ignore: cast_nullable_to_non_nullable
              as HeroModel,
    ));
  }
}

/// @nodoc
abstract class _$HeroProfileEventInitialCopyWith<$Res>
    implements $HeroProfileEventCopyWith<$Res> {
  factory _$HeroProfileEventInitialCopyWith(_HeroProfileEventInitial value,
          $Res Function(_HeroProfileEventInitial) then) =
      __$HeroProfileEventInitialCopyWithImpl<$Res>;
  @override
  $Res call({HeroModel currentHero});
}

/// @nodoc
class __$HeroProfileEventInitialCopyWithImpl<$Res>
    extends _$HeroProfileEventCopyWithImpl<$Res>
    implements _$HeroProfileEventInitialCopyWith<$Res> {
  __$HeroProfileEventInitialCopyWithImpl(_HeroProfileEventInitial _value,
      $Res Function(_HeroProfileEventInitial) _then)
      : super(_value, (v) => _then(v as _HeroProfileEventInitial));

  @override
  _HeroProfileEventInitial get _value =>
      super._value as _HeroProfileEventInitial;

  @override
  $Res call({
    Object? currentHero = freezed,
  }) {
    return _then(_HeroProfileEventInitial(
      currentHero: currentHero == freezed
          ? _value.currentHero
          : currentHero // ignore: cast_nullable_to_non_nullable
              as HeroModel,
    ));
  }
}

/// @nodoc

class _$_HeroProfileEventInitial
    with DiagnosticableTreeMixin
    implements _HeroProfileEventInitial {
  const _$_HeroProfileEventInitial({required this.currentHero});

  @override
  final HeroModel currentHero;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HeroProfileEvent.initial(currentHero: $currentHero)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HeroProfileEvent.initial'))
      ..add(DiagnosticsProperty('currentHero', currentHero));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HeroProfileEventInitial &&
            (identical(other.currentHero, currentHero) ||
                const DeepCollectionEquality()
                    .equals(other.currentHero, currentHero)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(currentHero);

  @JsonKey(ignore: true)
  @override
  _$HeroProfileEventInitialCopyWith<_HeroProfileEventInitial> get copyWith =>
      __$HeroProfileEventInitialCopyWithImpl<_HeroProfileEventInitial>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HeroModel currentHero) initial,
  }) {
    return initial(currentHero);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HeroModel currentHero)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(currentHero);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HeroProfileEventInitial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HeroProfileEventInitial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _HeroProfileEventInitial implements HeroProfileEvent {
  const factory _HeroProfileEventInitial({required HeroModel currentHero}) =
      _$_HeroProfileEventInitial;

  @override
  HeroModel get currentHero => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$HeroProfileEventInitialCopyWith<_HeroProfileEventInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$HeroProfileStateTearOff {
  const _$HeroProfileStateTearOff();

  HeroProfileStateInitial initial() {
    return const HeroProfileStateInitial();
  }

  HeroProfileStateLoading loading() {
    return const HeroProfileStateLoading();
  }

  HeroProfileStateError error() {
    return const HeroProfileStateError();
  }

  HeroProfileStateData data(
      {required HeroModel currentHero,
      required List<EpisodeModel> currentHeroEpisodesList}) {
    return HeroProfileStateData(
      currentHero: currentHero,
      currentHeroEpisodesList: currentHeroEpisodesList,
    );
  }
}

/// @nodoc
const $HeroProfileState = _$HeroProfileStateTearOff();

/// @nodoc
mixin _$HeroProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(
            HeroModel currentHero, List<EpisodeModel> currentHeroEpisodesList)
        data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(
            HeroModel currentHero, List<EpisodeModel> currentHeroEpisodesList)?
        data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HeroProfileStateInitial value) initial,
    required TResult Function(HeroProfileStateLoading value) loading,
    required TResult Function(HeroProfileStateError value) error,
    required TResult Function(HeroProfileStateData value) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HeroProfileStateInitial value)? initial,
    TResult Function(HeroProfileStateLoading value)? loading,
    TResult Function(HeroProfileStateError value)? error,
    TResult Function(HeroProfileStateData value)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeroProfileStateCopyWith<$Res> {
  factory $HeroProfileStateCopyWith(
          HeroProfileState value, $Res Function(HeroProfileState) then) =
      _$HeroProfileStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HeroProfileStateCopyWithImpl<$Res>
    implements $HeroProfileStateCopyWith<$Res> {
  _$HeroProfileStateCopyWithImpl(this._value, this._then);

  final HeroProfileState _value;
  // ignore: unused_field
  final $Res Function(HeroProfileState) _then;
}

/// @nodoc
abstract class $HeroProfileStateInitialCopyWith<$Res> {
  factory $HeroProfileStateInitialCopyWith(HeroProfileStateInitial value,
          $Res Function(HeroProfileStateInitial) then) =
      _$HeroProfileStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$HeroProfileStateInitialCopyWithImpl<$Res>
    extends _$HeroProfileStateCopyWithImpl<$Res>
    implements $HeroProfileStateInitialCopyWith<$Res> {
  _$HeroProfileStateInitialCopyWithImpl(HeroProfileStateInitial _value,
      $Res Function(HeroProfileStateInitial) _then)
      : super(_value, (v) => _then(v as HeroProfileStateInitial));

  @override
  HeroProfileStateInitial get _value => super._value as HeroProfileStateInitial;
}

/// @nodoc

class _$HeroProfileStateInitial
    with DiagnosticableTreeMixin
    implements HeroProfileStateInitial {
  const _$HeroProfileStateInitial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HeroProfileState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'HeroProfileState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is HeroProfileStateInitial);
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
            HeroModel currentHero, List<EpisodeModel> currentHeroEpisodesList)
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
    TResult Function(
            HeroModel currentHero, List<EpisodeModel> currentHeroEpisodesList)?
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
    required TResult Function(HeroProfileStateInitial value) initial,
    required TResult Function(HeroProfileStateLoading value) loading,
    required TResult Function(HeroProfileStateError value) error,
    required TResult Function(HeroProfileStateData value) data,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HeroProfileStateInitial value)? initial,
    TResult Function(HeroProfileStateLoading value)? loading,
    TResult Function(HeroProfileStateError value)? error,
    TResult Function(HeroProfileStateData value)? data,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class HeroProfileStateInitial implements HeroProfileState {
  const factory HeroProfileStateInitial() = _$HeroProfileStateInitial;
}

/// @nodoc
abstract class $HeroProfileStateLoadingCopyWith<$Res> {
  factory $HeroProfileStateLoadingCopyWith(HeroProfileStateLoading value,
          $Res Function(HeroProfileStateLoading) then) =
      _$HeroProfileStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$HeroProfileStateLoadingCopyWithImpl<$Res>
    extends _$HeroProfileStateCopyWithImpl<$Res>
    implements $HeroProfileStateLoadingCopyWith<$Res> {
  _$HeroProfileStateLoadingCopyWithImpl(HeroProfileStateLoading _value,
      $Res Function(HeroProfileStateLoading) _then)
      : super(_value, (v) => _then(v as HeroProfileStateLoading));

  @override
  HeroProfileStateLoading get _value => super._value as HeroProfileStateLoading;
}

/// @nodoc

class _$HeroProfileStateLoading
    with DiagnosticableTreeMixin
    implements HeroProfileStateLoading {
  const _$HeroProfileStateLoading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HeroProfileState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'HeroProfileState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is HeroProfileStateLoading);
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
            HeroModel currentHero, List<EpisodeModel> currentHeroEpisodesList)
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
    TResult Function(
            HeroModel currentHero, List<EpisodeModel> currentHeroEpisodesList)?
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
    required TResult Function(HeroProfileStateInitial value) initial,
    required TResult Function(HeroProfileStateLoading value) loading,
    required TResult Function(HeroProfileStateError value) error,
    required TResult Function(HeroProfileStateData value) data,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HeroProfileStateInitial value)? initial,
    TResult Function(HeroProfileStateLoading value)? loading,
    TResult Function(HeroProfileStateError value)? error,
    TResult Function(HeroProfileStateData value)? data,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class HeroProfileStateLoading implements HeroProfileState {
  const factory HeroProfileStateLoading() = _$HeroProfileStateLoading;
}

/// @nodoc
abstract class $HeroProfileStateErrorCopyWith<$Res> {
  factory $HeroProfileStateErrorCopyWith(HeroProfileStateError value,
          $Res Function(HeroProfileStateError) then) =
      _$HeroProfileStateErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$HeroProfileStateErrorCopyWithImpl<$Res>
    extends _$HeroProfileStateCopyWithImpl<$Res>
    implements $HeroProfileStateErrorCopyWith<$Res> {
  _$HeroProfileStateErrorCopyWithImpl(
      HeroProfileStateError _value, $Res Function(HeroProfileStateError) _then)
      : super(_value, (v) => _then(v as HeroProfileStateError));

  @override
  HeroProfileStateError get _value => super._value as HeroProfileStateError;
}

/// @nodoc

class _$HeroProfileStateError
    with DiagnosticableTreeMixin
    implements HeroProfileStateError {
  const _$HeroProfileStateError();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HeroProfileState.error()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'HeroProfileState.error'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is HeroProfileStateError);
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
            HeroModel currentHero, List<EpisodeModel> currentHeroEpisodesList)
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
    TResult Function(
            HeroModel currentHero, List<EpisodeModel> currentHeroEpisodesList)?
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
    required TResult Function(HeroProfileStateInitial value) initial,
    required TResult Function(HeroProfileStateLoading value) loading,
    required TResult Function(HeroProfileStateError value) error,
    required TResult Function(HeroProfileStateData value) data,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HeroProfileStateInitial value)? initial,
    TResult Function(HeroProfileStateLoading value)? loading,
    TResult Function(HeroProfileStateError value)? error,
    TResult Function(HeroProfileStateData value)? data,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class HeroProfileStateError implements HeroProfileState {
  const factory HeroProfileStateError() = _$HeroProfileStateError;
}

/// @nodoc
abstract class $HeroProfileStateDataCopyWith<$Res> {
  factory $HeroProfileStateDataCopyWith(HeroProfileStateData value,
          $Res Function(HeroProfileStateData) then) =
      _$HeroProfileStateDataCopyWithImpl<$Res>;
  $Res call(
      {HeroModel currentHero, List<EpisodeModel> currentHeroEpisodesList});
}

/// @nodoc
class _$HeroProfileStateDataCopyWithImpl<$Res>
    extends _$HeroProfileStateCopyWithImpl<$Res>
    implements $HeroProfileStateDataCopyWith<$Res> {
  _$HeroProfileStateDataCopyWithImpl(
      HeroProfileStateData _value, $Res Function(HeroProfileStateData) _then)
      : super(_value, (v) => _then(v as HeroProfileStateData));

  @override
  HeroProfileStateData get _value => super._value as HeroProfileStateData;

  @override
  $Res call({
    Object? currentHero = freezed,
    Object? currentHeroEpisodesList = freezed,
  }) {
    return _then(HeroProfileStateData(
      currentHero: currentHero == freezed
          ? _value.currentHero
          : currentHero // ignore: cast_nullable_to_non_nullable
              as HeroModel,
      currentHeroEpisodesList: currentHeroEpisodesList == freezed
          ? _value.currentHeroEpisodesList
          : currentHeroEpisodesList // ignore: cast_nullable_to_non_nullable
              as List<EpisodeModel>,
    ));
  }
}

/// @nodoc

class _$HeroProfileStateData
    with DiagnosticableTreeMixin
    implements HeroProfileStateData {
  const _$HeroProfileStateData(
      {required this.currentHero, required this.currentHeroEpisodesList});

  @override
  final HeroModel currentHero;
  @override
  final List<EpisodeModel> currentHeroEpisodesList;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HeroProfileState.data(currentHero: $currentHero, currentHeroEpisodesList: $currentHeroEpisodesList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HeroProfileState.data'))
      ..add(DiagnosticsProperty('currentHero', currentHero))
      ..add(DiagnosticsProperty(
          'currentHeroEpisodesList', currentHeroEpisodesList));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is HeroProfileStateData &&
            (identical(other.currentHero, currentHero) ||
                const DeepCollectionEquality()
                    .equals(other.currentHero, currentHero)) &&
            (identical(
                    other.currentHeroEpisodesList, currentHeroEpisodesList) ||
                const DeepCollectionEquality().equals(
                    other.currentHeroEpisodesList, currentHeroEpisodesList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currentHero) ^
      const DeepCollectionEquality().hash(currentHeroEpisodesList);

  @JsonKey(ignore: true)
  @override
  $HeroProfileStateDataCopyWith<HeroProfileStateData> get copyWith =>
      _$HeroProfileStateDataCopyWithImpl<HeroProfileStateData>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(
            HeroModel currentHero, List<EpisodeModel> currentHeroEpisodesList)
        data,
  }) {
    return data(currentHero, currentHeroEpisodesList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(
            HeroModel currentHero, List<EpisodeModel> currentHeroEpisodesList)?
        data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(currentHero, currentHeroEpisodesList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HeroProfileStateInitial value) initial,
    required TResult Function(HeroProfileStateLoading value) loading,
    required TResult Function(HeroProfileStateError value) error,
    required TResult Function(HeroProfileStateData value) data,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HeroProfileStateInitial value)? initial,
    TResult Function(HeroProfileStateLoading value)? loading,
    TResult Function(HeroProfileStateError value)? error,
    TResult Function(HeroProfileStateData value)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class HeroProfileStateData implements HeroProfileState {
  const factory HeroProfileStateData(
          {required HeroModel currentHero,
          required List<EpisodeModel> currentHeroEpisodesList}) =
      _$HeroProfileStateData;

  HeroModel get currentHero => throw _privateConstructorUsedError;
  List<EpisodeModel> get currentHeroEpisodesList =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HeroProfileStateDataCopyWith<HeroProfileStateData> get copyWith =>
      throw _privateConstructorUsedError;
}
