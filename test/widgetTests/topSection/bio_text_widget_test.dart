import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:portfolio/UI/SectionsOfHomePage/TopSection/Components/bio_text.dart';

void main() {
  testWidgets('Bio text in top section widget test',
      (WidgetTester widgetTester) async {
    await widgetTester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: Stack(
          children: const [IntroductoryText()],
        ),
      ),
    ),);
    final textLine1 = find.text('Hello There!');
    final textLine2 = find.text('Aayush \nSahay');
    final textLine3 = find.text('Flutter Developer');
    expect(textLine1, findsOneWidget);
    expect(textLine2, findsOneWidget);
    expect(textLine3, findsOneWidget);
  });
}
