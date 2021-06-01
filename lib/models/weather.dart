part of models;

abstract class Weather implements Built<Weather, WeatherBuilder> {
  factory Weather({
    required String stateName,
    required String date,
    required num minTemp,
    required num maxTemp,
    required int humidity,
    required String stateAbbr,
  }) {
    return _$Weather((WeatherBuilder builder) {
      builder
        ..stateName = stateName
        ..date = date
        ..maxTemp = maxTemp
        ..minTemp = minTemp
        ..humidity = humidity
        ..stateAbbr = stateAbbr;
    });
  }

  factory Weather.fromJson(dynamic json) =>
      serializers.deserializeWith(serializer, json) as Weather;

  Weather._();

  @BuiltValueField(wireName: 'weather_state_name')
  String get stateName;

  @BuiltValueField(wireName: 'weather_state_abbr')
  String get stateAbbr;

  @BuiltValueField(wireName: 'applicable_date')
  String get date;

  @BuiltValueField(wireName: 'min_temp')
  num get minTemp;

  @BuiltValueField(wireName: 'max_temp')
  num get maxTemp;

  int get humidity;

  static Serializer<Weather> get serializer => _$weatherSerializer;
}
