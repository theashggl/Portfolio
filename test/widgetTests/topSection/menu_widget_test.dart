import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:portfolio/UI/SectionsOfHomePage/TopSection/Components/menu.dart';

void main() {
  testWidgets('Top section widget testing', (WidgetTester widgetTester) async {
    await widgetTester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: Stack(
            //not sure why stack needs to added specifically. Others depend on material so added that
            children: [
              Menu(),
            ],
          ),
        ),
      ),
    );
    final menuWidget = find.byKey(const ValueKey('MenuRowKey'));
    final titleMaterial = find.text('Portfolio');
    expect(menuWidget, findsOneWidget);

    expect(titleMaterial, findsOneWidget);
  });
}
