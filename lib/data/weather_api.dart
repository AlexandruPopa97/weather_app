import 'dart:convert';
import 'package:http/http.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:weather_app/models/index.dart';

class WeatherApi {
  const WeatherApi({@required Client client})
      : assert(client != null),
        _client = client;

  final Client _client;

  Future<City> getCity(String query) async {
    final String url = 'https://www.metaweather.com/api/location/search/?query=' + query;
    final Response response = await _client.get(url);

    final dynamic data = jsonDecode(response.body)[0];
    return City.fromJson(data);
  }

  Future<List<Weather>> getWeather(String woeid) async {
    final String url = 'https://www.metaweather.com/api/location/' + woeid;
    final Response response = await _client.get(url);

    final List<dynamic> data = jsonDecode(response.body)['consolidated_weather'] as List<dynamic>;
    return data.map((dynamic json) => Weather.fromJson(json)).toList();
  }
}
