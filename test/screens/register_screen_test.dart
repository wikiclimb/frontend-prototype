import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:wikiclimb_ui_prototypes/screens/register_screen.dart';

void main() {
  testWidgets(
    'RegisterScreen displays',
    (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: RegisterScreen(),
        ),
      );
      expect(find.text('Hello there'), findsOneWidget);
    },
  );
}
