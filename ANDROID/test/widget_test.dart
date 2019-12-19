// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:location/location.dart';

import 'package:flutter_app_test/components/validators.dart';


void main() {

  test('Check if Phone has location enabled', () async {

    Location _locationService  = new Location();
    bool serviceStatus = await _locationService.serviceEnabled();

      expect(true, serviceStatus);
      });


  // Doesn't need to be async. Just unit testing the validating functions for the Email and PassWord
  group( "Login validation unit test", () {
    test('Check if login validation accepts empty', () {
      var emailempty = LoginFieldValidator.validateEmail("");
      expect(emailempty, "Email can\'t be empty");
    });

    test('Check for "@" in email', () {
      var emailat = LoginFieldValidator.validateEmail("test@email.com");
      expect(emailat, "Not a valid email");
    });
 });

  group( "Password validation unit test", () {
    test('Check if login validation accepts empty', () {
      var pwempty = LoginFieldValidator.validatePassword("");
      expect(pwempty, "Email can\'t be empty");
    });

    test('Check for "@" in email', () {
      var pwlength = LoginFieldValidator.validatePassword("pw3");
      expect(pwlength, "Password too short");
    });
  });


  /// Testing for the presence of weird characters in text-fields
  group("Testing for stranger characters", () {

    test('Plain test ', () {
      var pwempty = LoginFieldValidator.validateStrangeChars("fbasoa{1\\\"((()s");
      expect(pwempty, "Not valid");
    });

    test('weird chars on email', () {
      var pwempty = LoginFieldValidator.validateEmail("fbasoa{1\\\"((()s");
      expect(pwempty, "Not valid");
    });

    test('weird chars on password', () {
      var pwlength = LoginFieldValidator.validatePassword("fbasoa{1\\\"((()s");
      expect(pwlength, "Not valid");
    });
  });
}


//  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
//    // Build our app and trigger a frame.
//    await tester.pumpWidget(MyApp());
//
//    // Verify that our counter starts at 0.
//    expect(find.text('0'), findsOneWidget);
//    expect(find.text('1'), findsNothing);
//
//    // Tap the '+' icon and trigger a frame.
//    await tester.tap(find.byIcon(Icons.add));
//    await tester.pump();
//
//    // Verify that our counter has incremented.
//    expect(find.text('0'), findsNothing);
//    expect(find.text('1'), findsOneWidget);
//  });
