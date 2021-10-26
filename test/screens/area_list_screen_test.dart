import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:wikiclimb_ui_prototypes/res/areas.dart';
import 'package:wikiclimb_ui_prototypes/screens/area_list_screen.dart';
import 'package:network_image_mock/network_image_mock.dart';

void main() {
  testWidgets(
    'Area list displays correctly',
    (WidgetTester tester) async {
      await mockNetworkImagesFor(() => tester.pumpWidget(
            MaterialApp(
              home: AreaListScreen(areas: areas),
            ),
          ));
      expect(find.text('Yosemite'), findsOneWidget);
      expect(
          find.textContaining('Home to hard sport climbing'), findsOneWidget);
      expect(find.text('Huesca'), findsOneWidget);
    },
  );
}
