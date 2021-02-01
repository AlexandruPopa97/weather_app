import 'package:flutter/widgets.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:weather_app/actions/index.dart';
import 'package:weather_app/data/weather_api.dart';
import 'package:weather_app/models/index.dart';
import 'package:rxdart/rxdart.dart';

class AppEpics {
  const AppEpics({@required WeatherApi weatherApi})
      : assert(weatherApi != null),
        _weatherApi = weatherApi;

  final WeatherApi _weatherApi;

  Epic<AppState> get epics {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, GetWeatherStart>(_getWeatherStart),
      TypedEpic<AppState, GetCityStart>(_getCityStart),
    ]);
  }

  Stream<dynamic> _getWeatherStart(Stream<GetWeatherStart> actions, EpicStore<AppState> store) {
    return actions
        .asyncMap((GetWeatherStart event) => _weatherApi.getWeather(event.woeid))
        .map((List<Weather> event) => GetWeather.successful(event))
        .onErrorReturnWith((dynamic error) => GetWeather.error(error));
  }

  Stream<dynamic> _getCityStart(Stream<GetCityStart> actions, EpicStore<AppState> store) {
    return actions
        .asyncMap((GetCityStart event) => _weatherApi.getCity(event.query))
        .map((City event) => GetCity.successful(event))
        .onErrorReturnWith((dynamic error) => GetCity.error(error));
  }
}
