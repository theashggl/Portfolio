import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:portfolio/UI/home_page.dart';

void main() {
  testWidgets('Widget test for the whole app',
      (WidgetTester widgetTester) async {
    await widgetTester.pumpWidget(const MyApp());
    final topSection = find.byKey(const ValueKey('TopSectionKey'));
    final bioTextPart1 = find.text('Hello There!');
    final bioTextPart2 = find.text('Aayush \nSahay');
    final bioTextPart3 = find.text('Flutter Developer');
    final customScrollView = find.byKey(const ValueKey('CustomScrollViewKey'));
    // final sliverList = find.byWidget(SliverList(delegate: SliverChildListDelegate([])));//not able to make byWidget work
    final background = find.byKey(const ValueKey('BackgroundContainerKey'));
    final personPic = find.byKey(const ValueKey('PersonPictureKey'));

    expect(topSection, findsOneWidget);
    expect(bioTextPart1, findsOneWidget);
    expect(bioTextPart2, findsOneWidget);
    expect(bioTextPart3, findsOneWidget);
    expect(customScrollView, findsOneWidget);
    // expect(sliverList, findsOneWidget);
    expect(background, findsOneWidget);
    expect(personPic, findsOneWidget);
  });
}
