import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:wikiclimb_ui_prototypes/models/area.dart';
import 'package:wikiclimb_ui_prototypes/widgets/area/area_list_item.dart';
import 'package:network_image_mock/network_image_mock.dart';

final area = Area(
  description: 'Test description',
  breadcrumbs: ['test', 'bread', 'crumbs'],
  name: 'Test name',
  backgroundUrl: 'https://example.com/some-image.png',
);

void main() {
  testWidgets(
    'Test displaying list of screens',
    (WidgetTester tester) async {
      await mockNetworkImagesFor(
        () => tester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              body: AreaListItem(
                area: area,
              ),
            ),
          ),
        ),
      );
      expect(find.text(area.name), findsOneWidget);
      expect(find.text(area.description), findsOneWidget);
      expect(find.text(area.breadcrumbs[1]), findsOneWidget);
      await tester.tap(find.byType(InkWell).first);
      await mockNetworkImagesFor(() => tester.pumpAndSettle());
      expect(find.text('Not implemented yet'), findsOneWidget);
    },
  );
}
