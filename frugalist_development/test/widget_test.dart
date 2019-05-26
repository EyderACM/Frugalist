
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
    HomePage page=HomePage();

    //Test de la pagina principal
    await tester.pumpWidget(makeTestableWidget(child: page));

    expect(find.text('Mérida, Yucatán'), findsOneWidget);
    expect(find.text('1'), findsNothing);
    expect(find.widgetWithText(CircleButton, "chicken"), findsOneWidget);
    expect(find.widgetWithText(CircleButton, "milk"), findsOneWidget);
    expect(find.widgetWithText(CircleButton, "fish"), findsOneWidget);
    expect(find.widgetWithText(CircleButton, "eggs"), findsOneWidget);
    expect(find.widgetWithText(CircleButton, "carrot"), findsOneWidget);
    expect(find.widgetWithText(CircleButton, "apple"), findsOneWidget);

    //Test del boton "pollo"
    await tester.tap(find.widgetWithText(CircleButton, "chicken"));
    await tester.pump();

    expect(find.text("Pollo"), findsWidgets)

    await tester.tap(find.byIcon(Icons.arrow_back));
    await tester.pump();

    //Test del  boton "Leche"
    await tester.tap(find.widgetWithText(CircleButton, "milk"));
    await tester.pump();

    expect(find.text("Leche"), findsWidgets)

    await tester.tap(find.byIcon(Icons.arrow_back));
    await tester.pump();

    //Test del boton "Pescado"
    await tester.tap(find.widgetWithText(CircleButton, "fish"));
    await tester.pump();

    expect(find.text("Pescado"), findsWidgets)

    await tester.tap(find.byIcon(Icons.arrow_back));
    await tester.pump();

    //Test del boton "Huevo"
    await tester.tap(find.widgetWithText(CircleButton, "eggs"));
    await tester.pump();

    expect(find.text("Huevo"), findsWidgets)

    await tester.tap(find.byIcon(Icons.arrow_back));
    await tester.pump();

    //Test del boton "Zanahoria"
    await tester.tap(find.widgetWithText(CircleButton, "carrot"));
    await tester.pump();

    expect(find.text("Zanahoria"), findsWidgets)

    await tester.tap(find.byIcon(Icons.arrow_back));
    await tester.pump();

    //Test del boton "Manzana"
    await tester.tap(find.widgetWithText(CircleButton, "apple"));
    await tester.pump();

    expect(find.text("Manzana"), findsWidgets)

    await tester.tap(find.byIcon(Icons.arrow_back));
    await tester.pump();

  });
}
