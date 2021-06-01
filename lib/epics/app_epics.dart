import 'package:redux_epics/redux_epics.dart';
import 'package:weather_app/actions/index.dart';
import 'package:weather_app/data/weather_api.dart';
import 'package:weather_app/models/index.dart';
import 'package:rxdart/rxdart.dart';

class AppEpics {
  const AppEpics({required WeatherApi weatherApi}) : _weatherApi = weatherApi;

  final WeatherApi _weatherApi;

  Epic<AppState> get epics {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, GetWeather$>(_getWeatherStart),
      TypedEpic<AppState, GetCity$>(_getCityStart),
    ]);
  }

  Stream<dynamic> _getWeatherStart(Stream<GetWeather$> actions, EpicStore<AppState> store) {
    return actions
        .asyncMap((GetWeather$ event) => _weatherApi.getWeather(event.woeid))
        .map((List<Weather> event) => GetWeather.successful(weathers: event))
        .onErrorReturnWith((Object error) => GetWeather.error(error, null));
  }

  Stream<dynamic> _getCityStart(Stream<GetCity$> actions, EpicStore<AppState> store) {
    return actions.asyncMap((GetCity$ event) => _weatherApi.getCity(event.query)).expand((City city) {
      return <AppAction>[
        GetCity.successful(city: city),
        GetWeather.start(woeid: city.woeid),
      ];
    }).onErrorReturnWith((Object error) => GetCity.error(error, null));
  }
}
