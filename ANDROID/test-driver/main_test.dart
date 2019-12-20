// Imports the Flutter Driver API.
import 'package:flutter_driver/flutter_driver.dart';
import 'package:flutter_app_test/main.dart';
import 'package:flutter_test/flutter_test.dart';


void main() {

  group('Home Screen Test', () {
    FlutterDriver driver;
    setUpAll(() async {
// Connects to the app
      driver = await FlutterDriver.connect();
    });
    tearDownAll(() async {
      if (driver != null) {
// Closes the connection
        driver.close();
      }
    });


    print("FLUTTER DRIVER TEST STARTING:");


    test('Verify the Username and ', () async {
      SerializableFinder message;
      await driver.waitFor(message);
      expect(await driver.getText(message), "Username");
    });
  });
}