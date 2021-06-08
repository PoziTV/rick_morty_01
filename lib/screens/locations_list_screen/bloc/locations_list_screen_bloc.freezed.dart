// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'locations_list_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LocationsListEventTearOff {
  const _$LocationsListEventTearOff();

  LocationsListEventInitial initial() {
    return const LocationsListEventInitial();
  }
}

/// @nodoc
const $LocationsListEvent = _$LocationsListEventTearOff();

/// @nodoc
mixin _$LocationsListEvent {
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
    required TResult Function(LocationsListEventInitial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationsListEventInitial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationsListEventCopyWith<$Res> {
  factory $LocationsListEventCopyWith(
          LocationsListEvent value, $Res Function(LocationsListEvent) then) =
      _$LocationsListEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LocationsListEventCopyWithImpl<$Res>
    implements $LocationsListEventCopyWith<$Res> {
  _$LocationsListEventCopyWithImpl(this._value, this._then);

  final LocationsListEvent _value;
  // ignore: unused_field
  final $Res Function(LocationsListEvent) _then;
}

/// @nodoc
abstract class $LocationsListEventInitialCopyWith<$Res> {
  factory $LocationsListEventInitialCopyWith(LocationsListEventInitial value,
          $Res Function(LocationsListEventInitial) then) =
      _$LocationsListEventInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$LocationsListEventInitialCopyWithImpl<$Res>
    extends _$LocationsListEventCopyWithImpl<$Res>
    implements $LocationsListEventInitialCopyWith<$Res> {
  _$LocationsListEventInitialCopyWithImpl(LocationsListEventInitial _value,
      $Res Function(LocationsListEventInitial) _then)
      : super(_value, (v) => _then(v as LocationsListEventInitial));

  @override
  LocationsListEventInitial get _value =>
      super._value as LocationsListEventInitial;
}

/// @nodoc

class _$LocationsListEventInitial
    with DiagnosticableTreeMixin
    implements LocationsListEventInitial {
  const _$LocationsListEventInitial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocationsListEvent.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'LocationsListEvent.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LocationsListEventInitial);
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
    required TResult Function(LocationsListEventInitial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationsListEventInitial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class LocationsListEventInitial implements LocationsListEvent {
  const factory LocationsListEventInitial() = _$LocationsListEventInitial;
}

/// @nodoc
class _$LocationsListStateTearOff {
  const _$LocationsListStateTearOff();

  LocationsListStateInitial initial() {
    return const LocationsListStateInitial();
  }

  LocationsListStateLoading loading() {
    return const LocationsListStateLoading();
  }

  LocationsListStateError error() {
    return const LocationsListStateError();
  }

  LocationsListStateData data({required List<LocationModel> locationsList}) {
    return LocationsListStateData(
      locationsList: locationsList,
    );
  }
}

/// @nodoc
const $LocationsListState = _$LocationsListStateTearOff();

/// @nodoc
mixin _$LocationsListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<LocationModel> locationsList) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<LocationModel> locationsList)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationsListStateInitial value) initial,
    required TResult Function(LocationsListStateLoading value) loading,
    required TResult Function(LocationsListStateError value) error,
    required TResult Function(LocationsListStateData value) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationsListStateInitial value)? initial,
    TResult Function(LocationsListStateLoading value)? loading,
    TResult Function(LocationsListStateError value)? error,
    TResult Function(LocationsListStateData value)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationsListStateCopyWith<$Res> {
  factory $LocationsListStateCopyWith(
          LocationsListState value, $Res Function(LocationsListState) then) =
      _$LocationsListStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LocationsListStateCopyWithImpl<$Res>
    implements $LocationsListStateCopyWith<$Res> {
  _$LocationsListStateCopyWithImpl(this._value, this._then);

  final LocationsListState _value;
  // ignore: unused_field
  final $Res Function(LocationsListState) _then;
}

/// @nodoc
abstract class $LocationsListStateInitialCopyWith<$Res> {
  factory $LocationsListStateInitialCopyWith(LocationsListStateInitial value,
          $Res Function(LocationsListStateInitial) then) =
      _$LocationsListStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$LocationsListStateInitialCopyWithImpl<$Res>
    extends _$LocationsListStateCopyWithImpl<$Res>
    implements $LocationsListStateInitialCopyWith<$Res> {
  _$LocationsListStateInitialCopyWithImpl(LocationsListStateInitial _value,
      $Res Function(LocationsListStateInitial) _then)
      : super(_value, (v) => _then(v as LocationsListStateInitial));

  @override
  LocationsListStateInitial get _value =>
      super._value as LocationsListStateInitial;
}

/// @nodoc

class _$LocationsListStateInitial
    with DiagnosticableTreeMixin
    implements LocationsListStateInitial {
  const _$LocationsListStateInitial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocationsListState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'LocationsListState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LocationsListStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<LocationModel> locationsList) data,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<LocationModel> locationsList)? data,
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
    required TResult Function(LocationsListStateInitial value) initial,
    required TResult Function(LocationsListStateLoading value) loading,
    required TResult Function(LocationsListStateError value) error,
    required TResult Function(LocationsListStateData value) data,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationsListStateInitial value)? initial,
    TResult Function(LocationsListStateLoading value)? loading,
    TResult Function(LocationsListStateError value)? error,
    TResult Function(LocationsListStateData value)? data,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class LocationsListStateInitial implements LocationsListState {
  const factory LocationsListStateInitial() = _$LocationsListStateInitial;
}

/// @nodoc
abstract class $LocationsListStateLoadingCopyWith<$Res> {
  factory $LocationsListStateLoadingCopyWith(LocationsListStateLoading value,
          $Res Function(LocationsListStateLoading) then) =
      _$LocationsListStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LocationsListStateLoadingCopyWithImpl<$Res>
    extends _$LocationsListStateCopyWithImpl<$Res>
    implements $LocationsListStateLoadingCopyWith<$Res> {
  _$LocationsListStateLoadingCopyWithImpl(LocationsListStateLoading _value,
      $Res Function(LocationsListStateLoading) _then)
      : super(_value, (v) => _then(v as LocationsListStateLoading));

  @override
  LocationsListStateLoading get _value =>
      super._value as LocationsListStateLoading;
}

/// @nodoc

class _$LocationsListStateLoading
    with DiagnosticableTreeMixin
    implements LocationsListStateLoading {
  const _$LocationsListStateLoading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocationsListState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'LocationsListState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LocationsListStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<LocationModel> locationsList) data,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<LocationModel> locationsList)? data,
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
    required TResult Function(LocationsListStateInitial value) initial,
    required TResult Function(LocationsListStateLoading value) loading,
    required TResult Function(LocationsListStateError value) error,
    required TResult Function(LocationsListStateData value) data,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationsListStateInitial value)? initial,
    TResult Function(LocationsListStateLoading value)? loading,
    TResult Function(LocationsListStateError value)? error,
    TResult Function(LocationsListStateData value)? data,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LocationsListStateLoading implements LocationsListState {
  const factory LocationsListStateLoading() = _$LocationsListStateLoading;
}

/// @nodoc
abstract class $LocationsListStateErrorCopyWith<$Res> {
  factory $LocationsListStateErrorCopyWith(LocationsListStateError value,
          $Res Function(LocationsListStateError) then) =
      _$LocationsListStateErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$LocationsListStateErrorCopyWithImpl<$Res>
    extends _$LocationsListStateCopyWithImpl<$Res>
    implements $LocationsListStateErrorCopyWith<$Res> {
  _$LocationsListStateErrorCopyWithImpl(LocationsListStateError _value,
      $Res Function(LocationsListStateError) _then)
      : super(_value, (v) => _then(v as LocationsListStateError));

  @override
  LocationsListStateError get _value => super._value as LocationsListStateError;
}

/// @nodoc

class _$LocationsListStateError
    with DiagnosticableTreeMixin
    implements LocationsListStateError {
  const _$LocationsListStateError();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocationsListState.error()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'LocationsListState.error'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LocationsListStateError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<LocationModel> locationsList) data,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<LocationModel> locationsList)? data,
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
    required TResult Function(LocationsListStateInitial value) initial,
    required TResult Function(LocationsListStateLoading value) loading,
    required TResult Function(LocationsListStateError value) error,
    required TResult Function(LocationsListStateData value) data,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationsListStateInitial value)? initial,
    TResult Function(LocationsListStateLoading value)? loading,
    TResult Function(LocationsListStateError value)? error,
    TResult Function(LocationsListStateData value)? data,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class LocationsListStateError implements LocationsListState {
  const factory LocationsListStateError() = _$LocationsListStateError;
}

/// @nodoc
abstract class $LocationsListStateDataCopyWith<$Res> {
  factory $LocationsListStateDataCopyWith(LocationsListStateData value,
          $Res Function(LocationsListStateData) then) =
      _$LocationsListStateDataCopyWithImpl<$Res>;
  $Res call({List<LocationModel> locationsList});
}

/// @nodoc
class _$LocationsListStateDataCopyWithImpl<$Res>
    extends _$LocationsListStateCopyWithImpl<$Res>
    implements $LocationsListStateDataCopyWith<$Res> {
  _$LocationsListStateDataCopyWithImpl(LocationsListStateData _value,
      $Res Function(LocationsListStateData) _then)
      : super(_value, (v) => _then(v as LocationsListStateData));

  @override
  LocationsListStateData get _value => super._value as LocationsListStateData;

  @override
  $Res call({
    Object? locationsList = freezed,
  }) {
    return _then(LocationsListStateData(
      locationsList: locationsList == freezed
          ? _value.locationsList
          : locationsList // ignore: cast_nullable_to_non_nullable
              as List<LocationModel>,
    ));
  }
}

/// @nodoc

class _$LocationsListStateData
    with DiagnosticableTreeMixin
    implements LocationsListStateData {
  const _$LocationsListStateData({required this.locationsList});

  @override
  final List<LocationModel> locationsList;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocationsListState.data(locationsList: $locationsList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LocationsListState.data'))
      ..add(DiagnosticsProperty('locationsList', locationsList));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LocationsListStateData &&
            (identical(other.locationsList, locationsList) ||
                const DeepCollectionEquality()
                    .equals(other.locationsList, locationsList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(locationsList);

  @JsonKey(ignore: true)
  @override
  $LocationsListStateDataCopyWith<LocationsListStateData> get copyWith =>
      _$LocationsListStateDataCopyWithImpl<LocationsListStateData>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<LocationModel> locationsList) data,
  }) {
    return data(locationsList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<LocationModel> locationsList)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(locationsList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationsListStateInitial value) initial,
    required TResult Function(LocationsListStateLoading value) loading,
    required TResult Function(LocationsListStateError value) error,
    required TResult Function(LocationsListStateData value) data,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationsListStateInitial value)? initial,
    TResult Function(LocationsListStateLoading value)? loading,
    TResult Function(LocationsListStateError value)? error,
    TResult Function(LocationsListStateData value)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class LocationsListStateData implements LocationsListState {
  const factory LocationsListStateData(
      {required List<LocationModel> locationsList}) = _$LocationsListStateData;

  List<LocationModel> get locationsList => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationsListStateDataCopyWith<LocationsListStateData> get copyWith =>
      throw _privateConstructorUsedError;
}
