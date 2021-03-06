library serializers;

import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:weather_app/models/index.dart';

part 'serializers.g.dart';

@SerializersFor(<Type>[
  AppState,
  Weather,
  City,
])
Serializers serializers = (_$serializers.toBuilder() //
      ..addPlugin(StandardJsonPlugin()))
    .build();
