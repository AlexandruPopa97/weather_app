// GENERATED CODE - DO NOT MODIFY BY HAND

part of models;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Weather> _$weatherSerializer = new _$WeatherSerializer();
Serializer<City> _$citySerializer = new _$CitySerializer();

class _$WeatherSerializer implements StructuredSerializer<Weather> {
  @override
  final Iterable<Type> types = const [Weather, _$Weather];
  @override
  final String wireName = 'Weather';

  @override
  Iterable<Object> serialize(Serializers serializers, Weather object, {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'weather_state_name',
      serializers.serialize(object.stateName, specifiedType: const FullType(String)),
      'weather_state_abbr',
      serializers.serialize(object.stateAbbr, specifiedType: const FullType(String)),
      'applicable_date',
      serializers.serialize(object.date, specifiedType: const FullType(String)),
      'min_temp',
      serializers.serialize(object.minTemp, specifiedType: const FullType(num)),
      'max_temp',
      serializers.serialize(object.maxTemp, specifiedType: const FullType(num)),
      'humidity',
      serializers.serialize(object.humidity, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  Weather deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WeatherBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'weather_state_name':
          result.stateName = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'weather_state_abbr':
          result.stateAbbr = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'applicable_date':
          result.date = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'min_temp':
          result.minTemp = serializers.deserialize(value, specifiedType: const FullType(num)) as num;
          break;
        case 'max_temp':
          result.maxTemp = serializers.deserialize(value, specifiedType: const FullType(num)) as num;
          break;
        case 'humidity':
          result.humidity = serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$CitySerializer implements StructuredSerializer<City> {
  @override
  final Iterable<Type> types = const [City, _$City];
  @override
  final String wireName = 'City';

  @override
  Iterable<Object> serialize(Serializers serializers, City object, {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'title',
      serializers.serialize(object.cityName, specifiedType: const FullType(String)),
      'woeid',
      serializers.serialize(object.woeid, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  City deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CityBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'title':
          result.cityName = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'woeid':
          result.woeid = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$AppState extends AppState {
  @override
  final BuiltList<Weather> weathers;
  @override
  final String currentCity;
  @override
  final String currentWoeid;
  @override
  final bool isLoading;

  factory _$AppState([void Function(AppStateBuilder) updates]) => (new AppStateBuilder()..update(updates)).build();

  _$AppState._({this.weathers, this.currentCity, this.currentWoeid, this.isLoading}) : super._() {
    if (weathers == null) {
      throw new BuiltValueNullFieldError('AppState', 'weathers');
    }
    if (currentCity == null) {
      throw new BuiltValueNullFieldError('AppState', 'currentCity');
    }
    if (currentWoeid == null) {
      throw new BuiltValueNullFieldError('AppState', 'currentWoeid');
    }
    if (isLoading == null) {
      throw new BuiltValueNullFieldError('AppState', 'isLoading');
    }
  }

  @override
  AppState rebuild(void Function(AppStateBuilder) updates) => (toBuilder()..update(updates)).build();

  @override
  AppStateBuilder toBuilder() => new AppStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppState &&
        weathers == other.weathers &&
        currentCity == other.currentCity &&
        currentWoeid == other.currentWoeid &&
        isLoading == other.isLoading;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc($jc(0, weathers.hashCode), currentCity.hashCode), currentWoeid.hashCode), isLoading.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppState')
          ..add('weathers', weathers)
          ..add('currentCity', currentCity)
          ..add('currentWoeid', currentWoeid)
          ..add('isLoading', isLoading))
        .toString();
  }
}

class AppStateBuilder implements Builder<AppState, AppStateBuilder> {
  _$AppState _$v;

  ListBuilder<Weather> _weathers;
  ListBuilder<Weather> get weathers => _$this._weathers ??= new ListBuilder<Weather>();
  set weathers(ListBuilder<Weather> weathers) => _$this._weathers = weathers;

  String _currentCity;
  String get currentCity => _$this._currentCity;
  set currentCity(String currentCity) => _$this._currentCity = currentCity;

  String _currentWoeid;
  String get currentWoeid => _$this._currentWoeid;
  set currentWoeid(String currentWoeid) => _$this._currentWoeid = currentWoeid;

  bool _isLoading;
  bool get isLoading => _$this._isLoading;
  set isLoading(bool isLoading) => _$this._isLoading = isLoading;

  AppStateBuilder();

  AppStateBuilder get _$this {
    if (_$v != null) {
      _weathers = _$v.weathers?.toBuilder();
      _currentCity = _$v.currentCity;
      _currentWoeid = _$v.currentWoeid;
      _isLoading = _$v.isLoading;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AppState;
  }

  @override
  void update(void Function(AppStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AppState build() {
    _$AppState _$result;
    try {
      _$result = _$v ??
          new _$AppState._(
              weathers: weathers.build(), currentCity: currentCity, currentWoeid: currentWoeid, isLoading: isLoading);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'weathers';
        weathers.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError('AppState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Weather extends Weather {
  @override
  final String stateName;
  @override
  final String stateAbbr;
  @override
  final String date;
  @override
  final num minTemp;
  @override
  final num maxTemp;
  @override
  final int humidity;

  factory _$Weather([void Function(WeatherBuilder) updates]) => (new WeatherBuilder()..update(updates)).build();

  _$Weather._({this.stateName, this.stateAbbr, this.date, this.minTemp, this.maxTemp, this.humidity}) : super._() {
    if (stateName == null) {
      throw new BuiltValueNullFieldError('Weather', 'stateName');
    }
    if (stateAbbr == null) {
      throw new BuiltValueNullFieldError('Weather', 'stateAbbr');
    }
    if (date == null) {
      throw new BuiltValueNullFieldError('Weather', 'date');
    }
    if (minTemp == null) {
      throw new BuiltValueNullFieldError('Weather', 'minTemp');
    }
    if (maxTemp == null) {
      throw new BuiltValueNullFieldError('Weather', 'maxTemp');
    }
    if (humidity == null) {
      throw new BuiltValueNullFieldError('Weather', 'humidity');
    }
  }

  @override
  Weather rebuild(void Function(WeatherBuilder) updates) => (toBuilder()..update(updates)).build();

  @override
  WeatherBuilder toBuilder() => new WeatherBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Weather &&
        stateName == other.stateName &&
        stateAbbr == other.stateAbbr &&
        date == other.date &&
        minTemp == other.minTemp &&
        maxTemp == other.maxTemp &&
        humidity == other.humidity;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc($jc(0, stateName.hashCode), stateAbbr.hashCode), date.hashCode), minTemp.hashCode),
            maxTemp.hashCode),
        humidity.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Weather')
          ..add('stateName', stateName)
          ..add('stateAbbr', stateAbbr)
          ..add('date', date)
          ..add('minTemp', minTemp)
          ..add('maxTemp', maxTemp)
          ..add('humidity', humidity))
        .toString();
  }
}

class WeatherBuilder implements Builder<Weather, WeatherBuilder> {
  _$Weather _$v;

  String _stateName;
  String get stateName => _$this._stateName;
  set stateName(String stateName) => _$this._stateName = stateName;

  String _stateAbbr;
  String get stateAbbr => _$this._stateAbbr;
  set stateAbbr(String stateAbbr) => _$this._stateAbbr = stateAbbr;

  String _date;
  String get date => _$this._date;
  set date(String date) => _$this._date = date;

  num _minTemp;
  num get minTemp => _$this._minTemp;
  set minTemp(num minTemp) => _$this._minTemp = minTemp;

  num _maxTemp;
  num get maxTemp => _$this._maxTemp;
  set maxTemp(num maxTemp) => _$this._maxTemp = maxTemp;

  int _humidity;
  int get humidity => _$this._humidity;
  set humidity(int humidity) => _$this._humidity = humidity;

  WeatherBuilder();

  WeatherBuilder get _$this {
    if (_$v != null) {
      _stateName = _$v.stateName;
      _stateAbbr = _$v.stateAbbr;
      _date = _$v.date;
      _minTemp = _$v.minTemp;
      _maxTemp = _$v.maxTemp;
      _humidity = _$v.humidity;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Weather other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Weather;
  }

  @override
  void update(void Function(WeatherBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Weather build() {
    final _$result = _$v ??
        new _$Weather._(
            stateName: stateName,
            stateAbbr: stateAbbr,
            date: date,
            minTemp: minTemp,
            maxTemp: maxTemp,
            humidity: humidity);
    replace(_$result);
    return _$result;
  }
}

class _$City extends City {
  @override
  final String cityName;
  @override
  final String woeid;

  factory _$City([void Function(CityBuilder) updates]) => (new CityBuilder()..update(updates)).build();

  _$City._({this.cityName, this.woeid}) : super._() {
    if (cityName == null) {
      throw new BuiltValueNullFieldError('City', 'cityName');
    }
    if (woeid == null) {
      throw new BuiltValueNullFieldError('City', 'woeid');
    }
  }

  @override
  City rebuild(void Function(CityBuilder) updates) => (toBuilder()..update(updates)).build();

  @override
  CityBuilder toBuilder() => new CityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is City && cityName == other.cityName && woeid == other.woeid;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, cityName.hashCode), woeid.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('City')..add('cityName', cityName)..add('woeid', woeid)).toString();
  }
}

class CityBuilder implements Builder<City, CityBuilder> {
  _$City _$v;

  String _cityName;
  String get cityName => _$this._cityName;
  set cityName(String cityName) => _$this._cityName = cityName;

  String _woeid;
  String get woeid => _$this._woeid;
  set woeid(String woeid) => _$this._woeid = woeid;

  CityBuilder();

  CityBuilder get _$this {
    if (_$v != null) {
      _cityName = _$v.cityName;
      _woeid = _$v.woeid;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(City other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$City;
  }

  @override
  void update(void Function(CityBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$City build() {
    final _$result = _$v ?? new _$City._(cityName: cityName, woeid: woeid);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
