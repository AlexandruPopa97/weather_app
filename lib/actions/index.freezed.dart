// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of actions;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$GetWeatherTearOff {
  const _$GetWeatherTearOff();

// ignore: unused_element
  GetWeatherStart start(String woeid) {
    return GetWeatherStart(
      woeid,
    );
  }

// ignore: unused_element
  GetWeatherSuccessful successful(List<Weather> weathers) {
    return GetWeatherSuccessful(
      weathers,
    );
  }

// ignore: unused_element
  GetWeatherError error(dynamic error) {
    return GetWeatherError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $GetWeather = _$GetWeatherTearOff();

/// @nodoc
mixin _$GetWeather {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result start(String woeid),
    @required Result successful(List<Weather> weathers),
    @required Result error(dynamic error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(String woeid),
    Result successful(List<Weather> weathers),
    Result error(dynamic error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result start(GetWeatherStart value),
    @required Result successful(GetWeatherSuccessful value),
    @required Result error(GetWeatherError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(GetWeatherStart value),
    Result successful(GetWeatherSuccessful value),
    Result error(GetWeatherError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $GetWeatherCopyWith<$Res> {
  factory $GetWeatherCopyWith(GetWeather value, $Res Function(GetWeather) then) = _$GetWeatherCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetWeatherCopyWithImpl<$Res> implements $GetWeatherCopyWith<$Res> {
  _$GetWeatherCopyWithImpl(this._value, this._then);

  final GetWeather _value;
  // ignore: unused_field
  final $Res Function(GetWeather) _then;
}

/// @nodoc
abstract class $GetWeatherStartCopyWith<$Res> {
  factory $GetWeatherStartCopyWith(GetWeatherStart value, $Res Function(GetWeatherStart) then) =
      _$GetWeatherStartCopyWithImpl<$Res>;
  $Res call({String woeid});
}

/// @nodoc
class _$GetWeatherStartCopyWithImpl<$Res> extends _$GetWeatherCopyWithImpl<$Res>
    implements $GetWeatherStartCopyWith<$Res> {
  _$GetWeatherStartCopyWithImpl(GetWeatherStart _value, $Res Function(GetWeatherStart) _then)
      : super(_value, (v) => _then(v as GetWeatherStart));

  @override
  GetWeatherStart get _value => super._value as GetWeatherStart;

  @override
  $Res call({
    Object woeid = freezed,
  }) {
    return _then(GetWeatherStart(
      woeid == freezed ? _value.woeid : woeid as String,
    ));
  }
}

/// @nodoc
class _$GetWeatherStart implements GetWeatherStart {
  const _$GetWeatherStart(this.woeid) : assert(woeid != null);

  @override
  final String woeid;

  @override
  String toString() {
    return 'GetWeather.start(woeid: $woeid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetWeatherStart &&
            (identical(other.woeid, woeid) || const DeepCollectionEquality().equals(other.woeid, woeid)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(woeid);

  @override
  $GetWeatherStartCopyWith<GetWeatherStart> get copyWith =>
      _$GetWeatherStartCopyWithImpl<GetWeatherStart>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result start(String woeid),
    @required Result successful(List<Weather> weathers),
    @required Result error(dynamic error),
  }) {
    assert(start != null);
    assert(successful != null);
    assert(error != null);
    return start(woeid);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(String woeid),
    Result successful(List<Weather> weathers),
    Result error(dynamic error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (start != null) {
      return start(woeid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result start(GetWeatherStart value),
    @required Result successful(GetWeatherSuccessful value),
    @required Result error(GetWeatherError value),
  }) {
    assert(start != null);
    assert(successful != null);
    assert(error != null);
    return start(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(GetWeatherStart value),
    Result successful(GetWeatherSuccessful value),
    Result error(GetWeatherError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class GetWeatherStart implements GetWeather {
  const factory GetWeatherStart(String woeid) = _$GetWeatherStart;

  String get woeid;
  $GetWeatherStartCopyWith<GetWeatherStart> get copyWith;
}

/// @nodoc
abstract class $GetWeatherSuccessfulCopyWith<$Res> {
  factory $GetWeatherSuccessfulCopyWith(GetWeatherSuccessful value, $Res Function(GetWeatherSuccessful) then) =
      _$GetWeatherSuccessfulCopyWithImpl<$Res>;
  $Res call({List<Weather> weathers});
}

/// @nodoc
class _$GetWeatherSuccessfulCopyWithImpl<$Res> extends _$GetWeatherCopyWithImpl<$Res>
    implements $GetWeatherSuccessfulCopyWith<$Res> {
  _$GetWeatherSuccessfulCopyWithImpl(GetWeatherSuccessful _value, $Res Function(GetWeatherSuccessful) _then)
      : super(_value, (v) => _then(v as GetWeatherSuccessful));

  @override
  GetWeatherSuccessful get _value => super._value as GetWeatherSuccessful;

  @override
  $Res call({
    Object weathers = freezed,
  }) {
    return _then(GetWeatherSuccessful(
      weathers == freezed ? _value.weathers : weathers as List<Weather>,
    ));
  }
}

/// @nodoc
class _$GetWeatherSuccessful implements GetWeatherSuccessful {
  const _$GetWeatherSuccessful(this.weathers) : assert(weathers != null);

  @override
  final List<Weather> weathers;

  @override
  String toString() {
    return 'GetWeather.successful(weathers: $weathers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetWeatherSuccessful &&
            (identical(other.weathers, weathers) || const DeepCollectionEquality().equals(other.weathers, weathers)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(weathers);

  @override
  $GetWeatherSuccessfulCopyWith<GetWeatherSuccessful> get copyWith =>
      _$GetWeatherSuccessfulCopyWithImpl<GetWeatherSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result start(String woeid),
    @required Result successful(List<Weather> weathers),
    @required Result error(dynamic error),
  }) {
    assert(start != null);
    assert(successful != null);
    assert(error != null);
    return successful(weathers);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(String woeid),
    Result successful(List<Weather> weathers),
    Result error(dynamic error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(weathers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result start(GetWeatherStart value),
    @required Result successful(GetWeatherSuccessful value),
    @required Result error(GetWeatherError value),
  }) {
    assert(start != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(GetWeatherStart value),
    Result successful(GetWeatherSuccessful value),
    Result error(GetWeatherError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetWeatherSuccessful implements GetWeather {
  const factory GetWeatherSuccessful(List<Weather> weathers) = _$GetWeatherSuccessful;

  List<Weather> get weathers;
  $GetWeatherSuccessfulCopyWith<GetWeatherSuccessful> get copyWith;
}

/// @nodoc
abstract class $GetWeatherErrorCopyWith<$Res> {
  factory $GetWeatherErrorCopyWith(GetWeatherError value, $Res Function(GetWeatherError) then) =
      _$GetWeatherErrorCopyWithImpl<$Res>;
  $Res call({dynamic error});
}

/// @nodoc
class _$GetWeatherErrorCopyWithImpl<$Res> extends _$GetWeatherCopyWithImpl<$Res>
    implements $GetWeatherErrorCopyWith<$Res> {
  _$GetWeatherErrorCopyWithImpl(GetWeatherError _value, $Res Function(GetWeatherError) _then)
      : super(_value, (v) => _then(v as GetWeatherError));

  @override
  GetWeatherError get _value => super._value as GetWeatherError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(GetWeatherError(
      error == freezed ? _value.error : error as dynamic,
    ));
  }
}

/// @nodoc
class _$GetWeatherError implements GetWeatherError {
  const _$GetWeatherError(this.error) : assert(error != null);

  @override
  final dynamic error;

  @override
  String toString() {
    return 'GetWeather.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetWeatherError &&
            (identical(other.error, error) || const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $GetWeatherErrorCopyWith<GetWeatherError> get copyWith =>
      _$GetWeatherErrorCopyWithImpl<GetWeatherError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result start(String woeid),
    @required Result successful(List<Weather> weathers),
    @required Result error(dynamic error),
  }) {
    assert(start != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(String woeid),
    Result successful(List<Weather> weathers),
    Result error(dynamic error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result start(GetWeatherStart value),
    @required Result successful(GetWeatherSuccessful value),
    @required Result error(GetWeatherError value),
  }) {
    assert(start != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(GetWeatherStart value),
    Result successful(GetWeatherSuccessful value),
    Result error(GetWeatherError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetWeatherError implements GetWeather {
  const factory GetWeatherError(dynamic error) = _$GetWeatherError;

  dynamic get error;
  $GetWeatherErrorCopyWith<GetWeatherError> get copyWith;
}

/// @nodoc
class _$GetCityTearOff {
  const _$GetCityTearOff();

// ignore: unused_element
  GetCityStart start(String query) {
    return GetCityStart(
      query,
    );
  }

// ignore: unused_element
  GetCitySuccessful successful(City city) {
    return GetCitySuccessful(
      city,
    );
  }

// ignore: unused_element
  GetCityError error(dynamic error) {
    return GetCityError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $GetCity = _$GetCityTearOff();

/// @nodoc
mixin _$GetCity {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result start(String query),
    @required Result successful(City city),
    @required Result error(dynamic error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(String query),
    Result successful(City city),
    Result error(dynamic error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result start(GetCityStart value),
    @required Result successful(GetCitySuccessful value),
    @required Result error(GetCityError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(GetCityStart value),
    Result successful(GetCitySuccessful value),
    Result error(GetCityError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $GetCityCopyWith<$Res> {
  factory $GetCityCopyWith(GetCity value, $Res Function(GetCity) then) = _$GetCityCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetCityCopyWithImpl<$Res> implements $GetCityCopyWith<$Res> {
  _$GetCityCopyWithImpl(this._value, this._then);

  final GetCity _value;
  // ignore: unused_field
  final $Res Function(GetCity) _then;
}

/// @nodoc
abstract class $GetCityStartCopyWith<$Res> {
  factory $GetCityStartCopyWith(GetCityStart value, $Res Function(GetCityStart) then) =
      _$GetCityStartCopyWithImpl<$Res>;
  $Res call({String query});
}

/// @nodoc
class _$GetCityStartCopyWithImpl<$Res> extends _$GetCityCopyWithImpl<$Res> implements $GetCityStartCopyWith<$Res> {
  _$GetCityStartCopyWithImpl(GetCityStart _value, $Res Function(GetCityStart) _then)
      : super(_value, (v) => _then(v as GetCityStart));

  @override
  GetCityStart get _value => super._value as GetCityStart;

  @override
  $Res call({
    Object query = freezed,
  }) {
    return _then(GetCityStart(
      query == freezed ? _value.query : query as String,
    ));
  }
}

/// @nodoc
class _$GetCityStart implements GetCityStart {
  const _$GetCityStart(this.query) : assert(query != null);

  @override
  final String query;

  @override
  String toString() {
    return 'GetCity.start(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetCityStart &&
            (identical(other.query, query) || const DeepCollectionEquality().equals(other.query, query)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(query);

  @override
  $GetCityStartCopyWith<GetCityStart> get copyWith => _$GetCityStartCopyWithImpl<GetCityStart>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result start(String query),
    @required Result successful(City city),
    @required Result error(dynamic error),
  }) {
    assert(start != null);
    assert(successful != null);
    assert(error != null);
    return start(query);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(String query),
    Result successful(City city),
    Result error(dynamic error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (start != null) {
      return start(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result start(GetCityStart value),
    @required Result successful(GetCitySuccessful value),
    @required Result error(GetCityError value),
  }) {
    assert(start != null);
    assert(successful != null);
    assert(error != null);
    return start(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(GetCityStart value),
    Result successful(GetCitySuccessful value),
    Result error(GetCityError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class GetCityStart implements GetCity {
  const factory GetCityStart(String query) = _$GetCityStart;

  String get query;
  $GetCityStartCopyWith<GetCityStart> get copyWith;
}

/// @nodoc
abstract class $GetCitySuccessfulCopyWith<$Res> {
  factory $GetCitySuccessfulCopyWith(GetCitySuccessful value, $Res Function(GetCitySuccessful) then) =
      _$GetCitySuccessfulCopyWithImpl<$Res>;
  $Res call({City city});
}

/// @nodoc
class _$GetCitySuccessfulCopyWithImpl<$Res> extends _$GetCityCopyWithImpl<$Res>
    implements $GetCitySuccessfulCopyWith<$Res> {
  _$GetCitySuccessfulCopyWithImpl(GetCitySuccessful _value, $Res Function(GetCitySuccessful) _then)
      : super(_value, (v) => _then(v as GetCitySuccessful));

  @override
  GetCitySuccessful get _value => super._value as GetCitySuccessful;

  @override
  $Res call({
    Object city = freezed,
  }) {
    return _then(GetCitySuccessful(
      city == freezed ? _value.city : city as City,
    ));
  }
}

/// @nodoc
class _$GetCitySuccessful implements GetCitySuccessful {
  const _$GetCitySuccessful(this.city) : assert(city != null);

  @override
  final City city;

  @override
  String toString() {
    return 'GetCity.successful(city: $city)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetCitySuccessful &&
            (identical(other.city, city) || const DeepCollectionEquality().equals(other.city, city)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(city);

  @override
  $GetCitySuccessfulCopyWith<GetCitySuccessful> get copyWith =>
      _$GetCitySuccessfulCopyWithImpl<GetCitySuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result start(String query),
    @required Result successful(City city),
    @required Result error(dynamic error),
  }) {
    assert(start != null);
    assert(successful != null);
    assert(error != null);
    return successful(city);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(String query),
    Result successful(City city),
    Result error(dynamic error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(city);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result start(GetCityStart value),
    @required Result successful(GetCitySuccessful value),
    @required Result error(GetCityError value),
  }) {
    assert(start != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(GetCityStart value),
    Result successful(GetCitySuccessful value),
    Result error(GetCityError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetCitySuccessful implements GetCity {
  const factory GetCitySuccessful(City city) = _$GetCitySuccessful;

  City get city;
  $GetCitySuccessfulCopyWith<GetCitySuccessful> get copyWith;
}

/// @nodoc
abstract class $GetCityErrorCopyWith<$Res> {
  factory $GetCityErrorCopyWith(GetCityError value, $Res Function(GetCityError) then) =
      _$GetCityErrorCopyWithImpl<$Res>;
  $Res call({dynamic error});
}

/// @nodoc
class _$GetCityErrorCopyWithImpl<$Res> extends _$GetCityCopyWithImpl<$Res> implements $GetCityErrorCopyWith<$Res> {
  _$GetCityErrorCopyWithImpl(GetCityError _value, $Res Function(GetCityError) _then)
      : super(_value, (v) => _then(v as GetCityError));

  @override
  GetCityError get _value => super._value as GetCityError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(GetCityError(
      error == freezed ? _value.error : error as dynamic,
    ));
  }
}

/// @nodoc
class _$GetCityError implements GetCityError {
  const _$GetCityError(this.error) : assert(error != null);

  @override
  final dynamic error;

  @override
  String toString() {
    return 'GetCity.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetCityError &&
            (identical(other.error, error) || const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $GetCityErrorCopyWith<GetCityError> get copyWith => _$GetCityErrorCopyWithImpl<GetCityError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result start(String query),
    @required Result successful(City city),
    @required Result error(dynamic error),
  }) {
    assert(start != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(String query),
    Result successful(City city),
    Result error(dynamic error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result start(GetCityStart value),
    @required Result successful(GetCitySuccessful value),
    @required Result error(GetCityError value),
  }) {
    assert(start != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(GetCityStart value),
    Result successful(GetCitySuccessful value),
    Result error(GetCityError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetCityError implements GetCity {
  const factory GetCityError(dynamic error) = _$GetCityError;

  dynamic get error;
  $GetCityErrorCopyWith<GetCityError> get copyWith;
}
