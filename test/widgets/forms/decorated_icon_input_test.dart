import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:wikiclimb_ui_prototypes/widgets/forms/decorated_icon_input.dart';

const String hintText = 'test hint text';
const IconData prefixIcon = Icons.ac_unit;

void main() {
  testWidgets(
    'Test creating a decorated icon input',
    (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: DecoratedIconInput(
              hintText: hintText,
              prefixIcon: prefixIcon,
              fillColor: getColor(),
              key: const ObjectKey("TestDecoratedInput"),
            ),
          ),
        ),
      );
      expect(find.byIcon(prefixIcon), findsOneWidget);
      // await tester.pumpAndSettle();
      expect(find.byType(DecoratedIconInput), findsOneWidget);
      expect(
          (tester.firstWidget(find.byType(DecoratedIconInput))
                  as DecoratedIconInput)
              .fillColor,
          getColor());
    },
  );

  testWidgets(
    'Decorated icon input default color',
    (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: DecoratedIconInput(
              hintText: hintText,
              prefixIcon: prefixIcon,
              key: ObjectKey("TestDecoratedInput"),
            ),
          ),
        ),
      );
      expect(
          (tester.firstWidget(find.byType(DecoratedIconInput))
                  as DecoratedIconInput)
              .fillColor,
          Colors.white);
    },
  );
}

Color getColor() {
  return Colors.white;
}
