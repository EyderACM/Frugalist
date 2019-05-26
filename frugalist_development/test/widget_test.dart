
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:frugalist_development/home_page.dart';

import 'package:frugalist_development/main.dart';

void main() {

  Widget makeTestableWidget({Widget child}){
    return MaterialApp(
      home: child,
    );
  }

  testWidgets('Testing icons', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    HomePage page=HomePage();

    await tester.pumpWidget(makeTestableWidget(child: page));

    // Verify that our counter starts at 0.
    expect(find.text('Mérida, Yucatán'), findsOneWidget);
    expect(find.text('1'), findsNothing);
    expect(find.widgetWithText(CircleButton, "chicken"), findsOneWidget);


  });
}
