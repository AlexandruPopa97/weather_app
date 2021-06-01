import 'package:http/http.dart';
import 'package:mocktail/mocktail.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:weather_app/data/weather_api.dart';
import 'package:weather_app/models/index.dart';

class MockClient extends Mock implements Client {}
class MockWeatherApi extends Mock implements WeatherApi {}
class MockEpicStore extends Mock implements EpicStore<AppState> {}

