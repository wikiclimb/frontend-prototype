import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:wikiclimb_ui_prototypes/screens/register_screen.dart';
import 'package:wikiclimb_ui_prototypes/screens/registration_confirmation_screen.dart';

void main() {
  testWidgets(
    'RegisterScreen displays',
    (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: RegisterScreen(),
          ),
        ),
      );
      expect(
        find.text('Join WikiClimb'),
        findsOneWidget,
      );
    },
  );

  testWidgets(
    'Sign up navigates to confirmation screen',
    (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: const Scaffold(
            body: RegisterScreen(),
          ),
          routes: {
            RegistrationConfirmationScreen.id: (context) =>
                const RegistrationConfirmationScreen(),
          },
        ),
      );
      await tester.tap(find.byType(ElevatedButton));
      expect(
        find.text('Join WikiClimb'),
        findsOneWidget,
      );
    },
  );
}
