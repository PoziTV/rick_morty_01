// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'select_heros_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SelectHeroesEventTearOff {
  const _$SelectHeroesEventTearOff();

  SelectHeroesEventInitial initial() {
    return const SelectHeroesEventInitial();
  }

  SelectHeroesEventChangeView changeView({required bool isGrid}) {
    return SelectHeroesEventChangeView(
      isGrid: isGrid,
    );
  }
}

/// @nodoc
const $SelectHeroesEvent = _$SelectHeroesEventTearOff();

/// @nodoc
mixin _$SelectHeroesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isGrid) changeView,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isGrid)? changeView,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectHeroesEventInitial value) initial,
    required TResult Function(SelectHeroesEventChangeView value) changeView,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectHeroesEventInitial value)? initial,
    TResult Function(SelectHeroesEventChangeView value)? changeView,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectHeroesEventCopyWith<$Res> {
  factory $SelectHeroesEventCopyWith(
          SelectHeroesEvent value, $Res Function(SelectHeroesEvent) then) =
      _$SelectHeroesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SelectHeroesEventCopyWithImpl<$Res>
    implements $SelectHeroesEventCopyWith<$Res> {
  _$SelectHeroesEventCopyWithImpl(this._value, this._then);

  final SelectHeroesEvent _value;
  // ignore: unused_field
  final $Res Function(SelectHeroesEvent) _then;
}

/// @nodoc
abstract class $SelectHeroesEventInitialCopyWith<$Res> {
  factory $SelectHeroesEventInitialCopyWith(SelectHeroesEventInitial value,
          $Res Function(SelectHeroesEventInitial) then) =
      _$SelectHeroesEventInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$SelectHeroesEventInitialCopyWithImpl<$Res>
    extends _$SelectHeroesEventCopyWithImpl<$Res>
    implements $SelectHeroesEventInitialCopyWith<$Res> {
  _$SelectHeroesEventInitialCopyWithImpl(SelectHeroesEventInitial _value,
      $Res Function(SelectHeroesEventInitial) _then)
      : super(_value, (v) => _then(v as SelectHeroesEventInitial));

  @override
  SelectHeroesEventInitial get _value =>
      super._value as SelectHeroesEventInitial;
}

/// @nodoc

class _$SelectHeroesEventInitial implements SelectHeroesEventInitial {
  const _$SelectHeroesEventInitial();

  @override
  String toString() {
    return 'SelectHeroesEvent.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SelectHeroesEventInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isGrid) changeView,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isGrid)? changeView,
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
    required TResult Function(SelectHeroesEventInitial value) initial,
    required TResult Function(SelectHeroesEventChangeView value) changeView,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectHeroesEventInitial value)? initial,
    TResult Function(SelectHeroesEventChangeView value)? changeView,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class SelectHeroesEventInitial implements SelectHeroesEvent {
  const factory SelectHeroesEventInitial() = _$SelectHeroesEventInitial;
}

/// @nodoc
abstract class $SelectHeroesEventChangeViewCopyWith<$Res> {
  factory $SelectHeroesEventChangeViewCopyWith(
          SelectHeroesEventChangeView value,
          $Res Function(SelectHeroesEventChangeView) then) =
      _$SelectHeroesEventChangeViewCopyWithImpl<$Res>;
  $Res call({bool isGrid});
}

/// @nodoc
class _$SelectHeroesEventChangeViewCopyWithImpl<$Res>
    extends _$SelectHeroesEventCopyWithImpl<$Res>
    implements $SelectHeroesEventChangeViewCopyWith<$Res> {
  _$SelectHeroesEventChangeViewCopyWithImpl(SelectHeroesEventChangeView _value,
      $Res Function(SelectHeroesEventChangeView) _then)
      : super(_value, (v) => _then(v as SelectHeroesEventChangeView));

  @override
  SelectHeroesEventChangeView get _value =>
      super._value as SelectHeroesEventChangeView;

  @override
  $Res call({
    Object? isGrid = freezed,
  }) {
    return _then(SelectHeroesEventChangeView(
      isGrid: isGrid == freezed
          ? _value.isGrid
          : isGrid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SelectHeroesEventChangeView implements SelectHeroesEventChangeView {
  const _$SelectHeroesEventChangeView({required this.isGrid});

  @override
  final bool isGrid;

  @override
  String toString() {
    return 'SelectHeroesEvent.changeView(isGrid: $isGrid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SelectHeroesEventChangeView &&
            (identical(other.isGrid, isGrid) ||
                const DeepCollectionEquality().equals(other.isGrid, isGrid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isGrid);

  @JsonKey(ignore: true)
  @override
  $SelectHeroesEventChangeViewCopyWith<SelectHeroesEventChangeView>
      get copyWith => _$SelectHeroesEventChangeViewCopyWithImpl<
          SelectHeroesEventChangeView>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isGrid) changeView,
  }) {
    return changeView(isGrid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isGrid)? changeView,
    required TResult orElse(),
  }) {
    if (changeView != null) {
      return changeView(isGrid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectHeroesEventInitial value) initial,
    required TResult Function(SelectHeroesEventChangeView value) changeView,
  }) {
    return changeView(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectHeroesEventInitial value)? initial,
    TResult Function(SelectHeroesEventChangeView value)? changeView,
    required TResult orElse(),
  }) {
    if (changeView != null) {
      return changeView(this);
    }
    return orElse();
  }
}

abstract class SelectHeroesEventChangeView implements SelectHeroesEvent {
  const factory SelectHeroesEventChangeView({required bool isGrid}) =
      _$SelectHeroesEventChangeView;

  bool get isGrid => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SelectHeroesEventChangeViewCopyWith<SelectHeroesEventChangeView>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$SelectHeroesStateTearOff {
  const _$SelectHeroesStateTearOff();

  SelectHeroesStateInitial initial() {
    return const SelectHeroesStateInitial();
  }

  SelectHeroesStateLoading loading() {
    return const SelectHeroesStateLoading();
  }

  SelectHeroesStateError error() {
    return const SelectHeroesStateError();
  }

  SelectHeroesStateData data(
      {required List<HeroModel> heroesList, required bool isGrid}) {
    return SelectHeroesStateData(
      heroesList: heroesList,
      isGrid: isGrid,
    );
  }
}

/// @nodoc
const $SelectHeroesState = _$SelectHeroesStateTearOff();

/// @nodoc
mixin _$SelectHeroesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<HeroModel> heroesList, bool isGrid) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<HeroModel> heroesList, bool isGrid)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectHeroesStateInitial value) initial,
    required TResult Function(SelectHeroesStateLoading value) loading,
    required TResult Function(SelectHeroesStateError value) error,
    required TResult Function(SelectHeroesStateData value) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectHeroesStateInitial value)? initial,
    TResult Function(SelectHeroesStateLoading value)? loading,
    TResult Function(SelectHeroesStateError value)? error,
    TResult Function(SelectHeroesStateData value)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectHeroesStateCopyWith<$Res> {
  factory $SelectHeroesStateCopyWith(
          SelectHeroesState value, $Res Function(SelectHeroesState) then) =
      _$SelectHeroesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SelectHeroesStateCopyWithImpl<$Res>
    implements $SelectHeroesStateCopyWith<$Res> {
  _$SelectHeroesStateCopyWithImpl(this._value, this._then);

  final SelectHeroesState _value;
  // ignore: unused_field
  final $Res Function(SelectHeroesState) _then;
}

/// @nodoc
abstract class $SelectHeroesStateInitialCopyWith<$Res> {
  factory $SelectHeroesStateInitialCopyWith(SelectHeroesStateInitial value,
          $Res Function(SelectHeroesStateInitial) then) =
      _$SelectHeroesStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$SelectHeroesStateInitialCopyWithImpl<$Res>
    extends _$SelectHeroesStateCopyWithImpl<$Res>
    implements $SelectHeroesStateInitialCopyWith<$Res> {
  _$SelectHeroesStateInitialCopyWithImpl(SelectHeroesStateInitial _value,
      $Res Function(SelectHeroesStateInitial) _then)
      : super(_value, (v) => _then(v as SelectHeroesStateInitial));

  @override
  SelectHeroesStateInitial get _value =>
      super._value as SelectHeroesStateInitial;
}

/// @nodoc

class _$SelectHeroesStateInitial implements SelectHeroesStateInitial {
  const _$SelectHeroesStateInitial();

  @override
  String toString() {
    return 'SelectHeroesState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SelectHeroesStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<HeroModel> heroesList, bool isGrid) data,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<HeroModel> heroesList, bool isGrid)? data,
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
    required TResult Function(SelectHeroesStateInitial value) initial,
    required TResult Function(SelectHeroesStateLoading value) loading,
    required TResult Function(SelectHeroesStateError value) error,
    required TResult Function(SelectHeroesStateData value) data,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectHeroesStateInitial value)? initial,
    TResult Function(SelectHeroesStateLoading value)? loading,
    TResult Function(SelectHeroesStateError value)? error,
    TResult Function(SelectHeroesStateData value)? data,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class SelectHeroesStateInitial implements SelectHeroesState {
  const factory SelectHeroesStateInitial() = _$SelectHeroesStateInitial;
}

/// @nodoc
abstract class $SelectHeroesStateLoadingCopyWith<$Res> {
  factory $SelectHeroesStateLoadingCopyWith(SelectHeroesStateLoading value,
          $Res Function(SelectHeroesStateLoading) then) =
      _$SelectHeroesStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$SelectHeroesStateLoadingCopyWithImpl<$Res>
    extends _$SelectHeroesStateCopyWithImpl<$Res>
    implements $SelectHeroesStateLoadingCopyWith<$Res> {
  _$SelectHeroesStateLoadingCopyWithImpl(SelectHeroesStateLoading _value,
      $Res Function(SelectHeroesStateLoading) _then)
      : super(_value, (v) => _then(v as SelectHeroesStateLoading));

  @override
  SelectHeroesStateLoading get _value =>
      super._value as SelectHeroesStateLoading;
}

/// @nodoc

class _$SelectHeroesStateLoading implements SelectHeroesStateLoading {
  const _$SelectHeroesStateLoading();

  @override
  String toString() {
    return 'SelectHeroesState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SelectHeroesStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<HeroModel> heroesList, bool isGrid) data,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<HeroModel> heroesList, bool isGrid)? data,
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
    required TResult Function(SelectHeroesStateInitial value) initial,
    required TResult Function(SelectHeroesStateLoading value) loading,
    required TResult Function(SelectHeroesStateError value) error,
    required TResult Function(SelectHeroesStateData value) data,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectHeroesStateInitial value)? initial,
    TResult Function(SelectHeroesStateLoading value)? loading,
    TResult Function(SelectHeroesStateError value)? error,
    TResult Function(SelectHeroesStateData value)? data,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SelectHeroesStateLoading implements SelectHeroesState {
  const factory SelectHeroesStateLoading() = _$SelectHeroesStateLoading;
}

/// @nodoc
abstract class $SelectHeroesStateErrorCopyWith<$Res> {
  factory $SelectHeroesStateErrorCopyWith(SelectHeroesStateError value,
          $Res Function(SelectHeroesStateError) then) =
      _$SelectHeroesStateErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$SelectHeroesStateErrorCopyWithImpl<$Res>
    extends _$SelectHeroesStateCopyWithImpl<$Res>
    implements $SelectHeroesStateErrorCopyWith<$Res> {
  _$SelectHeroesStateErrorCopyWithImpl(SelectHeroesStateError _value,
      $Res Function(SelectHeroesStateError) _then)
      : super(_value, (v) => _then(v as SelectHeroesStateError));

  @override
  SelectHeroesStateError get _value => super._value as SelectHeroesStateError;
}

/// @nodoc

class _$SelectHeroesStateError implements SelectHeroesStateError {
  const _$SelectHeroesStateError();

  @override
  String toString() {
    return 'SelectHeroesState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SelectHeroesStateError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<HeroModel> heroesList, bool isGrid) data,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<HeroModel> heroesList, bool isGrid)? data,
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
    required TResult Function(SelectHeroesStateInitial value) initial,
    required TResult Function(SelectHeroesStateLoading value) loading,
    required TResult Function(SelectHeroesStateError value) error,
    required TResult Function(SelectHeroesStateData value) data,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectHeroesStateInitial value)? initial,
    TResult Function(SelectHeroesStateLoading value)? loading,
    TResult Function(SelectHeroesStateError value)? error,
    TResult Function(SelectHeroesStateData value)? data,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SelectHeroesStateError implements SelectHeroesState {
  const factory SelectHeroesStateError() = _$SelectHeroesStateError;
}

/// @nodoc
abstract class $SelectHeroesStateDataCopyWith<$Res> {
  factory $SelectHeroesStateDataCopyWith(SelectHeroesStateData value,
          $Res Function(SelectHeroesStateData) then) =
      _$SelectHeroesStateDataCopyWithImpl<$Res>;
  $Res call({List<HeroModel> heroesList, bool isGrid});
}

/// @nodoc
class _$SelectHeroesStateDataCopyWithImpl<$Res>
    extends _$SelectHeroesStateCopyWithImpl<$Res>
    implements $SelectHeroesStateDataCopyWith<$Res> {
  _$SelectHeroesStateDataCopyWithImpl(
      SelectHeroesStateData _value, $Res Function(SelectHeroesStateData) _then)
      : super(_value, (v) => _then(v as SelectHeroesStateData));

  @override
  SelectHeroesStateData get _value => super._value as SelectHeroesStateData;

  @override
  $Res call({
    Object? heroesList = freezed,
    Object? isGrid = freezed,
  }) {
    return _then(SelectHeroesStateData(
      heroesList: heroesList == freezed
          ? _value.heroesList
          : heroesList // ignore: cast_nullable_to_non_nullable
              as List<HeroModel>,
      isGrid: isGrid == freezed
          ? _value.isGrid
          : isGrid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SelectHeroesStateData implements SelectHeroesStateData {
  const _$SelectHeroesStateData(
      {required this.heroesList, required this.isGrid});

  @override
  final List<HeroModel> heroesList;
  @override
  final bool isGrid;

  @override
  String toString() {
    return 'SelectHeroesState.data(heroesList: $heroesList, isGrid: $isGrid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SelectHeroesStateData &&
            (identical(other.heroesList, heroesList) ||
                const DeepCollectionEquality()
                    .equals(other.heroesList, heroesList)) &&
            (identical(other.isGrid, isGrid) ||
                const DeepCollectionEquality().equals(other.isGrid, isGrid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(heroesList) ^
      const DeepCollectionEquality().hash(isGrid);

  @JsonKey(ignore: true)
  @override
  $SelectHeroesStateDataCopyWith<SelectHeroesStateData> get copyWith =>
      _$SelectHeroesStateDataCopyWithImpl<SelectHeroesStateData>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<HeroModel> heroesList, bool isGrid) data,
  }) {
    return data(heroesList, isGrid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<HeroModel> heroesList, bool isGrid)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(heroesList, isGrid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectHeroesStateInitial value) initial,
    required TResult Function(SelectHeroesStateLoading value) loading,
    required TResult Function(SelectHeroesStateError value) error,
    required TResult Function(SelectHeroesStateData value) data,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectHeroesStateInitial value)? initial,
    TResult Function(SelectHeroesStateLoading value)? loading,
    TResult Function(SelectHeroesStateError value)? error,
    TResult Function(SelectHeroesStateData value)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class SelectHeroesStateData implements SelectHeroesState {
  const factory SelectHeroesStateData(
      {required List<HeroModel> heroesList,
      required bool isGrid}) = _$SelectHeroesStateData;

  List<HeroModel> get heroesList => throw _privateConstructorUsedError;
  bool get isGrid => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SelectHeroesStateDataCopyWith<SelectHeroesStateData> get copyWith =>
      throw _privateConstructorUsedError;
}
