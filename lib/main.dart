import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:http/http.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:weather_app/actions/index.dart';
import 'package:weather_app/data/weather_api.dart';
import 'package:weather_app/epics/app_epics.dart';
import 'package:weather_app/models/index.dart';
import 'package:weather_app/presentation/home_page.dart';
import 'package:weather_app/reducer/reducer.dart';

void main() {
  final Client client = Client();
  final WeatherApi weatherApi = WeatherApi(client: client);
  final AppEpics appEpics = AppEpics(weatherApi: weatherApi);
  final AppState initialState = AppState();
  final Store<AppState> store = Store<AppState>(
    reducer,
    initialState: initialState,
    middleware: <Middleware<AppState>>[
      EpicMiddleware<AppState>(appEpics.epics),
    ],
  );

  store.dispatch(GetWeatherStart(initialState.currentWoeid));
  runApp(MyApp(store: store));
}

class MyApp extends StatelessWidget {
  const MyApp({Key key, @required this.store}) : super(key: key);

  final Store<AppState> store;

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: const MaterialApp(
        home: HomePage(),
      ),
    );
  }
}
