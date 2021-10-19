import 'package:flutter/material.dart';
import '../models/screen_data.dart';
import 'screen_list_item.dart';

/// List of existing UI prototypes.
///
/// This widget displays a static list of the UI prototypes that can be
/// visualized and interacted with.
class ScreenList extends StatelessWidget {
  const ScreenList({Key? key, required this.screens}) : super(key: key);

  final List<ScreenData> screens;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children:
          screens.map((screen) => ScreenListItem(screen: screen)).toList(),
    );
  }
}
