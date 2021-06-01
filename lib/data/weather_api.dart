import 'dart:convert';
import 'package:http/http.dart';
import 'package:weather_app/models/index.dart';

class WeatherApi {
  const WeatherApi({required Client client}) : _client = client;

  final Client _client;

  Future<City> getCity(String query) async {
    final String url = 'https://www.metaweather.com/api/location/search/?query=' + query;
    final Uri uri = Uri.parse(url);
    final Response response = await _client.get(uri);
    final dynamic data = jsonDecode(response.body)[0];

    final City city = City(cityName: data['title'], woeid: '${data['woeid']}');
    return city;
  }

  Future<List<Weather>> getWeather(String woeid) async {
    final String url = 'https://www.metaweather.com/api/location/' + woeid;
    final Uri uri = Uri.parse(url);
    final Response response = await _client.get(uri);

    final List<dynamic> data = jsonDecode(response.body)['consolidated_weather'] as List<dynamic>;
    return data.map((dynamic json) => Weather.fromJson(json)).toList();
  }
}
