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
class _$LocationProfileEventTearOff {
  const _$LocationProfileEventTearOff();

  LocationProfileEventInitial initial(
      {required LocationModel currentLocation}) {
    return LocationProfileEventInitial(
      currentLocation: currentLocation,
    );
  }
}

/// @nodoc
const $LocationProfileEvent = _$LocationProfileEventTearOff();

/// @nodoc
mixin _$LocationProfileEvent {
  LocationModel get currentLocation => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LocationModel currentLocation) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocationModel currentLocation)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationProfileEventInitial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationProfileEventInitial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocationProfileEventCopyWith<LocationProfileEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationProfileEventCopyWith<$Res> {
  factory $LocationProfileEventCopyWith(LocationProfileEvent value,
          $Res Function(LocationProfileEvent) then) =
      _$LocationProfileEventCopyWithImpl<$Res>;
  $Res call({LocationModel currentLocation});
}

/// @nodoc
class _$LocationProfileEventCopyWithImpl<$Res>
    implements $LocationProfileEventCopyWith<$Res> {
  _$LocationProfileEventCopyWithImpl(this._value, this._then);

  final LocationProfileEvent _value;
  // ignore: unused_field
  final $Res Function(LocationProfileEvent) _then;

  @override
  $Res call({
    Object? currentLocation = freezed,
  }) {
    return _then(_value.copyWith(
      currentLocation: currentLocation == freezed
          ? _value.currentLocation
          : currentLocation // ignore: cast_nullable_to_non_nullable
              as LocationModel,
    ));
  }
}

/// @nodoc
abstract class $LocationProfileEventInitialCopyWith<$Res>
    implements $LocationProfileEventCopyWith<$Res> {
  factory $LocationProfileEventInitialCopyWith(
          LocationProfileEventInitial value,
          $Res Function(LocationProfileEventInitial) then) =
      _$LocationProfileEventInitialCopyWithImpl<$Res>;
  @override
  $Res call({LocationModel currentLocation});
}

/// @nodoc
class _$LocationProfileEventInitialCopyWithImpl<$Res>
    extends _$LocationProfileEventCopyWithImpl<$Res>
    implements $LocationProfileEventInitialCopyWith<$Res> {
  _$LocationProfileEventInitialCopyWithImpl(LocationProfileEventInitial _value,
      $Res Function(LocationProfileEventInitial) _then)
      : super(_value, (v) => _then(v as LocationProfileEventInitial));

  @override
  LocationProfileEventInitial get _value =>
      super._value as LocationProfileEventInitial;

  @override
  $Res call({
    Object? currentLocation = freezed,
  }) {
    return _then(LocationProfileEventInitial(
      currentLocation: currentLocation == freezed
          ? _value.currentLocation
          : currentLocation // ignore: cast_nullable_to_non_nullable
              as LocationModel,
    ));
  }
}

/// @nodoc

class _$LocationProfileEventInitial
    with DiagnosticableTreeMixin
    implements LocationProfileEventInitial {
  const _$LocationProfileEventInitial({required this.currentLocation});

  @override
  final LocationModel currentLocation;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocationProfileEvent.initial(currentLocation: $currentLocation)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LocationProfileEvent.initial'))
      ..add(DiagnosticsProperty('currentLocation', currentLocation));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LocationProfileEventInitial &&
            (identical(other.currentLocation, currentLocation) ||
                const DeepCollectionEquality()
                    .equals(other.currentLocation, currentLocation)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currentLocation);

  @JsonKey(ignore: true)
  @override
  $LocationProfileEventInitialCopyWith<LocationProfileEventInitial>
      get copyWith => _$LocationProfileEventInitialCopyWithImpl<
          LocationProfileEventInitial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LocationModel currentLocation) initial,
  }) {
    return initial(currentLocation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocationModel currentLocation)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(currentLocation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationProfileEventInitial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationProfileEventInitial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class LocationProfileEventInitial implements LocationProfileEvent {
  const factory LocationProfileEventInitial(
      {required LocationModel currentLocation}) = _$LocationProfileEventInitial;

  @override
  LocationModel get currentLocation => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $LocationProfileEventInitialCopyWith<LocationProfileEventInitial>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$LocationProfileStateTearOff {
  const _$LocationProfileStateTearOff();

  LocationProfileStateInitial initial() {
    return const LocationProfileStateInitial();
  }

  LocationProfileStateLoading loading() {
    return const LocationProfileStateLoading();
  }

  LocationProfileStateError error() {
    return const LocationProfileStateError();
  }

  LocationProfileStateData data(
      {required LocationModel currentLocation,
      required List<HeroModel> currentLocationHeroesList}) {
    return LocationProfileStateData(
      currentLocation: currentLocation,
      currentLocationHeroesList: currentLocationHeroesList,
    );
  }
}

/// @nodoc
const $LocationProfileState = _$LocationProfileStateTearOff();

/// @nodoc
mixin _$LocationProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(LocationModel currentLocation,
            List<HeroModel> currentLocationHeroesList)
        data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(LocationModel currentLocation,
            List<HeroModel> currentLocationHeroesList)?
        data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationProfileStateInitial value) initial,
    required TResult Function(LocationProfileStateLoading value) loading,
    required TResult Function(LocationProfileStateError value) error,
    required TResult Function(LocationProfileStateData value) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationProfileStateInitial value)? initial,
    TResult Function(LocationProfileStateLoading value)? loading,
    TResult Function(LocationProfileStateError value)? error,
    TResult Function(LocationProfileStateData value)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationProfileStateCopyWith<$Res> {
  factory $LocationProfileStateCopyWith(LocationProfileState value,
          $Res Function(LocationProfileState) then) =
      _$LocationProfileStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LocationProfileStateCopyWithImpl<$Res>
    implements $LocationProfileStateCopyWith<$Res> {
  _$LocationProfileStateCopyWithImpl(this._value, this._then);

  final LocationProfileState _value;
  // ignore: unused_field
  final $Res Function(LocationProfileState) _then;
}

/// @nodoc
abstract class $LocationProfileStateInitialCopyWith<$Res> {
  factory $LocationProfileStateInitialCopyWith(
          LocationProfileStateInitial value,
          $Res Function(LocationProfileStateInitial) then) =
      _$LocationProfileStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$LocationProfileStateInitialCopyWithImpl<$Res>
    extends _$LocationProfileStateCopyWithImpl<$Res>
    implements $LocationProfileStateInitialCopyWith<$Res> {
  _$LocationProfileStateInitialCopyWithImpl(LocationProfileStateInitial _value,
      $Res Function(LocationProfileStateInitial) _then)
      : super(_value, (v) => _then(v as LocationProfileStateInitial));

  @override
  LocationProfileStateInitial get _value =>
      super._value as LocationProfileStateInitial;
}

/// @nodoc

class _$LocationProfileStateInitial
    with DiagnosticableTreeMixin
    implements LocationProfileStateInitial {
  const _$LocationProfileStateInitial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocationProfileState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LocationProfileState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LocationProfileStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(LocationModel currentLocation,
            List<HeroModel> currentLocationHeroesList)
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
    TResult Function(LocationModel currentLocation,
            List<HeroModel> currentLocationHeroesList)?
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
    required TResult Function(LocationProfileStateInitial value) initial,
    required TResult Function(LocationProfileStateLoading value) loading,
    required TResult Function(LocationProfileStateError value) error,
    required TResult Function(LocationProfileStateData value) data,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationProfileStateInitial value)? initial,
    TResult Function(LocationProfileStateLoading value)? loading,
    TResult Function(LocationProfileStateError value)? error,
    TResult Function(LocationProfileStateData value)? data,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class LocationProfileStateInitial implements LocationProfileState {
  const factory LocationProfileStateInitial() = _$LocationProfileStateInitial;
}

/// @nodoc
abstract class $LocationProfileStateLoadingCopyWith<$Res> {
  factory $LocationProfileStateLoadingCopyWith(
          LocationProfileStateLoading value,
          $Res Function(LocationProfileStateLoading) then) =
      _$LocationProfileStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LocationProfileStateLoadingCopyWithImpl<$Res>
    extends _$LocationProfileStateCopyWithImpl<$Res>
    implements $LocationProfileStateLoadingCopyWith<$Res> {
  _$LocationProfileStateLoadingCopyWithImpl(LocationProfileStateLoading _value,
      $Res Function(LocationProfileStateLoading) _then)
      : super(_value, (v) => _then(v as LocationProfileStateLoading));

  @override
  LocationProfileStateLoading get _value =>
      super._value as LocationProfileStateLoading;
}

/// @nodoc

class _$LocationProfileStateLoading
    with DiagnosticableTreeMixin
    implements LocationProfileStateLoading {
  const _$LocationProfileStateLoading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocationProfileState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LocationProfileState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LocationProfileStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(LocationModel currentLocation,
            List<HeroModel> currentLocationHeroesList)
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
    TResult Function(LocationModel currentLocation,
            List<HeroModel> currentLocationHeroesList)?
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
    required TResult Function(LocationProfileStateInitial value) initial,
    required TResult Function(LocationProfileStateLoading value) loading,
    required TResult Function(LocationProfileStateError value) error,
    required TResult Function(LocationProfileStateData value) data,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationProfileStateInitial value)? initial,
    TResult Function(LocationProfileStateLoading value)? loading,
    TResult Function(LocationProfileStateError value)? error,
    TResult Function(LocationProfileStateData value)? data,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LocationProfileStateLoading implements LocationProfileState {
  const factory LocationProfileStateLoading() = _$LocationProfileStateLoading;
}

/// @nodoc
abstract class $LocationProfileStateErrorCopyWith<$Res> {
  factory $LocationProfileStateErrorCopyWith(LocationProfileStateError value,
          $Res Function(LocationProfileStateError) then) =
      _$LocationProfileStateErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$LocationProfileStateErrorCopyWithImpl<$Res>
    extends _$LocationProfileStateCopyWithImpl<$Res>
    implements $LocationProfileStateErrorCopyWith<$Res> {
  _$LocationProfileStateErrorCopyWithImpl(LocationProfileStateError _value,
      $Res Function(LocationProfileStateError) _then)
      : super(_value, (v) => _then(v as LocationProfileStateError));

  @override
  LocationProfileStateError get _value =>
      super._value as LocationProfileStateError;
}

/// @nodoc

class _$LocationProfileStateError
    with DiagnosticableTreeMixin
    implements LocationProfileStateError {
  const _$LocationProfileStateError();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocationProfileState.error()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'LocationProfileState.error'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LocationProfileStateError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(LocationModel currentLocation,
            List<HeroModel> currentLocationHeroesList)
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
    TResult Function(LocationModel currentLocation,
            List<HeroModel> currentLocationHeroesList)?
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
    required TResult Function(LocationProfileStateInitial value) initial,
    required TResult Function(LocationProfileStateLoading value) loading,
    required TResult Function(LocationProfileStateError value) error,
    required TResult Function(LocationProfileStateData value) data,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationProfileStateInitial value)? initial,
    TResult Function(LocationProfileStateLoading value)? loading,
    TResult Function(LocationProfileStateError value)? error,
    TResult Function(LocationProfileStateData value)? data,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class LocationProfileStateError implements LocationProfileState {
  const factory LocationProfileStateError() = _$LocationProfileStateError;
}

/// @nodoc
abstract class $LocationProfileStateDataCopyWith<$Res> {
  factory $LocationProfileStateDataCopyWith(LocationProfileStateData value,
          $Res Function(LocationProfileStateData) then) =
      _$LocationProfileStateDataCopyWithImpl<$Res>;
  $Res call(
      {LocationModel currentLocation,
      List<HeroModel> currentLocationHeroesList});
}

/// @nodoc
class _$LocationProfileStateDataCopyWithImpl<$Res>
    extends _$LocationProfileStateCopyWithImpl<$Res>
    implements $LocationProfileStateDataCopyWith<$Res> {
  _$LocationProfileStateDataCopyWithImpl(LocationProfileStateData _value,
      $Res Function(LocationProfileStateData) _then)
      : super(_value, (v) => _then(v as LocationProfileStateData));

  @override
  LocationProfileStateData get _value =>
      super._value as LocationProfileStateData;

  @override
  $Res call({
    Object? currentLocation = freezed,
    Object? currentLocationHeroesList = freezed,
  }) {
    return _then(LocationProfileStateData(
      currentLocation: currentLocation == freezed
          ? _value.currentLocation
          : currentLocation // ignore: cast_nullable_to_non_nullable
              as LocationModel,
      currentLocationHeroesList: currentLocationHeroesList == freezed
          ? _value.currentLocationHeroesList
          : currentLocationHeroesList // ignore: cast_nullable_to_non_nullable
              as List<HeroModel>,
    ));
  }
}

/// @nodoc

class _$LocationProfileStateData
    with DiagnosticableTreeMixin
    implements LocationProfileStateData {
  const _$LocationProfileStateData(
      {required this.currentLocation, required this.currentLocationHeroesList});

  @override
  final LocationModel currentLocation;
  @override
  final List<HeroModel> currentLocationHeroesList;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocationProfileState.data(currentLocation: $currentLocation, currentLocationHeroesList: $currentLocationHeroesList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LocationProfileState.data'))
      ..add(DiagnosticsProperty('currentLocation', currentLocation))
      ..add(DiagnosticsProperty(
          'currentLocationHeroesList', currentLocationHeroesList));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LocationProfileStateData &&
            (identical(other.currentLocation, currentLocation) ||
                const DeepCollectionEquality()
                    .equals(other.currentLocation, currentLocation)) &&
            (identical(other.currentLocationHeroesList,
                    currentLocationHeroesList) ||
                const DeepCollectionEquality().equals(
                    other.currentLocationHeroesList,
                    currentLocationHeroesList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currentLocation) ^
      const DeepCollectionEquality().hash(currentLocationHeroesList);

  @JsonKey(ignore: true)
  @override
  $LocationProfileStateDataCopyWith<LocationProfileStateData> get copyWith =>
      _$LocationProfileStateDataCopyWithImpl<LocationProfileStateData>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(LocationModel currentLocation,
            List<HeroModel> currentLocationHeroesList)
        data,
  }) {
    return data(currentLocation, currentLocationHeroesList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(LocationModel currentLocation,
            List<HeroModel> currentLocationHeroesList)?
        data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(currentLocation, currentLocationHeroesList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationProfileStateInitial value) initial,
    required TResult Function(LocationProfileStateLoading value) loading,
    required TResult Function(LocationProfileStateError value) error,
    required TResult Function(LocationProfileStateData value) data,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationProfileStateInitial value)? initial,
    TResult Function(LocationProfileStateLoading value)? loading,
    TResult Function(LocationProfileStateError value)? error,
    TResult Function(LocationProfileStateData value)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class LocationProfileStateData implements LocationProfileState {
  const factory LocationProfileStateData(
          {required LocationModel currentLocation,
          required List<HeroModel> currentLocationHeroesList}) =
      _$LocationProfileStateData;

  LocationModel get currentLocation => throw _privateConstructorUsedError;
  List<HeroModel> get currentLocationHeroesList =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationProfileStateDataCopyWith<LocationProfileStateData> get copyWith =>
      throw _privateConstructorUsedError;
}
