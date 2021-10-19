// Imports the Flutter Driver API.
import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('Weather app', () {
    final SerializableFinder switchButton = find.byValueKey('switch_button');
    final SerializableFinder cityName = find.byValueKey('city_name');
    final SerializableFinder settingsButton =
        find.byValueKey('settings_button');
    final SerializableFinder textField = find.byValueKey('text_field');
    final SerializableFinder searchButton = find.byValueKey('search_button');

    late FlutterDriver driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    tearDownAll(() async {
      driver.close();
    });

    test('initialCity', () async {
      // Initial city should be San Francisco
      expect(await driver.getText(cityName), 'San Francisco');
    });

    test('switchBetweenGrades', () async {
      // Initial grade should be celsius
      expect(await driver.getText(switchButton), '°C');

      String celsius = await driver.getText(find.byValueKey('min_temp_1'));
      celsius = celsius.split(' ')[1];

      // Switch
      await driver.tap(switchButton);
      expect(await driver.getText(switchButton), '°F');

      String fahrenheit = await driver.getText(find.byValueKey('min_temp_1'));
      fahrenheit = fahrenheit.split(' ')[1];

      expect((double.parse(celsius) * 1.8 + 32).toStringAsFixed(0), double.parse(fahrenheit).toStringAsFixed(0));
    });

    test('changeCityToBucharest', () async {
      await driver.tap(settingsButton);
      await driver.tap(textField);
      await driver.enterText('buch');
      await driver.tap(searchButton);
      expect(await driver.getText(cityName), 'Bucharest');
    });
  });
}
