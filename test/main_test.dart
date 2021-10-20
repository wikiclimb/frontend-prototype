import 'package:flutter_test/flutter_test.dart';
import 'package:wikiclimb_ui_prototypes/main.dart';

void main() {
  testWidgets(
    'HomePage displays correctly',
    (WidgetTester tester) async {
      await tester.pumpWidget(const App());
      expect(find.text('WikiClimb UI Prototypes'), findsOneWidget);
      expect(find.text('Register'), findsOneWidget);
    },
  );

  testWidgets(
    'Can navigate to Register Screen',
    (WidgetTester tester) async {
      await tester.pumpWidget(const App());
      expect(find.byType(App), findsOneWidget);
      expect(find.text('Register'), findsOneWidget);
      await tester.tap(find.text('Register'));
      await tester.pumpAndSettle();
      expect(find.text('Join WikiClimb'), findsOneWidget);
    },
  );

  testWidgets(
    'Can navigate to Registration Confirmation Screen',
    (WidgetTester tester) async {
      await tester.pumpWidget(const App());
      expect(find.byType(App), findsOneWidget);
      expect(find.text('Registration Confirmation'), findsOneWidget);
      await tester.tap(find.text('Registration Confirmation'));
      await tester.pumpAndSettle();
      expect(find.text('Success'), findsOneWidget);
    },
  );
}
