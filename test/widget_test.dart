import 'package:flutter_test/flutter_test.dart';

import 'package:prototype/main.dart';

void main() {
  testWidgets('HomePage displays correctly', (WidgetTester tester) async {
    await tester.pumpWidget(const App());
    expect(find.text('WikiClimb UI Prototypes'), findsOneWidget);
    expect(find.text('Map'), findsOneWidget);
    expect(find.text('Area List'), findsOneWidget);
  });
}
