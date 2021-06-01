part of actions;

/*
@freezed
abstract class GetCity with _$GetCity implements AppAction {
  const factory GetCity(String query) = GetCity$;

  const factory GetCity.successful(City city) = GetCitySuccessful;

  @Implements(ErrorAction)
  const factory GetCity.error(StateError error) = GetCityError;
}


 */

const String _kGetCityPendingId = 'GetCity';

@freezed
class GetCity with _$GetCity implements AppAction {
  @Implements(ActionStart)
  const factory GetCity.start({
  required String query,
    @Default(_kGetCityPendingId) String pendingId,
  }) = GetCity$;

  @Implements(ActionDone)
  const factory GetCity.successful({
    required City city,
    @Default(_kGetCityPendingId) String pendingId,
  }) = GetCitySuccessful;

  @Implements(ActionDone)
  @Implements(ErrorAction)
  const factory GetCity.error(
      Object error,
      StackTrace? stackTrace, [
        @Default(_kGetCityPendingId) String pendingId,
      ]) = GetCityError;

  static String get pendingKey => _kGetCityPendingId;
}
