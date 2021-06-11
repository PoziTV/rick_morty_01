part of "profile_screen_bloc.dart";

@freezed
class LocationProfileEvent with _$LocationProfileEvent {
  const factory LocationProfileEvent.initial({
    required LocationModel currentLocation,
  }) = LocationProfileEventInitial;

  // const factory  HeroProfileEvent.error() = _HeroProfileEventError;
}
