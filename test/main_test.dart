import 'package:flutter_test/flutter_test.dart';
import 'package:wikiclimb_ui_prototypes/app.dart';
import 'package:network_image_mock/network_image_mock.dart';

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

  testWidgets(
    'Can navigate to Area List Screen',
    (WidgetTester tester) async {
      await tester.pumpWidget(const App());
      expect(find.byType(App), findsOneWidget);
      expect(find.text('Area List'), findsOneWidget);
      await tester.tap(find.text('Area List'));
      await mockNetworkImagesFor(() => tester.pumpAndSettle());
      expect(find.text('Yosemite'), findsOneWidget);
      expect(find.textContaining('amazing rock'), findsOneWidget);
    },
  );

  testWidgets(
    'Can navigate to Route Screen',
    (WidgetTester tester) async {
      await tester.pumpWidget(const App());
      expect(find.byType(App), findsOneWidget);
      expect(find.text('Route'), findsOneWidget);
      await tester.tap(find.text('Route'));
      await mockNetworkImagesFor(() => tester.pumpAndSettle());
      expect(find.text('Moon Safari'), findsNWidgets(3));
      expect(find.textContaining('7a+'), findsOneWidget);
    },
  );
}
