part of 'locations_list_screen_bloc.dart';

@freezed
class LocationsListState /*extends Equatable*/ with _$LocationsListState {
  const factory LocationsListState.initial() = LocationsListStateInitial;

  const factory LocationsListState.loading() = LocationsListStateLoading;

  const factory LocationsListState.error() = LocationsListStateError;

  const factory LocationsListState.data({
    required List<LocationModel> locationsList,
  }) = LocationsListStateData;
}
