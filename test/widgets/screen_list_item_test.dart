import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:wikiclimb_ui_prototypes/models/screen_data.dart';
import 'package:wikiclimb_ui_prototypes/widgets/screen_list_item.dart';

void main() {
  testWidgets(
    'Test displaying list of screens',
    (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: ScreenListItem(
              screen: ScreenData(
                id: 'test_id',
                title: 'Test Title 1',
                iconData: Icons.security,
              ),
            ),
          ),
        ),
      );
      expect(find.text('Test Title 1'), findsOneWidget);
      expect(find.byIcon(Icons.security), findsOneWidget);
      expect(find.byType(ListTile), findsOneWidget);
    },
  );
}
