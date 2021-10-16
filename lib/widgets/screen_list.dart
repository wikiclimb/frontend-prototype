import 'package:flutter/material.dart';
import 'package:prototype/res/screens.dart';
import 'package:prototype/widgets/screen_list_item.dart';

/// List of existing UI prototypes.
///
/// This widget displays a static list of the UI prototypes that can be
/// visualized and interacted with.
class ScreenList extends StatelessWidget {
  const ScreenList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children:
          screens.map((screen) => ScreenListItem(screen: screen)).toList(),
    );
  }
}
