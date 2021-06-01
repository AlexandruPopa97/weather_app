import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app/actions/index.dart';
import 'package:weather_app/models/index.dart';
import 'package:weather_app/reducer/reducer.dart';

void main() {
  late AppState initialState;
  late Weather weather;
  final StateError error = StateError('message');
  final StackTrace stackTrace = StackTrace.fromString('stackTraceError');
  late City city;

  setUp(() {
    initialState = AppState.initialState();
    city = City(cityName: 'Bucharest', woeid: '12345');
    weather = Weather(
      date: '2021-06-01',
      humidity: 85,
      minTemp: 9.95,
      stateName: 'Heavy Rain',
      maxTemp: 13.01,
      stateAbbr: 'hr',
    );
  });

  test('getWeatherStart', () {
    // Is loading is false in the initialisation
    expect(initialState.isLoading, false);

    const String woeid = '12345';
    const GetWeather action = GetWeather.start(woeid: woeid);

    final AppState state = reducer(initialState, action);
    expect(state.isLoading, true);
  });

  test('getWeatherSuccessful', () {
    const String woeid = '12345';
    final GetWeather action =
        GetWeather.successful(weathers: <Weather>[weather]);

    final AppState state = reducer(initialState, action);
    expect(state.weathers.first, weather);
    expect(state.isLoading, false);
  });

  test('getWeatherError', () {
    final GetWeather action = GetWeatherError(error, stackTrace);

    final AppState state = reducer(initialState, action);
    expect(state.isLoading, false);
  });

  test('getCityStart', () {
    const GetCity action = GetCity.start(query: 'buch');

    final AppState state = reducer(initialState, action);
    expect(state.isLoading, true);
  });

  test('getCitySuccessful', () {
    final GetCity action = GetCity.successful(city: city);

    final AppState state = reducer(initialState, action);

    expect(state.currentCity, 'Bucharest');
    expect(state.isLoading, false);
  });

  test('getCityError', () {
    final GetCity action = GetCity.error(error, stackTrace);

    final AppState state = reducer(initialState, action);
    expect(state.isLoading, false);
  });
}
