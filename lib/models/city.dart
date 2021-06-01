part of models;

abstract class City implements Built<City, CityBuilder> {
  factory City({
    required String cityName,
    required String woeid,
  }) {
    return _$City((CityBuilder builder) {
      builder
        ..cityName = cityName
        ..woeid = woeid;
    });
  }
  factory City.fromJson(dynamic json) => serializers.deserializeWith(serializer, json) as City;

  City._();

  @BuiltValueField(wireName: 'title')
  String get cityName;

  String get woeid;

  static Serializer<City> get serializer => _$citySerializer;
}
