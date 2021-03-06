import 'package:redux/redux.dart';
import 'package:weather_app/actions/index.dart';
import 'package:weather_app/models/index.dart';

Reducer<AppState> reducer = combineReducers(<Reducer<AppState>>[
  TypedReducer<AppState, GetWeather>(_getWeatherStart),
  TypedReducer<AppState, GetWeatherSuccessful>(_getWeatherSuccessful),
  TypedReducer<AppState, GetWeatherError>(_getWeatherError),
  TypedReducer<AppState, GetCity>(_getCityStart),
  TypedReducer<AppState, GetCitySuccessful>(_getCitySuccessful),
  TypedReducer<AppState, GetCityError>(_getCityError),
]);

AppState _getWeatherStart(AppState state, GetWeather action) {
  return state.rebuild((AppStateBuilder b) => b.isLoading = true);
}

AppState _getWeatherSuccessful(AppState state, GetWeatherSuccessful action) {
  return state.rebuild((AppStateBuilder b) {
    b
      ..weathers.removeRange(0, state.weathers.length)
      ..weathers.addAll(action.weathers)
      ..isLoading = false;
  });
}

AppState _getWeatherError(AppState state, GetWeatherError action) {
  return state.rebuild((AppStateBuilder b) {
    b.isLoading = false;
  });
}

AppState _getCityStart(AppState state, GetCity action) {
  return state.rebuild((AppStateBuilder b) => b.isLoading = true);
}

AppState _getCitySuccessful(AppState state, GetCitySuccessful action) {
  return state.rebuild((AppStateBuilder b) {
    b
      ..currentCity = action.city.cityName
      ..currentWoeid = action.city.woeid
      ..isLoading = false;
  });
}

AppState _getCityError(AppState state, GetCityError action) {
  return state.rebuild((AppStateBuilder b) {
    b.isLoading = false;
  });
}
