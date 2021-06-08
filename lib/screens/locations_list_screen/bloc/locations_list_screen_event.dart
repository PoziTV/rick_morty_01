part of 'locations_list_screen_bloc.dart';

@freezed
class LocationsListEvent with _$LocationsListEvent {
  const factory LocationsListEvent.initial() = LocationsListEventInitial;

  // const factory  HeroProfileEvent.error() = _HeroProfileEventError;
}
