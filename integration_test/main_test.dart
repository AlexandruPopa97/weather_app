import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';
import 'package:integration_test/integration_test.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:weather_app/data/weather_api.dart';
import 'package:weather_app/epics/app_epics.dart';
import 'package:weather_app/main.dart';
import 'package:weather_app/models/index.dart';
import 'package:weather_app/reducer/reducer.dart';

void main(){
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

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

  testWidgets('checkDefaultCity', (WidgetTester tester) async{
    await tester.pumpWidget(MyApp(store: store));
    await tester.pumpAndSettle(const Duration(seconds: 1));
  });
}