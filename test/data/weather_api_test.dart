import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';

void main() {
  final Client client = Client();

  test('getCity', () async {
    const String query = 'buch';
    const String url =
        'https://www.metaweather.com/api/location/search/?query=' + query;
    final Uri uri = Uri.parse(url);
    final Response response = await client.get(uri);
    final dynamic data = jsonDecode(response.body)[0];

    final String cityName = data['title'];
    final int woeid = data['woeid'];
    final String locationType = data['location_type'];
    final dynamic latLong = data['latt_long'];

    expect(cityName, equals('Bucharest'));
    expect(woeid, equals(868274));
    expect(locationType, equals('City'));
    expect(latLong, equals('44.434200,26.102970'));
  });

  test('getWeather', () async {
    const String woeid = '868274';
    const String url = 'https://www.metaweather.com/api/location/' + woeid;
    final Uri uri = Uri.parse(url);
    final Response response = await client.get(uri);
    final List<dynamic> data =
        jsonDecode(response.body)['consolidated_weather'] as List<dynamic>;

    for (final dynamic weather in data) {
      expect(
          weather['weather_state_name'],
          isIn(<String>[
            'Snow',
            'Sleet',
            'Hail',
            'Thunderstorm',
            'Heavy Rain',
            'Light Rain',
            'Showers',
            'Heavy Cloud',
            'Light Cloud',
            'Clear'
          ]));
      expect(weather['humidity'], closeTo(50, 50));
    }
    expect(data.length, 6);
  });
}
