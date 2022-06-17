import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:portfolio/UI/SectionsOfHomePage/TopSection/Components/person_pic.dart';

void main() {
  testWidgets('Person Pic widget test', (WidgetTester widgetTester) async {
    await widgetTester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Stack(children: const [PersonPic()]),
        ),
      ),
    );
    final personPic = find.byType(Image);
    expect(personPic, findsOneWidget);
  });
}
