import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:wikiclimb_ui_prototypes/screens/registration_confirmation_screen.dart';

void main() {
  testWidgets(
    'RegisterScreen displays',
    (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: RegistrationConfirmationScreen(),
          ),
        ),
      );
      expect(
        find.text('You registered'),
        findsOneWidget,
      );
    },
  );
}
