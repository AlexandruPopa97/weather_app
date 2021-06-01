part of actions;

/*
@freezed
class GetWeather with _$GetWeather implements AppAction {
  const factory GetWeather(String woeid) = GetWeather$;

  const factory GetWeather.successful(List<Weather> weathers) = GetWeatherSuccessful;

  @Implements(ErrorAction)
  const factory GetWeather.error(StateError error) = GetWeatherError;
}

 */


const String _kGetWeatherPendingId = 'GetWeather';

@freezed
class GetWeather with _$GetWeather implements AppAction {
  @Implements(ActionStart)
  const factory GetWeather.start({
  required String woeid,
    @Default(_kGetWeatherPendingId) String pendingId,
  }) = GetWeather$;

  @Implements(ActionDone)
  const factory GetWeather.successful({
    required List<Weather> weathers,
    @Default(_kGetWeatherPendingId) String pendingId,
  }) = GetWeatherSuccessful;

  @Implements(ActionDone)
  @Implements(ErrorAction)
  const factory GetWeather.error(
      Object error,
      StackTrace? stackTrace, [
        @Default(_kGetWeatherPendingId) String pendingId,
      ]) = GetWeatherError;

  static String get pendingKey => _kGetWeatherPendingId;
}
