part of models;

abstract class City implements Built<City, CityBuilder> {
  factory City([void Function(CityBuilder b) updates]) = _$City;
  factory City.fromJson(dynamic json) => serializers.deserializeWith(serializer, json);

  City._();

  @BuiltValueField(wireName: 'title')
  String get cityName;

  String get woeid;

  static Serializer<City> get serializer => _$citySerializer;
}
