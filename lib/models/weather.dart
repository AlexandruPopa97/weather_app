part of models;

abstract class Weather implements Built<Weather, WeatherBuilder> {
  factory Weather([void Function(WeatherBuilder b) updates]) = _$Weather;
  factory Weather.fromJson(dynamic json) => serializers.deserializeWith(serializer, json);

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
