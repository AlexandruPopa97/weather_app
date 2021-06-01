import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';
import 'package:mocktail/mocktail.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:weather_app/actions/index.dart';
import 'package:weather_app/data/weather_api.dart';
import 'package:weather_app/epics/app_epics.dart';
import 'package:weather_app/models/index.dart';

import '../mock_models.dart';

void main() {
  final Client client = MockClient();
  final WeatherApi weatherApi = MockWeatherApi();
  final EpicStore<AppState> epicStore = MockEpicStore();
  final StateError error = StateError('message');
  late City city;
  late Weather weather1;
  final AppEpics epics = AppEpics(weatherApi: weatherApi);

  setUp(() {
    city = City(cityName: 'Bucharest', woeid: '12345');
    weather1 = Weather(
      date: '2021-06-01',
      humidity: 85,
      minTemp: 9.95,
      stateName: 'Heavy Rain',
      maxTemp: 13.01,
      stateAbbr: 'hr',
    );
  });

  group('getWeather', () {
    test('getWeather - successful', () async {
      final dynamic weather = <Weather>[weather1];
      when(() => MockWeatherApi().getWeather(any())).thenAnswer((_) => weather);

      const GetWeather action = GetWeather.start(woeid: '868274');

      await expectLater(
        epics.epics(
            Stream<dynamic>.value(action).asBroadcastStream(), epicStore),
        emitsInOrder(<dynamic>[
          isA<GetWeather>(),
          emitsDone,
        ]),
      );
    });

    test('getWeather - error', () async {
      when(() => MockWeatherApi().getWeather(any())).thenThrow(error);

      const GetWeather action = GetWeather.start(woeid: '868274');

      await expectLater(
        epics.epics(
            Stream<dynamic>.value(action).asBroadcastStream(), epicStore),
        emitsInOrder(<dynamic>[
          isA<GetWeatherError>(),
          emitsDone,
        ]),
      );
    });
  });

  group('getCity', () {
    test('getCity - successful', () async {
      final dynamic city1 = City(cityName: 'Bucharest', woeid: '868274');
      when(() => MockWeatherApi().getCity(any())).thenAnswer((_) => city1);

      const GetCity action = GetCity.start(query: 'buch');

      await expectLater(
        epics.epics(
            Stream<dynamic>.value(action).asBroadcastStream(), epicStore),
        emitsInOrder(<dynamic>[
          isA<GetCity>(),
          emitsDone,
        ]),
      );
    });

    test('getCity - error', () async {
      when(() => MockWeatherApi().getCity(any())).thenThrow(error);

      const GetCity action = GetCity.start(query: 'buch');

      await expectLater(
        epics.epics(
            Stream<dynamic>.value(action).asBroadcastStream(), epicStore),
        emitsInOrder(<dynamic>[
          isA<GetCityError>(),
          emitsDone,
        ]),
      );
    });
  });
}