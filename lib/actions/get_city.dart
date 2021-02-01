part of actions;

@freezed
abstract class GetCity with _$GetCity {
  const factory GetCity.start(String query) = GetCityStart;
  const factory GetCity.successful(City city) = GetCitySuccessful;
  const factory GetCity.error(dynamic error) = GetCityError;
}
