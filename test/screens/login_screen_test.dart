import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:wikiclimb_ui_prototypes/screens/login_screen.dart';

void main() {
  testWidgets(
    'LoginScreen displays',
    (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: LoginScreen(),
          ),
        ),
      );
      expect(find.text('Log in'), findsNWidgets(2));
    },
  );
}
