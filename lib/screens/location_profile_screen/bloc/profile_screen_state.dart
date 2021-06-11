part of "profile_screen_bloc.dart";

@freezed
class LocationProfileState /*extends Equatable*/ with _$LocationProfileState {
  const factory LocationProfileState.initial() = LocationProfileStateInitial;

  const factory LocationProfileState.loading() = LocationProfileStateLoading;

  const factory LocationProfileState.error() = LocationProfileStateError;

  const factory LocationProfileState.data({
    required LocationModel currentLocation,
    required List<HeroModel> currentLocationHeroesList,
  }) = LocationProfileStateData;
}
