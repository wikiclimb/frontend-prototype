import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:wikiclimb_ui_prototypes/models/screen_data.dart';
import 'package:wikiclimb_ui_prototypes/widgets/screen_list.dart';

void main() {
  testWidgets(
    'Test displaying list of screens',
    (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: ScreenList(
              screens: <ScreenData>[
                ScreenData(
                  id: 'test_id',
                  title: 'Test Title 1',
                  iconData: Icons.text_snippet,
                ),
                ScreenData(
                  id: 'test_id',
                  title: 'Test Title 2',
                  iconData: Icons.text_snippet,
                ),
                ScreenData(
                  id: 'test_id',
                  title: 'Test Title 3',
                  iconData: Icons.security,
                ),
              ],
            ),
          ),
        ),
      );
      expect(find.text('Test Title 2'), findsOneWidget);
      expect(find.byIcon(Icons.security), findsOneWidget);
      expect(find.byType(ListTile), findsNWidgets(3));
    },
  );
}
