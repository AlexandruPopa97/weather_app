import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:weather_app/actions/index.dart';
import 'package:weather_app/container/city_container.dart';
import 'package:weather_app/container/is_loading_container.dart';
import 'package:weather_app/container/weather_container.dart';
import 'package:weather_app/container/woeid_container.dart';
import 'package:weather_app/models/index.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _textController = TextEditingController();
  late bool _showTextBox;
  late bool _isCelsius;

  @override
  void initState() {
    super.initState();
    _showTextBox = false;
    _isCelsius = true;
  }

  @override
  Widget build(BuildContext context) {
    return WoeidContainer(builder: (BuildContext builder, String woeid) {
      return CityContainer(builder: (BuildContext builder, String city) {
        return IsLoadingContainer(
            builder: (BuildContext builder, bool isLoading) {
          return WeatherContainer(
              builder: (BuildContext context, List<Weather> weathers) {
            return Scaffold(
              appBar: AppBar(
                title: const Center(child: Text('Weather App')),
                backgroundColor: Colors.blue[500],
                actions: <Widget>[
                  TextButton(
                    onPressed: () {
                      setState(() {
                        _isCelsius = !_isCelsius;
                      });
                    },
                    child: Text(
                      _isCelsius ? '°C' : '°F',
                      key: const Key('switch_button'),
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
              backgroundColor: Colors.blue[100],
              body: Builder(
                builder: (BuildContext context) {
                  if (isLoading) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else {
                    return Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text(
                                city,
                                key: const Key('city_name'),
                                style: const TextStyle(
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            IconButton(
                              key: const Key('settings_button'),
                              icon: const Icon(Icons.settings),
                              onPressed: () {
                                setState(() {
                                  _showTextBox = !_showTextBox;
                                });
                              },
                            )
                          ],
                        ),
                        Visibility(
                          visible: _showTextBox,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: TextField(
                                    key: const Key('text_field'),
                                    controller: _textController,
                                    decoration: const InputDecoration(
                                      labelText: 'Please enter a city name',
                                    ),
                                  ),
                                ),
                                IconButton(
                                  key: const Key('search_button'),
                                  icon: const Icon(Icons.search),
                                  onPressed: () {
                                    StoreProvider.of<AppState>(context)
                                        .dispatch(GetCity.start(
                                            query: _textController.text));
                                  },
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: GridView.builder(
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              itemCount: weathers.length,
                              padding: const EdgeInsets.all(16.0),
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                      mainAxisSpacing: 16.0,
                                      childAspectRatio: 2.5,
                                      crossAxisCount: 1),
                              itemBuilder: (BuildContext context, int index) {
                                final Weather weather = weathers[index];
                                return Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Column(
                                          children: <Widget>[
                                            Text(weather.date,
                                                style: const TextStyle(
                                                    fontSize: 16.0)),
                                            Text(weather.stateName,
                                                style: const TextStyle(
                                                    fontSize: 16.0)),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Column(
                                          children: <Widget>[
                                            Text(
                                                'Min ' +
                                                    (_isCelsius
                                                            ? weather.minTemp
                                                            : weather.minTemp *
                                                                    1.8 +
                                                                32)
                                                        .round()
                                                        .toString(),
                                                key: Key('min_temp_$index'),
                                                style: const TextStyle(
                                                    fontSize: 16.0)),
                                            Text(
                                                'Max ' +
                                                    (_isCelsius
                                                            ? weather.maxTemp
                                                            : weather.maxTemp *
                                                                    1.8 +
                                                                32)
                                                        .round()
                                                        .toString(),
                                                style: const TextStyle(
                                                    fontSize: 16.0)),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Column(
                                          children: <Widget>[
                                            Image.network(
                                                'https://www.metaweather.com/static/img/weather/png/64/' +
                                                    weather.stateAbbr +
                                                    '.png'),
                                            Text(
                                                'Humidity ' +
                                                    weather.humidity
                                                        .toString() +
                                                    '%',
                                                style: const TextStyle(
                                                    fontSize: 16.0)),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.blue[300],
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                );
                              }),
                        )
                      ],
                    );
                  }
                },
              ),
            );
          });
        });
      });
    });
  }
}
