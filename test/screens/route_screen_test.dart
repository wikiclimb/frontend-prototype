import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:network_image_mock/network_image_mock.dart';
import 'package:wikiclimb_ui_prototypes/screens/route_screen.dart';

void main() {
  testWidgets('RouteScreen displays', (WidgetTester tester) async {
    await mockNetworkImagesFor(
      () => tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: RouteScreen(),
          ),
        ),
      ),
    );
    expect(find.text('Moon Safari'), findsNWidgets(3));
  });
}
