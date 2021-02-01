part of actions;

@freezed
abstract class GetWeather with _$GetWeather {
  const factory GetWeather.start(String woeid) = GetWeatherStart;
  const factory GetWeather.successful(List<Weather> weathers) = GetWeatherSuccessful;
  const factory GetWeather.error(dynamic error) = GetWeatherError;
}
