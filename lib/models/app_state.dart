part of models;

abstract class AppState implements Built<AppState, AppStateBuilder> {
  factory AppState() {
    return _$AppState((AppStateBuilder builder) {
      builder.isLoading = true;
      builder.currentCity = 'San Francisco';
      builder.currentWoeid = '2487956';
    });
  }

  factory AppState.initialState() {
    return  _$AppState((AppStateBuilder builder) {
      builder.isLoading = false;
      builder.currentCity = 'San Francisco';
      builder.currentWoeid = '2487956';
    });
  }

  AppState._();

  BuiltList<Weather> get weathers;

  String get currentCity;

  String get currentWoeid;

  bool get isLoading;
}
