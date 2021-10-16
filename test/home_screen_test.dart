import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:prototype/screens/home.dart';

void main() {
  testWidgets('HomePage displays correctly', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: HomeScreen(
        title: 'Test title',
      ),
    ));
    expect(find.text('Test title'), findsOneWidget);
    expect(find.text('Map'), findsOneWidget);
    expect(find.text('Area List'), findsOneWidget);
  });
}
